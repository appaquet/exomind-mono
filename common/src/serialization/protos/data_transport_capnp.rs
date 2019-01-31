// Generated by the capnpc-rust plugin to the Cap'n Proto schema compiler.
// DO NOT EDIT.
// source: proto/data_transport.capnp

pub mod envelope {
    #[derive(Copy, Clone)]
    pub struct Owned;
    impl<'a> ::capnp::traits::Owned<'a> for Owned {
        type Reader = Reader<'a>;
        type Builder = Builder<'a>;
    }
    impl<'a> ::capnp::traits::OwnedStruct<'a> for Owned {
        type Reader = Reader<'a>;
        type Builder = Builder<'a>;
    }
    impl ::capnp::traits::Pipelined for Owned {
        type Pipeline = Pipeline;
    }

    #[derive(Clone, Copy)]
    pub struct Reader<'a> {
        reader: ::capnp::private::layout::StructReader<'a>,
    }

    impl<'a> ::capnp::traits::HasTypeId for Reader<'a> {
        #[inline]
        fn type_id() -> u64 {
            _private::TYPE_ID
        }
    }
    impl<'a> ::capnp::traits::FromStructReader<'a> for Reader<'a> {
        fn new(reader: ::capnp::private::layout::StructReader<'a>) -> Reader<'a> {
            Reader { reader: reader }
        }
    }

    impl<'a> ::capnp::traits::FromPointerReader<'a> for Reader<'a> {
        fn get_from_pointer(
            reader: &::capnp::private::layout::PointerReader<'a>,
        ) -> ::capnp::Result<Reader<'a>> {
            ::std::result::Result::Ok(::capnp::traits::FromStructReader::new(
                reader.get_struct(::std::ptr::null())?,
            ))
        }
    }

    impl<'a> ::capnp::traits::IntoInternalStructReader<'a> for Reader<'a> {
        fn into_internal_struct_reader(self) -> ::capnp::private::layout::StructReader<'a> {
            self.reader
        }
    }

    impl<'a> ::capnp::traits::Imbue<'a> for Reader<'a> {
        fn imbue(&mut self, cap_table: &'a ::capnp::private::layout::CapTable) {
            self.reader
                .imbue(::capnp::private::layout::CapTableReader::Plain(cap_table))
        }
    }

    impl<'a> Reader<'a> {
        pub fn reborrow(&self) -> Reader {
            Reader { ..*self }
        }

        pub fn total_size(&self) -> ::capnp::Result<::capnp::MessageSize> {
            self.reader.total_size()
        }
        #[inline]
        pub fn get_type(self) -> u8 {
            self.reader.get_data_field::<u8>(0)
        }
        #[inline]
        pub fn get_from(self) -> ::capnp::Result<crate::common_capnp::node::Reader<'a>> {
            ::capnp::traits::FromPointerReader::get_from_pointer(&self.reader.get_pointer_field(0))
        }
        pub fn has_from(&self) -> bool {
            !self.reader.get_pointer_field(0).is_null()
        }
    }

    pub struct Builder<'a> {
        builder: ::capnp::private::layout::StructBuilder<'a>,
    }
    impl<'a> ::capnp::traits::HasStructSize for Builder<'a> {
        #[inline]
        fn struct_size() -> ::capnp::private::layout::StructSize {
            _private::STRUCT_SIZE
        }
    }
    impl<'a> ::capnp::traits::HasTypeId for Builder<'a> {
        #[inline]
        fn type_id() -> u64 {
            _private::TYPE_ID
        }
    }
    impl<'a> ::capnp::traits::FromStructBuilder<'a> for Builder<'a> {
        fn new(builder: ::capnp::private::layout::StructBuilder<'a>) -> Builder<'a> {
            Builder { builder: builder }
        }
    }

    impl<'a> ::capnp::traits::ImbueMut<'a> for Builder<'a> {
        fn imbue_mut(&mut self, cap_table: &'a mut ::capnp::private::layout::CapTable) {
            self.builder
                .imbue(::capnp::private::layout::CapTableBuilder::Plain(cap_table))
        }
    }

    impl<'a> ::capnp::traits::FromPointerBuilder<'a> for Builder<'a> {
        fn init_pointer(
            builder: ::capnp::private::layout::PointerBuilder<'a>,
            _size: u32,
        ) -> Builder<'a> {
            ::capnp::traits::FromStructBuilder::new(builder.init_struct(_private::STRUCT_SIZE))
        }
        fn get_from_pointer(
            builder: ::capnp::private::layout::PointerBuilder<'a>,
        ) -> ::capnp::Result<Builder<'a>> {
            ::std::result::Result::Ok(::capnp::traits::FromStructBuilder::new(
                builder.get_struct(_private::STRUCT_SIZE, ::std::ptr::null())?,
            ))
        }
    }

    impl<'a> ::capnp::traits::SetPointerBuilder<Builder<'a>> for Reader<'a> {
        fn set_pointer_builder<'b>(
            pointer: ::capnp::private::layout::PointerBuilder<'b>,
            value: Reader<'a>,
            canonicalize: bool,
        ) -> ::capnp::Result<()> {
            pointer.set_struct(&value.reader, canonicalize)
        }
    }

    impl<'a> Builder<'a> {
        #[deprecated(since = "0.9.2", note = "use into_reader()")]
        pub fn as_reader(self) -> Reader<'a> {
            self.into_reader()
        }
        pub fn into_reader(self) -> Reader<'a> {
            ::capnp::traits::FromStructReader::new(self.builder.into_reader())
        }
        pub fn reborrow(&mut self) -> Builder {
            Builder { ..*self }
        }
        pub fn reborrow_as_reader(&self) -> Reader {
            ::capnp::traits::FromStructReader::new(self.builder.into_reader())
        }

        pub fn total_size(&self) -> ::capnp::Result<::capnp::MessageSize> {
            self.builder.into_reader().total_size()
        }
        #[inline]
        pub fn get_type(self) -> u8 {
            self.builder.get_data_field::<u8>(0)
        }
        #[inline]
        pub fn set_type(&mut self, value: u8) {
            self.builder.set_data_field::<u8>(0, value);
        }
        #[inline]
        pub fn get_from(self) -> ::capnp::Result<crate::common_capnp::node::Builder<'a>> {
            ::capnp::traits::FromPointerBuilder::get_from_pointer(self.builder.get_pointer_field(0))
        }
        #[inline]
        pub fn set_from<'b>(
            &mut self,
            value: crate::common_capnp::node::Reader<'b>,
        ) -> ::capnp::Result<()> {
            ::capnp::traits::SetPointerBuilder::set_pointer_builder(
                self.builder.get_pointer_field(0),
                value,
                false,
            )
        }
        #[inline]
        pub fn init_from(self) -> crate::common_capnp::node::Builder<'a> {
            ::capnp::traits::FromPointerBuilder::init_pointer(self.builder.get_pointer_field(0), 0)
        }
        pub fn has_from(&self) -> bool {
            !self.builder.get_pointer_field(0).is_null()
        }
    }

    pub struct Pipeline {
        _typeless: ::capnp::any_pointer::Pipeline,
    }
    impl ::capnp::capability::FromTypelessPipeline for Pipeline {
        fn new(typeless: ::capnp::any_pointer::Pipeline) -> Pipeline {
            Pipeline {
                _typeless: typeless,
            }
        }
    }
    impl Pipeline {
        pub fn get_from(&self) -> crate::common_capnp::node::Pipeline {
            ::capnp::capability::FromTypelessPipeline::new(self._typeless.get_pointer_field(0))
        }
    }
    mod _private {
        use capnp::private::layout;
        pub const STRUCT_SIZE: layout::StructSize = layout::StructSize {
            data: 1,
            pointers: 1,
        };
        pub const TYPE_ID: u64 = 0xf651_d150_3973_1f29;
    }
}

