use std::{
    collections::HashMap,
    sync::{Arc, RwLock},
};

use protobuf::{
    descriptor::{
        DescriptorProto, FieldDescriptorProto, FieldDescriptorProto_Label,
        FieldDescriptorProto_Type, FileDescriptorProto, FileDescriptorSet,
    },
    types::{ProtobufType, ProtobufTypeBool, ProtobufTypeString},
    Message,
};

use super::{
    reflect::{FieldDescriptor, FieldType, ReflectMessageDescriptor},
    Error,
};
use crate::reflect::iter_repeated_unknown_value;

type MessageDescriptorsMap = HashMap<String, Arc<ReflectMessageDescriptor>>;

pub struct Registry {
    message_descriptors: RwLock<MessageDescriptorsMap>,
}

impl Registry {
    pub fn new() -> Registry {
        Registry {
            message_descriptors: RwLock::new(HashMap::new()),
        }
    }

    pub fn new_with_exocore_types() -> Registry {
        let reg = Registry::new();

        reg.register_file_descriptor_set_bytes(super::generated::STORE_FDSET)
            .expect("Couldn't register exocore_store FileDescriptorProto");

        reg.register_file_descriptor_set_bytes(super::generated::TEST_FDSET)
            .expect("Couldn't register exocore_test FileDescriptorProto");

        reg
    }

    pub fn register_file_descriptor_set(&self, fd_set: &FileDescriptorSet) {
        for fd in fd_set.get_file() {
            self.register_file_descriptor(fd.clone());
        }
    }

    pub fn register_file_descriptor_set_bytes<R: std::io::Read>(
        &self,
        fd_set_bytes: R,
    ) -> Result<(), Error> {
        let mut bytes = fd_set_bytes;
        let fd_set = FileDescriptorSet::parse_from_reader(&mut bytes)?;

        self.register_file_descriptor_set(&fd_set);

        Ok(())
    }

    pub fn register_file_descriptor(&self, file_descriptor: FileDescriptorProto) {
        let file_descriptor = Arc::new(file_descriptor);

        for msg_descriptor in file_descriptor.get_message_type() {
            let full_name = format!(
                "{}.{}",
                file_descriptor.get_package(),
                msg_descriptor.get_name()
            );
            self.register_message_descriptor(full_name, msg_descriptor.clone());
        }
    }

    pub fn register_message_descriptor(
        &self,
        full_name: String,
        msg_descriptor: DescriptorProto,
    ) -> Arc<ReflectMessageDescriptor> {
        for sub_msg in msg_descriptor.get_nested_type() {
            let sub_full_name = format!("{}.{}", full_name, sub_msg.get_name());
            self.register_message_descriptor(sub_full_name, sub_msg.clone());
        }

        let mut fields = HashMap::new();
        for field in msg_descriptor.get_field() {
            let mut field_type = match field.get_field_type() {
                FieldDescriptorProto_Type::TYPE_STRING => FieldType::String,
                FieldDescriptorProto_Type::TYPE_INT32 => FieldType::Int32,
                FieldDescriptorProto_Type::TYPE_UINT32 => FieldType::Uint32,
                FieldDescriptorProto_Type::TYPE_INT64 => FieldType::Int64,
                FieldDescriptorProto_Type::TYPE_UINT64 => FieldType::Uint64,
                FieldDescriptorProto_Type::TYPE_MESSAGE => {
                    let typ = field.get_type_name().trim_start_matches('.');
                    match typ {
                        "google.protobuf.Timestamp" => FieldType::DateTime,
                        "exocore.store.Reference" => FieldType::Reference,
                        _ => FieldType::Message(typ.to_string()),
                    }
                }
                _ => continue,
            };

            if field.get_label() == FieldDescriptorProto_Label::LABEL_REPEATED {
                field_type = FieldType::Repeated(Box::new(field_type));
            }

            let id = field.get_number() as u32;
            fields.insert(
                id,
                FieldDescriptor {
                    id,
                    name: field.get_name().to_string(),
                    field_type,

                    // see exocore/store/options.proto
                    indexed_flag: Registry::field_has_option(field, 1373),
                    sorted_flag: Registry::field_has_option(field, 1374),
                    text_flag: Registry::field_has_option(field, 1375),
                    groups: Registry::get_field_u32s_option(field, 1376),
                },
            );
        }

        let short_names = Registry::get_message_strings_option(&msg_descriptor, 1377);
        let descriptor = Arc::new(ReflectMessageDescriptor {
            name: full_name.clone(),
            fields,
            message: msg_descriptor,

            // see exocore/store/options.proto
            short_names,
        });

        let mut message_descriptors = self.message_descriptors.write().unwrap();
        message_descriptors.insert(full_name, descriptor.clone());

        descriptor
    }

