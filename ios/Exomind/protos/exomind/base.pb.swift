// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: exomind/base.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

import Exocore

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum Exomind_Base_V1_AccountType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case invalid // = 0
  case gmail // = 1
  case UNRECOGNIZED(Int)

  init() {
    self = .invalid
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .invalid
    case 1: self = .gmail
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .invalid: return 0
    case .gmail: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Exomind_Base_V1_AccountType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Exomind_Base_V1_AccountType] = [
    .invalid,
    .gmail,
  ]
}

#endif  // swift(>=4.2)

enum Exomind_Base_V1_AccountScope: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case invalid // = 0
  case email // = 1
  case UNRECOGNIZED(Int)

  init() {
    self = .invalid
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .invalid
    case 1: self = .email
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .invalid: return 0
    case .email: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Exomind_Base_V1_AccountScope: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Exomind_Base_V1_AccountScope] = [
    .invalid,
    .email,
  ]
}

#endif  // swift(>=4.2)

struct Exomind_Base_V1_Collection {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var name: String = String()

  var description_p: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Exomind_Base_V1_CollectionChild {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var collection: Exocore.Exocore_Store_Reference {
    get {return _collection ?? Exocore.Exocore_Store_Reference()}
    set {_collection = newValue}
  }
  /// Returns true if `collection` has been explicitly set.
  var hasCollection: Bool {return self._collection != nil}
  /// Clears the value of `collection`. Subsequent reads from it will return its default value.
  mutating func clearCollection() {self._collection = nil}

  var weight: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _collection: Exocore.Exocore_Store_Reference? = nil
}

struct Exomind_Base_V1_Snoozed {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var untilDate: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _untilDate ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_untilDate = newValue}
  }
  /// Returns true if `untilDate` has been explicitly set.
  var hasUntilDate: Bool {return self._untilDate != nil}
  /// Clears the value of `untilDate`. Subsequent reads from it will return its default value.
  mutating func clearUntilDate() {self._untilDate = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _untilDate: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

struct Exomind_Base_V1_Account {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var key: String = String()

  var name: String = String()

  var type: Exomind_Base_V1_AccountType = .invalid

  var scopes: [Exomind_Base_V1_AccountScope] = []

  var data: Dictionary<String,String> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Exomind_Base_V1_EmailThread {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// TODO: These 2 fields should probably be into a "source" object ?
  var account: Exocore.Exocore_Store_Reference {
    get {return _account ?? Exocore.Exocore_Store_Reference()}
    set {_account = newValue}
  }
  /// Returns true if `account` has been explicitly set.
  var hasAccount: Bool {return self._account != nil}
  /// Clears the value of `account`. Subsequent reads from it will return its default value.
  mutating func clearAccount() {self._account = nil}

  var sourceID: String = String()

  var from: Exomind_Base_V1_Contact {
    get {return _from ?? Exomind_Base_V1_Contact()}
    set {_from = newValue}
  }
  /// Returns true if `from` has been explicitly set.
  var hasFrom: Bool {return self._from != nil}
  /// Clears the value of `from`. Subsequent reads from it will return its default value.
  mutating func clearFrom() {self._from = nil}

  var subject: String = String()

  var snippet: String = String()

  var lastEmail: Exocore.Exocore_Store_Reference {
    get {return _lastEmail ?? Exocore.Exocore_Store_Reference()}
    set {_lastEmail = newValue}
  }
  /// Returns true if `lastEmail` has been explicitly set.
  var hasLastEmail: Bool {return self._lastEmail != nil}
  /// Clears the value of `lastEmail`. Subsequent reads from it will return its default value.
  mutating func clearLastEmail() {self._lastEmail = nil}

  var read: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _account: Exocore.Exocore_Store_Reference? = nil
  fileprivate var _from: Exomind_Base_V1_Contact? = nil
  fileprivate var _lastEmail: Exocore.Exocore_Store_Reference? = nil
}

struct Exomind_Base_V1_Email {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var account: Exocore.Exocore_Store_Reference {
    get {return _account ?? Exocore.Exocore_Store_Reference()}
    set {_account = newValue}
  }
  /// Returns true if `account` has been explicitly set.
  var hasAccount: Bool {return self._account != nil}
  /// Clears the value of `account`. Subsequent reads from it will return its default value.
  mutating func clearAccount() {self._account = nil}

  var sourceID: String = String()

  var from: Exomind_Base_V1_Contact {
    get {return _from ?? Exomind_Base_V1_Contact()}
    set {_from = newValue}
  }
  /// Returns true if `from` has been explicitly set.
  var hasFrom: Bool {return self._from != nil}
  /// Clears the value of `from`. Subsequent reads from it will return its default value.
  mutating func clearFrom() {self._from = nil}

  var receivedDate: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _receivedDate ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_receivedDate = newValue}
  }
  /// Returns true if `receivedDate` has been explicitly set.
  var hasReceivedDate: Bool {return self._receivedDate != nil}
  /// Clears the value of `receivedDate`. Subsequent reads from it will return its default value.
  mutating func clearReceivedDate() {self._receivedDate = nil}

  var to: [Exomind_Base_V1_Contact] = []

  var cc: [Exomind_Base_V1_Contact] = []

  var bcc: [Exomind_Base_V1_Contact] = []

  var subject: String = String()

  var snippet: String = String()

  var parts: [Exomind_Base_V1_EmailPart] = []

  var attachments: [Exomind_Base_V1_EmailAttachment] = []

  var read: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _account: Exocore.Exocore_Store_Reference? = nil
  fileprivate var _from: Exomind_Base_V1_Contact? = nil
  fileprivate var _receivedDate: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

struct Exomind_Base_V1_DraftEmail {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var account: Exocore.Exocore_Store_Reference {
    get {return _account ?? Exocore.Exocore_Store_Reference()}
    set {_account = newValue}
  }
  /// Returns true if `account` has been explicitly set.
  var hasAccount: Bool {return self._account != nil}
  /// Clears the value of `account`. Subsequent reads from it will return its default value.
  mutating func clearAccount() {self._account = nil}

  var inReplyTo: Exocore.Exocore_Store_Reference {
    get {return _inReplyTo ?? Exocore.Exocore_Store_Reference()}
    set {_inReplyTo = newValue}
  }
  /// Returns true if `inReplyTo` has been explicitly set.
  var hasInReplyTo: Bool {return self._inReplyTo != nil}
  /// Clears the value of `inReplyTo`. Subsequent reads from it will return its default value.
  mutating func clearInReplyTo() {self._inReplyTo = nil}

  var to: [Exomind_Base_V1_Contact] = []

  var cc: [Exomind_Base_V1_Contact] = []

  var bcc: [Exomind_Base_V1_Contact] = []

  var subject: String = String()

  var parts: [Exomind_Base_V1_EmailPart] = []

  var attachments: [Exomind_Base_V1_EmailAttachment] = []

  var sendingDate: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _sendingDate ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_sendingDate = newValue}
  }
  /// Returns true if `sendingDate` has been explicitly set.
  var hasSendingDate: Bool {return self._sendingDate != nil}
  /// Clears the value of `sendingDate`. Subsequent reads from it will return its default value.
  mutating func clearSendingDate() {self._sendingDate = nil}

  var sentDate: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _sentDate ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_sentDate = newValue}
  }
  /// Returns true if `sentDate` has been explicitly set.
  var hasSentDate: Bool {return self._sentDate != nil}
  /// Clears the value of `sentDate`. Subsequent reads from it will return its default value.
  mutating func clearSentDate() {self._sentDate = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _account: Exocore.Exocore_Store_Reference? = nil
  fileprivate var _inReplyTo: Exocore.Exocore_Store_Reference? = nil
  fileprivate var _sendingDate: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _sentDate: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

struct Exomind_Base_V1_EmailPart {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var mimeType: String = String()

  var body: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Exomind_Base_V1_EmailAttachment {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var key: String = String()

  var name: String = String()

  var mimeType: String = String()

  var size: UInt64 = 0

  var inlinePlaceholder: String = String()

  var data: Dictionary<String,String> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Exomind_Base_V1_Note {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var title: String = String()

  var body: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Exomind_Base_V1_Contact {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var name: String = String()

  var email: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Exomind_Base_V1_Task {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var title: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Exomind_Base_V1_Link {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var url: String = String()

  var title: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "exomind.base.v1"

extension Exomind_Base_V1_AccountType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ACCOUNT_TYPE_INVALID"),
    1: .same(proto: "ACCOUNT_TYPE_GMAIL"),
  ]
}

extension Exomind_Base_V1_AccountScope: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ACCOUNT_SCOPE_INVALID"),
    1: .same(proto: "ACCOUNT_SCOPE_EMAIL"),
  ]
}

extension Exomind_Base_V1_Collection: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Collection"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "description"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularStringField(value: &self.description_p)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_Collection, rhs: Exomind_Base_V1_Collection) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exomind_Base_V1_CollectionChild: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CollectionChild"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "collection"),
    2: .same(proto: "weight"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._collection)
      case 2: try decoder.decodeSingularUInt64Field(value: &self.weight)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._collection {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.weight != 0 {
      try visitor.visitSingularUInt64Field(value: self.weight, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_CollectionChild, rhs: Exomind_Base_V1_CollectionChild) -> Bool {
    if lhs._collection != rhs._collection {return false}
    if lhs.weight != rhs.weight {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exomind_Base_V1_Snoozed: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Snoozed"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "until_date"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 2: try decoder.decodeSingularMessageField(value: &self._untilDate)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._untilDate {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_Snoozed, rhs: Exomind_Base_V1_Snoozed) -> Bool {
    if lhs._untilDate != rhs._untilDate {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exomind_Base_V1_Account: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Account"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "name"),
    3: .same(proto: "type"),
    4: .same(proto: "scopes"),
    5: .same(proto: "data"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.key)
      case 2: try decoder.decodeSingularStringField(value: &self.name)
      case 3: try decoder.decodeSingularEnumField(value: &self.type)
      case 4: try decoder.decodeRepeatedEnumField(value: &self.scopes)
      case 5: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.data)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.type != .invalid {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 3)
    }
    if !self.scopes.isEmpty {
      try visitor.visitPackedEnumField(value: self.scopes, fieldNumber: 4)
    }
    if !self.data.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.data, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_Account, rhs: Exomind_Base_V1_Account) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs.name != rhs.name {return false}
    if lhs.type != rhs.type {return false}
    if lhs.scopes != rhs.scopes {return false}
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exomind_Base_V1_EmailThread: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EmailThread"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "account"),
    2: .standard(proto: "source_id"),
    3: .same(proto: "from"),
    4: .same(proto: "subject"),
    5: .same(proto: "snippet"),
    6: .standard(proto: "last_email"),
    7: .same(proto: "read"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._account)
      case 2: try decoder.decodeSingularStringField(value: &self.sourceID)
      case 3: try decoder.decodeSingularMessageField(value: &self._from)
      case 4: try decoder.decodeSingularStringField(value: &self.subject)
      case 5: try decoder.decodeSingularStringField(value: &self.snippet)
      case 6: try decoder.decodeSingularMessageField(value: &self._lastEmail)
      case 7: try decoder.decodeSingularBoolField(value: &self.read)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._account {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.sourceID.isEmpty {
      try visitor.visitSingularStringField(value: self.sourceID, fieldNumber: 2)
    }
    if let v = self._from {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.subject.isEmpty {
      try visitor.visitSingularStringField(value: self.subject, fieldNumber: 4)
    }
    if !self.snippet.isEmpty {
      try visitor.visitSingularStringField(value: self.snippet, fieldNumber: 5)
    }
    if let v = self._lastEmail {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if self.read != false {
      try visitor.visitSingularBoolField(value: self.read, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_EmailThread, rhs: Exomind_Base_V1_EmailThread) -> Bool {
    if lhs._account != rhs._account {return false}
    if lhs.sourceID != rhs.sourceID {return false}
    if lhs._from != rhs._from {return false}
    if lhs.subject != rhs.subject {return false}
    if lhs.snippet != rhs.snippet {return false}
    if lhs._lastEmail != rhs._lastEmail {return false}
    if lhs.read != rhs.read {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exomind_Base_V1_Email: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Email"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "account"),
    2: .standard(proto: "source_id"),
    3: .same(proto: "from"),
    4: .standard(proto: "received_date"),
    5: .same(proto: "to"),
    6: .same(proto: "cc"),
    7: .same(proto: "bcc"),
    8: .same(proto: "subject"),
    9: .same(proto: "snippet"),
    10: .same(proto: "parts"),
    11: .same(proto: "attachments"),
    14: .same(proto: "read"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._account)
      case 2: try decoder.decodeSingularStringField(value: &self.sourceID)
      case 3: try decoder.decodeSingularMessageField(value: &self._from)
      case 4: try decoder.decodeSingularMessageField(value: &self._receivedDate)
      case 5: try decoder.decodeRepeatedMessageField(value: &self.to)
      case 6: try decoder.decodeRepeatedMessageField(value: &self.cc)
      case 7: try decoder.decodeRepeatedMessageField(value: &self.bcc)
      case 8: try decoder.decodeSingularStringField(value: &self.subject)
      case 9: try decoder.decodeSingularStringField(value: &self.snippet)
      case 10: try decoder.decodeRepeatedMessageField(value: &self.parts)
      case 11: try decoder.decodeRepeatedMessageField(value: &self.attachments)
      case 14: try decoder.decodeSingularBoolField(value: &self.read)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._account {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.sourceID.isEmpty {
      try visitor.visitSingularStringField(value: self.sourceID, fieldNumber: 2)
    }
    if let v = self._from {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._receivedDate {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if !self.to.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.to, fieldNumber: 5)
    }
    if !self.cc.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.cc, fieldNumber: 6)
    }
    if !self.bcc.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.bcc, fieldNumber: 7)
    }
    if !self.subject.isEmpty {
      try visitor.visitSingularStringField(value: self.subject, fieldNumber: 8)
    }
    if !self.snippet.isEmpty {
      try visitor.visitSingularStringField(value: self.snippet, fieldNumber: 9)
    }
    if !self.parts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.parts, fieldNumber: 10)
    }
    if !self.attachments.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.attachments, fieldNumber: 11)
    }
    if self.read != false {
      try visitor.visitSingularBoolField(value: self.read, fieldNumber: 14)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_Email, rhs: Exomind_Base_V1_Email) -> Bool {
    if lhs._account != rhs._account {return false}
    if lhs.sourceID != rhs.sourceID {return false}
    if lhs._from != rhs._from {return false}
    if lhs._receivedDate != rhs._receivedDate {return false}
    if lhs.to != rhs.to {return false}
    if lhs.cc != rhs.cc {return false}
    if lhs.bcc != rhs.bcc {return false}
    if lhs.subject != rhs.subject {return false}
    if lhs.snippet != rhs.snippet {return false}
    if lhs.parts != rhs.parts {return false}
    if lhs.attachments != rhs.attachments {return false}
    if lhs.read != rhs.read {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exomind_Base_V1_DraftEmail: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DraftEmail"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "account"),
    2: .standard(proto: "in_reply_to"),
    3: .same(proto: "to"),
    4: .same(proto: "cc"),
    5: .same(proto: "bcc"),
    6: .same(proto: "subject"),
    7: .same(proto: "parts"),
    8: .same(proto: "attachments"),
    9: .standard(proto: "sending_date"),
    10: .standard(proto: "sent_date"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._account)
      case 2: try decoder.decodeSingularMessageField(value: &self._inReplyTo)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.to)
      case 4: try decoder.decodeRepeatedMessageField(value: &self.cc)
      case 5: try decoder.decodeRepeatedMessageField(value: &self.bcc)
      case 6: try decoder.decodeSingularStringField(value: &self.subject)
      case 7: try decoder.decodeRepeatedMessageField(value: &self.parts)
      case 8: try decoder.decodeRepeatedMessageField(value: &self.attachments)
      case 9: try decoder.decodeSingularMessageField(value: &self._sendingDate)
      case 10: try decoder.decodeSingularMessageField(value: &self._sentDate)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._account {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._inReplyTo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.to.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.to, fieldNumber: 3)
    }
    if !self.cc.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.cc, fieldNumber: 4)
    }
    if !self.bcc.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.bcc, fieldNumber: 5)
    }
    if !self.subject.isEmpty {
      try visitor.visitSingularStringField(value: self.subject, fieldNumber: 6)
    }
    if !self.parts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.parts, fieldNumber: 7)
    }
    if !self.attachments.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.attachments, fieldNumber: 8)
    }
    if let v = self._sendingDate {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }
    if let v = self._sentDate {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_DraftEmail, rhs: Exomind_Base_V1_DraftEmail) -> Bool {
    if lhs._account != rhs._account {return false}
    if lhs._inReplyTo != rhs._inReplyTo {return false}
    if lhs.to != rhs.to {return false}
    if lhs.cc != rhs.cc {return false}
    if lhs.bcc != rhs.bcc {return false}
    if lhs.subject != rhs.subject {return false}
    if lhs.parts != rhs.parts {return false}
    if lhs.attachments != rhs.attachments {return false}
    if lhs._sendingDate != rhs._sendingDate {return false}
    if lhs._sentDate != rhs._sentDate {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exomind_Base_V1_EmailPart: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EmailPart"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "mime_type"),
    2: .same(proto: "body"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.mimeType)
      case 2: try decoder.decodeSingularStringField(value: &self.body)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.mimeType.isEmpty {
      try visitor.visitSingularStringField(value: self.mimeType, fieldNumber: 1)
    }
    if !self.body.isEmpty {
      try visitor.visitSingularStringField(value: self.body, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_EmailPart, rhs: Exomind_Base_V1_EmailPart) -> Bool {
    if lhs.mimeType != rhs.mimeType {return false}
    if lhs.body != rhs.body {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exomind_Base_V1_EmailAttachment: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EmailAttachment"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "name"),
    3: .standard(proto: "mime_type"),
    4: .same(proto: "size"),
    5: .standard(proto: "inline_placeholder"),
    6: .same(proto: "data"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.key)
      case 2: try decoder.decodeSingularStringField(value: &self.name)
      case 3: try decoder.decodeSingularStringField(value: &self.mimeType)
      case 4: try decoder.decodeSingularUInt64Field(value: &self.size)
      case 5: try decoder.decodeSingularStringField(value: &self.inlinePlaceholder)
      case 6: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.data)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.mimeType.isEmpty {
      try visitor.visitSingularStringField(value: self.mimeType, fieldNumber: 3)
    }
    if self.size != 0 {
      try visitor.visitSingularUInt64Field(value: self.size, fieldNumber: 4)
    }
    if !self.inlinePlaceholder.isEmpty {
      try visitor.visitSingularStringField(value: self.inlinePlaceholder, fieldNumber: 5)
    }
    if !self.data.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.data, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_EmailAttachment, rhs: Exomind_Base_V1_EmailAttachment) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs.name != rhs.name {return false}
    if lhs.mimeType != rhs.mimeType {return false}
    if lhs.size != rhs.size {return false}
    if lhs.inlinePlaceholder != rhs.inlinePlaceholder {return false}
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exomind_Base_V1_Note: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Note"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "title"),
    2: .same(proto: "body"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.title)
      case 2: try decoder.decodeSingularStringField(value: &self.body)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 1)
    }
    if !self.body.isEmpty {
      try visitor.visitSingularStringField(value: self.body, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_Note, rhs: Exomind_Base_V1_Note) -> Bool {
    if lhs.title != rhs.title {return false}
    if lhs.body != rhs.body {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exomind_Base_V1_Contact: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Contact"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "email"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularStringField(value: &self.email)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.email.isEmpty {
      try visitor.visitSingularStringField(value: self.email, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_Contact, rhs: Exomind_Base_V1_Contact) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.email != rhs.email {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exomind_Base_V1_Task: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Task"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "title"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.title)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_Task, rhs: Exomind_Base_V1_Task) -> Bool {
    if lhs.title != rhs.title {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exomind_Base_V1_Link: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Link"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "url"),
    2: .same(proto: "title"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.url)
      case 2: try decoder.decodeSingularStringField(value: &self.title)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.url.isEmpty {
      try visitor.visitSingularStringField(value: self.url, fieldNumber: 1)
    }
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Exomind_Base_V1_Link, rhs: Exomind_Base_V1_Link) -> Bool {
    if lhs.url != rhs.url {return false}
    if lhs.title != rhs.title {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