pub mod pending_sync_request {
    #[derive(Copy, Clone)]
    pub struct Owned;
    impl<'a> ::capnp::traits::Owned<'a> for Owned {
        type Reader = Reader<'a>;
        type Builder = Builder<'a>;
    }
    impl<'a> ::capnp::traits::OwnedStruct<'a> for Owned {
        type Reader = Reader<'a>;
        type Builder = Builder<'a>;
    }
    impl ::capnp::traits::Pipelined for Owned {
        type Pipeline = Pipeline;
    }

    #[derive(Clone, Copy)]
    pub struct Reader<'a> {
        reader: ::capnp::private::layout::StructReader<'a>,
    }

    impl<'a> ::capnp::traits::HasTypeId for Reader<'a> {
        #[inline]
        fn type_id() -> u64 {
            _private::TYPE_ID
        }
    }
    impl<'a> ::capnp::traits::FromStructReader<'a> for Reader<'a> {
        fn new(reader: ::capnp::private::layout::StructReader<'a>) -> Reader<'a> {
            Reader { reader: reader }
        }
    }

    impl<'a> ::capnp::traits::FromPointerReader<'a> for Reader<'a> {
        fn get_from_pointer(
            reader: &::capnp::private::layout::PointerReader<'a>,
        ) -> ::capnp::Result<Reader<'a>> {
            ::std::result::Result::Ok(::capnp::traits::FromStructReader::new(
                reader.get_struct(::std::ptr::null())?,
            ))
        }
    }

    impl<'a> ::capnp::traits::IntoInternalStructReader<'a> for Reader<'a> {
        fn into_internal_struct_reader(self) -> ::capnp::private::layout::StructReader<'a> {
            self.reader
        }
    }

    impl<'a> ::capnp::traits::Imbue<'a> for Reader<'a> {
        fn imbue(&mut self, cap_table: &'a ::capnp::private::layout::CapTable) {
            self.reader
                .imbue(::capnp::private::layout::CapTableReader::Plain(cap_table))
        }
    }

    impl<'a> Reader<'a> {
        pub fn reborrow(&self) -> Reader {
            Reader { ..*self }
        }

        pub fn total_size(&self) -> ::capnp::Result<::capnp::MessageSize> {
            self.reader.total_size()
        }
        #[inline]
        pub fn get_ranges(
            self,
        ) -> ::capnp::Result<
            ::capnp::struct_list::Reader<
                'a,
                crate::data_transport_capnp::pending_sync_range::Owned,
            >,
        > {
            ::capnp::traits::FromPointerReader::get_from_pointer(&self.reader.get_pointer_field(0))
        }
        pub fn has_ranges(&self) -> bool {
            !self.reader.get_pointer_field(0).is_null()
        }
    }

    pub struct Builder<'a> {
        builder: ::capnp::private::layout::StructBuilder<'a>,
    }
    impl<'a> ::capnp::traits::HasStructSize for Builder<'a> {
        #[inline]
        fn struct_size() -> ::capnp::private::layout::StructSize {
            _private::STRUCT_SIZE
        }
    }
    impl<'a> ::capnp::traits::HasTypeId for Builder<'a> {
        #[inline]
        fn type_id() -> u64 {
            _private::TYPE_ID
        }
    }
    impl<'a> ::capnp::traits::FromStructBuilder<'a> for Builder<'a> {
        fn new(builder: ::capnp::private::layout::StructBuilder<'a>) -> Builder<'a> {
            Builder { builder: builder }
        }
    }

    impl<'a> ::capnp::traits::ImbueMut<'a> for Builder<'a> {
        fn imbue_mut(&mut self, cap_table: &'a mut ::capnp::private::layout::CapTable) {
            self.builder
                .imbue(::capnp::private::layout::CapTableBuilder::Plain(cap_table))
        }
    }

    impl<'a> ::capnp::traits::FromPointerBuilder<'a> for Builder<'a> {
        fn init_pointer(
            builder: ::capnp::private::layout::PointerBuilder<'a>,
            _size: u32,
        ) -> Builder<'a> {
            ::capnp::traits::FromStructBuilder::new(builder.init_struct(_private::STRUCT_SIZE))
        }
        fn get_from_pointer(
            builder: ::capnp::private::layout::PointerBuilder<'a>,
        ) -> ::capnp::Result<Builder<'a>> {
            ::std::result::Result::Ok(::capnp::traits::FromStructBuilder::new(
                builder.get_struct(_private::STRUCT_SIZE, ::std::ptr::null())?,
            ))
        }
    }

    impl<'a> ::capnp::traits::SetPointerBuilder<Builder<'a>> for Reader<'a> {
        fn set_pointer_builder<'b>(
            pointer: ::capnp::private::layout::PointerBuilder<'b>,
            value: Reader<'a>,
            canonicalize: bool,
        ) -> ::capnp::Result<()> {
            pointer.set_struct(&value.reader, canonicalize)
        }
    }

    impl<'a> Builder<'a> {
        #[deprecated(since = "0.9.2", note = "use into_reader()")]
        pub fn as_reader(self) -> Reader<'a> {
            self.into_reader()
        }
        pub fn into_reader(self) -> Reader<'a> {
            ::capnp::traits::FromStructReader::new(self.builder.into_reader())
        }
        pub fn reborrow(&mut self) -> Builder {
            Builder { ..*self }
        }
        pub fn reborrow_as_reader(&self) -> Reader {
            ::capnp::traits::FromStructReader::new(self.builder.into_reader())
        }

        pub fn total_size(&self) -> ::capnp::Result<::capnp::MessageSize> {
            self.builder.into_reader().total_size()
        }
        #[inline]
        pub fn get_ranges(
            self,
        ) -> ::capnp::Result<
            ::capnp::struct_list::Builder<
                'a,
                crate::data_transport_capnp::pending_sync_range::Owned,
            >,
        > {
            ::capnp::traits::FromPointerBuilder::get_from_pointer(self.builder.get_pointer_field(0))
        }
        #[inline]
        pub fn set_ranges(
            &mut self,
            value: ::capnp::struct_list::Reader<
                'a,
                crate::data_transport_capnp::pending_sync_range::Owned,
            >,
        ) -> ::capnp::Result<()> {
            ::capnp::traits::SetPointerBuilder::set_pointer_builder(
                self.builder.get_pointer_field(0),
                value,
                false,
            )
        }
        #[inline]
        pub fn init_ranges(
            self,
            size: u32,
        ) -> ::capnp::struct_list::Builder<'a, crate::data_transport_capnp::pending_sync_range::Owned>
        {
            ::capnp::traits::FromPointerBuilder::init_pointer(
                self.builder.get_pointer_field(0),
                size,
            )
        }
        pub fn has_ranges(&self) -> bool {
            !self.builder.get_pointer_field(0).is_null()
        }
    }

    pub struct Pipeline {
        _typeless: ::capnp::any_pointer::Pipeline,
    }
    impl ::capnp::capability::FromTypelessPipeline for Pipeline {
        fn new(typeless: ::capnp::any_pointer::Pipeline) -> Pipeline {
            Pipeline {
                _typeless: typeless,
            }
        }
    }
    impl Pipeline {}
    mod _private {
        use capnp::private::layout;
        pub const STRUCT_SIZE: layout::StructSize = layout::StructSize {
            data: 0,
            pointers: 1,
        };
        pub const TYPE_ID: u64 = 0xf23b_fe58_29c7_1a4b;
    }
}