    pub fn get_message_descriptor(
        &self,
        full_name: &str,
    ) -> Result<Arc<ReflectMessageDescriptor>, Error> {
        let message_descriptors = self.message_descriptors.read().unwrap();
        message_descriptors
            .get(full_name)
            .cloned()
            .ok_or_else(|| Error::NotInRegistry(full_name.to_string()))
    }

    pub fn get_or_register_generated_descriptor<M: Message>(
        &self,
        message: &M,
    ) -> Arc<ReflectMessageDescriptor> {
        let full_name = message.descriptor().full_name();

        {
            let message_descriptors = self.message_descriptors.read().unwrap();
            if let Some(desc) = message_descriptors.get(full_name) {
                return desc.clone();
            }
        }

        self.register_message_descriptor(
            full_name.to_string(),
            message.descriptor().get_proto().clone(),
        )
    }

    pub fn message_descriptors(&self) -> Vec<Arc<ReflectMessageDescriptor>> {
        let message_descriptors = self.message_descriptors.read().unwrap();
        message_descriptors.values().cloned().collect()
    }

    fn field_has_option(field: &FieldDescriptorProto, option_field_id: u32) -> bool {
        if let Some(unknown_value) = field.get_options().unknown_fields.get(option_field_id) {
            ProtobufTypeBool::get_from_unknown(unknown_value).unwrap_or(false)
        } else {
            false
        }
    }

    fn get_field_u32s_option(field: &FieldDescriptorProto, option_field_id: u32) -> Vec<u32> {
        if let Some(unknown_value) = field.get_options().unknown_fields.get(option_field_id) {
            unknown_value.varint.iter().map(|&v| v as u32).collect()
        } else {
            vec![]
        }
    }

    fn get_message_strings_option(msg_desc: &DescriptorProto, option_field_id: u32) -> Vec<String> {
        if let Some(unknown_value) = msg_desc.get_options().unknown_fields.get(option_field_id) {
            let mut values = Vec::new();
            let _ = iter_repeated_unknown_value(unknown_value, |uk| {
                if let Some(value) = ProtobufTypeString::get_from_unknown(&uk) {
                    values.push(value);
                }
                Ok(())
            });
            values
        } else {
            vec![]
        }
    }
}

impl Default for Registry {
    fn default() -> Self {
        Registry::new()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn with_exocore_types() {
        let reg = Registry::new_with_exocore_types();
        let entity = reg.get_message_descriptor("exocore.store.Entity").unwrap();
        assert_eq!(entity.name, "exocore.store.Entity");
        assert!(!entity.fields.is_empty());

        let desc = reg.message_descriptors();
        assert!(desc.len() > 20);
    }

    #[test]
    fn field_and_msg_options() -> anyhow::Result<()> {
        let registry = Registry::new_with_exocore_types();

        let descriptor = registry.get_message_descriptor("exocore.test.TestMessage")?;

        // see `protos/exocore/test/test.proto`
        assert_eq!(descriptor.short_names, vec!["test".to_string()]);

        assert!(descriptor.fields.get(&1).unwrap().text_flag);
        assert!(!descriptor.fields.get(&2).unwrap().text_flag);

        assert!(descriptor.fields.get(&8).unwrap().indexed_flag);
        assert!(!descriptor.fields.get(&9).unwrap().indexed_flag);

        assert!(descriptor.fields.get(&18).unwrap().sorted_flag);
        assert!(!descriptor.fields.get(&11).unwrap().sorted_flag);

        assert!(descriptor.fields.get(&19).unwrap().groups.is_empty());
        assert_eq!(descriptor.fields.get(&20).unwrap().groups, vec![1]);
        assert_eq!(descriptor.fields.get(&21).unwrap().groups, vec![1, 2]);

        Ok(())
    }
}
