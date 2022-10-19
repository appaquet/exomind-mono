#![allow(clippy::derive_partial_eq_without_eq)]
// Fields groups
//   #1: Fields necessary for search/listing

#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Collection {
    #[prost(string, tag = "1")]
    pub name: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub description: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CollectionChild {
    #[prost(message, optional, tag = "1")]
    pub collection: ::core::option::Option<super::super::super::exocore::store::Reference>,
    #[prost(uint64, tag = "2")]
    pub weight: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Snoozed {
    #[prost(message, optional, tag = "2")]
    pub until_date: ::core::option::Option<::prost_types::Timestamp>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Unread {
    /// Reference to the unread trait of the entity.
    /// Ex: points to the email trait that hasn't been read.
    #[prost(message, optional, tag = "1")]
    pub entity: ::core::option::Option<super::super::super::exocore::store::Reference>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Account {
    #[prost(string, tag = "1")]
    pub key: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub name: ::prost::alloc::string::String,
    #[prost(enumeration = "AccountType", tag = "3")]
    pub r#type: i32,
    #[prost(enumeration = "AccountScope", repeated, tag = "4")]
    pub scopes: ::prost::alloc::vec::Vec<i32>,
    #[prost(map = "string, string", tag = "5")]
    pub data:
        ::std::collections::HashMap<::prost::alloc::string::String, ::prost::alloc::string::String>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EmailThread {
    /// TODO: These 2 fields should probably be into a "source" object ?
    #[prost(message, optional, tag = "1")]
    pub account: ::core::option::Option<super::super::super::exocore::store::Reference>,
    #[prost(string, tag = "2")]
    pub source_id: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "3")]
    pub from: ::core::option::Option<Contact>,
    #[prost(string, tag = "4")]
    pub subject: ::prost::alloc::string::String,
    #[prost(string, tag = "5")]
    pub snippet: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "6")]
    pub last_email: ::core::option::Option<super::super::super::exocore::store::Reference>,
    #[deprecated]
    #[prost(bool, tag = "7")]
    pub read: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Email {
    #[prost(message, optional, tag = "1")]
    pub account: ::core::option::Option<super::super::super::exocore::store::Reference>,
    #[prost(string, tag = "2")]
    pub source_id: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "3")]
    pub from: ::core::option::Option<Contact>,
    #[prost(message, optional, tag = "4")]
    pub received_date: ::core::option::Option<::prost_types::Timestamp>,
    #[prost(message, repeated, tag = "5")]
    pub to: ::prost::alloc::vec::Vec<Contact>,
    #[prost(message, repeated, tag = "6")]
    pub cc: ::prost::alloc::vec::Vec<Contact>,
    #[prost(message, repeated, tag = "7")]
    pub bcc: ::prost::alloc::vec::Vec<Contact>,
    #[prost(string, tag = "8")]
    pub subject: ::prost::alloc::string::String,
    #[prost(string, tag = "9")]
    pub snippet: ::prost::alloc::string::String,
    #[prost(message, repeated, tag = "10")]
    pub parts: ::prost::alloc::vec::Vec<EmailPart>,
    #[prost(message, repeated, tag = "11")]
    pub attachments: ::prost::alloc::vec::Vec<EmailAttachment>,
    #[deprecated]
    #[prost(bool, tag = "14")]
    pub read: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DraftEmail {
    #[prost(message, optional, tag = "1")]
    pub account: ::core::option::Option<super::super::super::exocore::store::Reference>,
    #[prost(message, optional, tag = "2")]
    pub in_reply_to: ::core::option::Option<super::super::super::exocore::store::Reference>,
    #[prost(message, repeated, tag = "3")]
    pub to: ::prost::alloc::vec::Vec<Contact>,
    #[prost(message, repeated, tag = "4")]
    pub cc: ::prost::alloc::vec::Vec<Contact>,
    #[prost(message, repeated, tag = "5")]
    pub bcc: ::prost::alloc::vec::Vec<Contact>,
    #[prost(string, tag = "6")]
    pub subject: ::prost::alloc::string::String,
    #[prost(message, repeated, tag = "7")]
    pub parts: ::prost::alloc::vec::Vec<EmailPart>,
    #[prost(message, repeated, tag = "8")]
    pub attachments: ::prost::alloc::vec::Vec<EmailAttachment>,
    #[prost(message, optional, tag = "9")]
    pub sending_date: ::core::option::Option<::prost_types::Timestamp>,
    #[prost(message, optional, tag = "10")]
    pub sent_date: ::core::option::Option<::prost_types::Timestamp>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EmailPart {
    #[prost(string, tag = "1")]
    pub mime_type: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub body: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EmailAttachment {
    #[prost(string, tag = "1")]
    pub key: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub name: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub mime_type: ::prost::alloc::string::String,
    #[prost(uint64, tag = "4")]
    pub size: u64,
    #[prost(string, tag = "5")]
    pub inline_placeholder: ::prost::alloc::string::String,
    #[prost(map = "string, string", tag = "6")]
    pub data:
        ::std::collections::HashMap<::prost::alloc::string::String, ::prost::alloc::string::String>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Note {
    #[prost(string, tag = "1")]
    pub title: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub body: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Contact {
    #[prost(string, tag = "1")]
    pub name: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub email: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Task {
    #[prost(string, tag = "1")]
    pub title: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Link {
    #[prost(string, tag = "1")]
    pub url: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub title: ::prost::alloc::string::String,
}
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum AccountType {
    Invalid = 0,
    Gmail = 1,
}
impl AccountType {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            AccountType::Invalid => "ACCOUNT_TYPE_INVALID",
            AccountType::Gmail => "ACCOUNT_TYPE_GMAIL",
        }
    }
}
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum AccountScope {
    Invalid = 0,
    Email = 1,
}
impl AccountScope {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            AccountScope::Invalid => "ACCOUNT_SCOPE_INVALID",
            AccountScope::Email => "ACCOUNT_SCOPE_EMAIL",
        }
    }
}