pub mod pending_sync_response {
    #[derive(Copy, Clone)]
    pub struct Owned;
    impl<'a> ::capnp::traits::Owned<'a> for Owned {
        type Reader = Reader<'a>;
        type Builder = Builder<'a>;
    }
    impl<'a> ::capnp::traits::OwnedStruct<'a> for Owned {
        type Reader = Reader<'a>;
        type Builder = Builder<'a>;
    }
    impl ::capnp::traits::Pipelined for Owned {
        type Pipeline = Pipeline;
    }

    #[derive(Clone, Copy)]
    pub struct Reader<'a> {
        reader: ::capnp::private::layout::StructReader<'a>,
    }

    impl<'a> ::capnp::traits::HasTypeId for Reader<'a> {
        #[inline]
        fn type_id() -> u64 {
            _private::TYPE_ID
        }
    }
    impl<'a> ::capnp::traits::FromStructReader<'a> for Reader<'a> {
        fn new(reader: ::capnp::private::layout::StructReader<'a>) -> Reader<'a> {
            Reader { reader: reader }
        }
    }

    impl<'a> ::capnp::traits::FromPointerReader<'a> for Reader<'a> {
        fn get_from_pointer(
            reader: &::capnp::private::layout::PointerReader<'a>,
        ) -> ::capnp::Result<Reader<'a>> {
            ::std::result::Result::Ok(::capnp::traits::FromStructReader::new(
                reader.get_struct(::std::ptr::null())?,
            ))
        }
    }

    impl<'a> ::capnp::traits::IntoInternalStructReader<'a> for Reader<'a> {
        fn into_internal_struct_reader(self) -> ::capnp::private::layout::StructReader<'a> {
            self.reader
        }
    }

    impl<'a> ::capnp::traits::Imbue<'a> for Reader<'a> {
        fn imbue(&mut self, cap_table: &'a ::capnp::private::layout::CapTable) {
            self.reader
                .imbue(::capnp::private::layout::CapTableReader::Plain(cap_table))
        }
    }

    impl<'a> Reader<'a> {
        pub fn reborrow(&self) -> Reader {
            Reader { ..*self }
        }

        pub fn total_size(&self) -> ::capnp::Result<::capnp::MessageSize> {
            self.reader.total_size()
        }
        #[inline]
        pub fn get_ranges(
            self,
        ) -> ::capnp::Result<
            ::capnp::struct_list::Reader<
                'a,
                crate::data_transport_capnp::pending_sync_range::Owned,
            >,
        > {
            ::capnp::traits::FromPointerReader::get_from_pointer(&self.reader.get_pointer_field(0))
        }
        pub fn has_ranges(&self) -> bool {
            !self.reader.get_pointer_field(0).is_null()
        }
    }

    pub struct Builder<'a> {
        builder: ::capnp::private::layout::StructBuilder<'a>,
    }
    impl<'a> ::capnp::traits::HasStructSize for Builder<'a> {
        #[inline]
        fn struct_size() -> ::capnp::private::layout::StructSize {
            _private::STRUCT_SIZE
        }
    }
    impl<'a> ::capnp::traits::HasTypeId for Builder<'a> {
        #[inline]
        fn type_id() -> u64 {
            _private::TYPE_ID
        }
    }
    impl<'a> ::capnp::traits::FromStructBuilder<'a> for Builder<'a> {
        fn new(builder: ::capnp::private::layout::StructBuilder<'a>) -> Builder<'a> {
            Builder { builder: builder }
        }
    }

    impl<'a> ::capnp::traits::ImbueMut<'a> for Builder<'a> {
        fn imbue_mut(&mut self, cap_table: &'a mut ::capnp::private::layout::CapTable) {
            self.builder
                .imbue(::capnp::private::layout::CapTableBuilder::Plain(cap_table))
        }
    }

    impl<'a> ::capnp::traits::FromPointerBuilder<'a> for Builder<'a> {
        fn init_pointer(
            builder: ::capnp::private::layout::PointerBuilder<'a>,
            _size: u32,
        ) -> Builder<'a> {
            ::capnp::traits::FromStructBuilder::new(builder.init_struct(_private::STRUCT_SIZE))
        }
        fn get_from_pointer(
            builder: ::capnp::private::layout::PointerBuilder<'a>,
        ) -> ::capnp::Result<Builder<'a>> {
            ::std::result::Result::Ok(::capnp::traits::FromStructBuilder::new(
                builder.get_struct(_private::STRUCT_SIZE, ::std::ptr::null())?,
            ))
        }
    }

    impl<'a> ::capnp::traits::SetPointerBuilder<Builder<'a>> for Reader<'a> {
        fn set_pointer_builder<'b>(
            pointer: ::capnp::private::layout::PointerBuilder<'b>,
            value: Reader<'a>,
            canonicalize: bool,
        ) -> ::capnp::Result<()> {
            pointer.set_struct(&value.reader, canonicalize)
        }
    }

    impl<'a> Builder<'a> {
        #[deprecated(since = "0.9.2", note = "use into_reader()")]
        pub fn as_reader(self) -> Reader<'a> {
            self.into_reader()
        }
        pub fn into_reader(self) -> Reader<'a> {
            ::capnp::traits::FromStructReader::new(self.builder.into_reader())
        }
        pub fn reborrow(&mut self) -> Builder {
            Builder { ..*self }
        }
        pub fn reborrow_as_reader(&self) -> Reader {
            ::capnp::traits::FromStructReader::new(self.builder.into_reader())
        }

        pub fn total_size(&self) -> ::capnp::Result<::capnp::MessageSize> {
            self.builder.into_reader().total_size()
        }
        #[inline]
        pub fn get_ranges(
            self,
        ) -> ::capnp::Result<
            ::capnp::struct_list::Builder<
                'a,
                crate::data_transport_capnp::pending_sync_range::Owned,
            >,
        > {
            ::capnp::traits::FromPointerBuilder::get_from_pointer(self.builder.get_pointer_field(0))
        }
        #[inline]
        pub fn set_ranges(
            &mut self,
            value: ::capnp::struct_list::Reader<
                'a,
                crate::data_transport_capnp::pending_sync_range::Owned,
            >,
        ) -> ::capnp::Result<()> {
            ::capnp::traits::SetPointerBuilder::set_pointer_builder(
                self.builder.get_pointer_field(0),
                value,
                false,
            )
        }
        #[inline]
        pub fn init_ranges(
            self,
            size: u32,
        ) -> ::capnp::struct_list::Builder<'a, crate::data_transport_capnp::pending_sync_range::Owned>
        {
            ::capnp::traits::FromPointerBuilder::init_pointer(
                self.builder.get_pointer_field(0),
                size,
            )
        }
        pub fn has_ranges(&self) -> bool {
            !self.builder.get_pointer_field(0).is_null()
        }
    }

    pub struct Pipeline {
        _typeless: ::capnp::any_pointer::Pipeline,
    }
    impl ::capnp::capability::FromTypelessPipeline for Pipeline {
        fn new(typeless: ::capnp::any_pointer::Pipeline) -> Pipeline {
            Pipeline {
                _typeless: typeless,
            }
        }
    }
    impl Pipeline {}
    mod _private {
        use capnp::private::layout;
        pub const STRUCT_SIZE: layout::StructSize = layout::StructSize {
            data: 0,
            pointers: 1,
        };
        pub const TYPE_ID: u64 = 0xe0c9_65d5_132a_306a;
    }
}

pub mod pending_sync_range {
    #[derive(Copy, Clone)]
    pub struct Owned;
    impl<'a> ::capnp::traits::Owned<'a> for Owned {
        type Reader = Reader<'a>;
        type Builder = Builder<'a>;
    }
    impl<'a> ::capnp::traits::OwnedStruct<'a> for Owned {
        type Reader = Reader<'a>;
        type Builder = Builder<'a>;
    }
    impl ::capnp::traits::Pipelined for Owned {
        type Pipeline = Pipeline;
    }

    #[derive(Clone, Copy)]
    pub struct Reader<'a> {
        reader: ::capnp::private::layout::StructReader<'a>,
    }

    impl<'a> ::capnp::traits::HasTypeId for Reader<'a> {
        #[inline]
        fn type_id() -> u64 {
            _private::TYPE_ID
        }
    }
    impl<'a> ::capnp::traits::FromStructReader<'a> for Reader<'a> {
        fn new(reader: ::capnp::private::layout::StructReader<'a>) -> Reader<'a> {
            Reader { reader: reader }
        }
    }

    impl<'a> ::capnp::traits::FromPointerReader<'a> for Reader<'a> {
        fn get_from_pointer(
            reader: &::capnp::private::layout::PointerReader<'a>,
        ) -> ::capnp::Result<Reader<'a>> {
            ::std::result::Result::Ok(::capnp::traits::FromStructReader::new(
                reader.get_struct(::std::ptr::null())?,
            ))
        }
    }

    impl<'a> ::capnp::traits::IntoInternalStructReader<'a> for Reader<'a> {
        fn into_internal_struct_reader(self) -> ::capnp::private::layout::StructReader<'a> {
            self.reader
        }
    }

    impl<'a> ::capnp::traits::Imbue<'a> for Reader<'a> {
        fn imbue(&mut self, cap_table: &'a ::capnp::private::layout::CapTable) {
            self.reader
                .imbue(::capnp::private::layout::CapTableReader::Plain(cap_table))
        }
    }

    impl<'a> Reader<'a> {
        pub fn reborrow(&self) -> Reader {
            Reader { ..*self }
        }

        pub fn total_size(&self) -> ::capnp::Result<::capnp::MessageSize> {
            self.reader.total_size()
        }
        #[inline]
        pub fn get_from_time(self) -> u64 {
            self.reader.get_data_field::<u64>(0)
        }
        #[inline]
        pub fn get_to_time(self) -> u64 {
            self.reader.get_data_field::<u64>(1)
        }
        #[inline]
        pub fn get_hash_only(self) -> bool {
            self.reader.get_bool_field(128)
        }
        #[inline]
        pub fn get_hash(self) -> ::capnp::Result<::capnp::data::Reader<'a>> {
            self.reader
                .get_pointer_field(0)
                .get_data(::std::ptr::null(), 0)
        }
        pub fn has_hash(&self) -> bool {
            !self.reader.get_pointer_field(0).is_null()
        }
        #[inline]
        pub fn get_operations(
            self,
        ) -> ::capnp::Result<
            ::capnp::struct_list::Reader<'a, crate::data_chain_capnp::pending_operation::Owned>,
        > {
            ::capnp::traits::FromPointerReader::get_from_pointer(&self.reader.get_pointer_field(1))
        }
        pub fn has_operations(&self) -> bool {
            !self.reader.get_pointer_field(1).is_null()
        }
    }

    pub struct Builder<'a> {
        builder: ::capnp::private::layout::StructBuilder<'a>,
    }
    impl<'a> ::capnp::traits::HasStructSize for Builder<'a> {
        #[inline]
        fn struct_size() -> ::capnp::private::layout::StructSize {
            _private::STRUCT_SIZE
        }
    }
    impl<'a> ::capnp::traits::HasTypeId for Builder<'a> {
        #[inline]
        fn type_id() -> u64 {
            _private::TYPE_ID
        }
    }
    impl<'a> ::capnp::traits::FromStructBuilder<'a> for Builder<'a> {
        fn new(builder: ::capnp::private::layout::StructBuilder<'a>) -> Builder<'a> {
            Builder { builder: builder }
        }
    }

    impl<'a> ::capnp::traits::ImbueMut<'a> for Builder<'a> {
        fn imbue_mut(&mut self, cap_table: &'a mut ::capnp::private::layout::CapTable) {
            self.builder
                .imbue(::capnp::private::layout::CapTableBuilder::Plain(cap_table))
        }
    }

    impl<'a> ::capnp::traits::FromPointerBuilder<'a> for Builder<'a> {
        fn init_pointer(
            builder: ::capnp::private::layout::PointerBuilder<'a>,
            _size: u32,
        ) -> Builder<'a> {
            ::capnp::traits::FromStructBuilder::new(builder.init_struct(_private::STRUCT_SIZE))
        }
        fn get_from_pointer(
            builder: ::capnp::private::layout::PointerBuilder<'a>,
        ) -> ::capnp::Result<Builder<'a>> {
            ::std::result::Result::Ok(::capnp::traits::FromStructBuilder::new(
                builder.get_struct(_private::STRUCT_SIZE, ::std::ptr::null())?,
            ))
        }
    }

    impl<'a> ::capnp::traits::SetPointerBuilder<Builder<'a>> for Reader<'a> {
        fn set_pointer_builder<'b>(
            pointer: ::capnp::private::layout::PointerBuilder<'b>,
            value: Reader<'a>,
            canonicalize: bool,
        ) -> ::capnp::Result<()> {
            pointer.set_struct(&value.reader, canonicalize)
        }
    }

    impl<'a> Builder<'a> {
        #[deprecated(since = "0.9.2", note = "use into_reader()")]
        pub fn as_reader(self) -> Reader<'a> {
            self.into_reader()
        }
        pub fn into_reader(self) -> Reader<'a> {
            ::capnp::traits::FromStructReader::new(self.builder.into_reader())
        }
        pub fn reborrow(&mut self) -> Builder {
            Builder { ..*self }
        }
        pub fn reborrow_as_reader(&self) -> Reader {
            ::capnp::traits::FromStructReader::new(self.builder.into_reader())
        }

        pub fn total_size(&self) -> ::capnp::Result<::capnp::MessageSize> {
            self.builder.into_reader().total_size()
        }
        #[inline]
        pub fn get_from_time(self) -> u64 {
            self.builder.get_data_field::<u64>(0)
        }
        #[inline]
        pub fn set_from_time(&mut self, value: u64) {
            self.builder.set_data_field::<u64>(0, value);
        }
        #[inline]
        pub fn get_to_time(self) -> u64 {
            self.builder.get_data_field::<u64>(1)
        }
        #[inline]
        pub fn set_to_time(&mut self, value: u64) {
            self.builder.set_data_field::<u64>(1, value);
        }
        #[inline]
        pub fn get_hash_only(self) -> bool {
            self.builder.get_bool_field(128)
        }
        #[inline]
        pub fn set_hash_only(&mut self, value: bool) {
            self.builder.set_bool_field(128, value);
        }
        #[inline]
        pub fn get_hash(self) -> ::capnp::Result<::capnp::data::Builder<'a>> {
            self.builder
                .get_pointer_field(0)
                .get_data(::std::ptr::null(), 0)
        }
        #[inline]
        pub fn set_hash(&mut self, value: ::capnp::data::Reader) {
            self.builder.get_pointer_field(0).set_data(value);
        }
        #[inline]
        pub fn init_hash(self, size: u32) -> ::capnp::data::Builder<'a> {
            self.builder.get_pointer_field(0).init_data(size)
        }
        pub fn has_hash(&self) -> bool {
            !self.builder.get_pointer_field(0).is_null()
        }
        #[inline]
        pub fn get_operations(
            self,
        ) -> ::capnp::Result<
            ::capnp::struct_list::Builder<'a, crate::data_chain_capnp::pending_operation::Owned>,
        > {
            ::capnp::traits::FromPointerBuilder::get_from_pointer(self.builder.get_pointer_field(1))
        }
        #[inline]
        pub fn set_operations(
            &mut self,
            value: ::capnp::struct_list::Reader<
                'a,
                crate::data_chain_capnp::pending_operation::Owned,
            >,
        ) -> ::capnp::Result<()> {
            ::capnp::traits::SetPointerBuilder::set_pointer_builder(
                self.builder.get_pointer_field(1),
                value,
                false,
            )
        }
        #[inline]
        pub fn init_operations(
            self,
            size: u32,
        ) -> ::capnp::struct_list::Builder<'a, crate::data_chain_capnp::pending_operation::Owned>
        {
            ::capnp::traits::FromPointerBuilder::init_pointer(
                self.builder.get_pointer_field(1),
                size,
            )
        }
        pub fn has_operations(&self) -> bool {
            !self.builder.get_pointer_field(1).is_null()
        }
    }

    pub struct Pipeline {
        _typeless: ::capnp::any_pointer::Pipeline,
    }
    impl ::capnp::capability::FromTypelessPipeline for Pipeline {
        fn new(typeless: ::capnp::any_pointer::Pipeline) -> Pipeline {
            Pipeline {
                _typeless: typeless,
            }
        }
    }
    impl Pipeline {}
    mod _private {
        use capnp::private::layout;
        pub const STRUCT_SIZE: layout::StructSize = layout::StructSize {
            data: 3,
            pointers: 2,
        };
        pub const TYPE_ID: u64 = 0xfb10_27d7_6f28_4abd;
    }
}
