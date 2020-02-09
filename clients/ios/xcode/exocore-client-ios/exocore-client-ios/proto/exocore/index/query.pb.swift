// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: exocore/index/query.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public enum Exocore_Index_EntityResultSource: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case unknown // = 0
  case pending // = 1
  case chain // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unknown
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .pending
    case 2: self = .chain
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .pending: return 1
    case .chain: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Exocore_Index_EntityResultSource: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Exocore_Index_EntityResultSource] = [
    .unknown,
    .pending,
    .chain,
  ]
}

#endif  // swift(>=4.2)

public struct Exocore_Index_EntityQuery {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var predicate: OneOf_Predicate? {
    get {return _storage._predicate}
    set {_uniqueStorage()._predicate = newValue}
  }

  public var match: Exocore_Index_MatchPredicate {
    get {
      if case .match(let v)? = _storage._predicate {return v}
      return Exocore_Index_MatchPredicate()
    }
    set {_uniqueStorage()._predicate = .match(newValue)}
  }

  public var trait: Exocore_Index_TraitPredicate {
    get {
      if case .trait(let v)? = _storage._predicate {return v}
      return Exocore_Index_TraitPredicate()
    }
    set {_uniqueStorage()._predicate = .trait(newValue)}
  }

  public var id: Exocore_Index_IdPredicate {
    get {
      if case .id(let v)? = _storage._predicate {return v}
      return Exocore_Index_IdPredicate()
    }
    set {_uniqueStorage()._predicate = .id(newValue)}
  }

  public var test: Exocore_Index_TestPredicate {
    get {
      if case .test(let v)? = _storage._predicate {return v}
      return Exocore_Index_TestPredicate()
    }
    set {_uniqueStorage()._predicate = .test(newValue)}
  }

  public var paging: Exocore_Index_Paging {
    get {return _storage._paging ?? Exocore_Index_Paging()}
    set {_uniqueStorage()._paging = newValue}
  }
  /// Returns true if `paging` has been explicitly set.
  public var hasPaging: Bool {return _storage._paging != nil}
  /// Clears the value of `paging`. Subsequent reads from it will return its default value.
  public mutating func clearPaging() {_uniqueStorage()._paging = nil}

  //// If true, only return summary
  public var summary: Bool {
    get {return _storage._summary}
    set {_uniqueStorage()._summary = newValue}
  }

  //// Optional watch token if this query is to be used for watching.
  public var watchToken: UInt64 {
    get {return _storage._watchToken}
    set {_uniqueStorage()._watchToken = newValue}
  }

  //// If specified, if results from server matches this hash, only a summary will be returned.
  public var resultHash: UInt64 {
    get {return _storage._resultHash}
    set {_uniqueStorage()._resultHash = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Predicate: Equatable {
    case match(Exocore_Index_MatchPredicate)
    case trait(Exocore_Index_TraitPredicate)
    case id(Exocore_Index_IdPredicate)
    case test(Exocore_Index_TestPredicate)

  #if !swift(>=4.1)
    public static func ==(lhs: Exocore_Index_EntityQuery.OneOf_Predicate, rhs: Exocore_Index_EntityQuery.OneOf_Predicate) -> Bool {
      switch (lhs, rhs) {
      case (.match(let l), .match(let r)): return l == r
      case (.trait(let l), .trait(let r)): return l == r
      case (.id(let l), .id(let r)): return l == r
      case (.test(let l), .test(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Exocore_Index_MatchPredicate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var query: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Exocore_Index_IdPredicate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Exocore_Index_TestPredicate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var success: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Exocore_Index_TraitPredicate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var traitName: String {
    get {return _storage._traitName}
    set {_uniqueStorage()._traitName = newValue}
  }

  public var query: Exocore_Index_TraitQuery {
    get {return _storage._query ?? Exocore_Index_TraitQuery()}
    set {_uniqueStorage()._query = newValue}
  }
  /// Returns true if `query` has been explicitly set.
  public var hasQuery: Bool {return _storage._query != nil}
  /// Clears the value of `query`. Subsequent reads from it will return its default value.
  public mutating func clearQuery() {_uniqueStorage()._query = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Exocore_Index_TraitQuery {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Exocore_Index_Paging {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  //// Returns results after token.
  public var afterToken: String = String()

  //// Returns results before token.
  public var beforeToken: String = String()

  //// Desired results count. Default if 0.
  public var count: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Exocore_Index_EntityResults {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var entities: [Exocore_Index_EntityResult] {
    get {return _storage._entities}
    set {_uniqueStorage()._entities = newValue}
  }

  public var summary: Bool {
    get {return _storage._summary}
    set {_uniqueStorage()._summary = newValue}
  }

  public var estimatedCount: UInt32 {
    get {return _storage._estimatedCount}
    set {_uniqueStorage()._estimatedCount = newValue}
  }

  public var currentPage: Exocore_Index_Paging {
    get {return _storage._currentPage ?? Exocore_Index_Paging()}
    set {_uniqueStorage()._currentPage = newValue}
  }
  /// Returns true if `currentPage` has been explicitly set.
  public var hasCurrentPage: Bool {return _storage._currentPage != nil}
  /// Clears the value of `currentPage`. Subsequent reads from it will return its default value.
  public mutating func clearCurrentPage() {_uniqueStorage()._currentPage = nil}

  public var nextPage: Exocore_Index_Paging {
    get {return _storage._nextPage ?? Exocore_Index_Paging()}
    set {_uniqueStorage()._nextPage = newValue}
  }
  /// Returns true if `nextPage` has been explicitly set.
  public var hasNextPage: Bool {return _storage._nextPage != nil}
  /// Clears the value of `nextPage`. Subsequent reads from it will return its default value.
  public mutating func clearNextPage() {_uniqueStorage()._nextPage = nil}

  public var hash: UInt64 {
    get {return _storage._hash}
    set {_uniqueStorage()._hash = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Exocore_Index_EntityResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var entity: Exocore_Index_Entity {
    get {return _storage._entity ?? Exocore_Index_Entity()}
    set {_uniqueStorage()._entity = newValue}
  }
  /// Returns true if `entity` has been explicitly set.
  public var hasEntity: Bool {return _storage._entity != nil}
  /// Clears the value of `entity`. Subsequent reads from it will return its default value.
  public mutating func clearEntity() {_uniqueStorage()._entity = nil}

  public var source: Exocore_Index_EntityResultSource {
    get {return _storage._source}
    set {_uniqueStorage()._source = newValue}
  }

  public var sortToken: String {
    get {return _storage._sortToken}
    set {_uniqueStorage()._sortToken = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "exocore.index"

extension Exocore_Index_EntityResultSource: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "PENDING"),
    2: .same(proto: "CHAIN"),
  ]
}

extension Exocore_Index_EntityQuery: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EntityQuery"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "match"),
    2: .same(proto: "trait"),
    3: .same(proto: "id"),
    99: .same(proto: "test"),
    5: .same(proto: "paging"),
    6: .same(proto: "summary"),
    7: .standard(proto: "watch_token"),
    8: .standard(proto: "result_hash"),
  ]

  fileprivate class _StorageClass {
    var _predicate: Exocore_Index_EntityQuery.OneOf_Predicate?
    var _paging: Exocore_Index_Paging? = nil
    var _summary: Bool = false
    var _watchToken: UInt64 = 0
    var _resultHash: UInt64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _predicate = source._predicate
      _paging = source._paging
      _summary = source._summary
      _watchToken = source._watchToken
      _resultHash = source._resultHash
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1:
          var v: Exocore_Index_MatchPredicate?
          if let current = _storage._predicate {
            try decoder.handleConflictingOneOf()
            if case .match(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._predicate = .match(v)}
        case 2:
          var v: Exocore_Index_TraitPredicate?
          if let current = _storage._predicate {
            try decoder.handleConflictingOneOf()
            if case .trait(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._predicate = .trait(v)}
        case 3:
          var v: Exocore_Index_IdPredicate?
          if let current = _storage._predicate {
            try decoder.handleConflictingOneOf()
            if case .id(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._predicate = .id(v)}
        case 5: try decoder.decodeSingularMessageField(value: &_storage._paging)
        case 6: try decoder.decodeSingularBoolField(value: &_storage._summary)
        case 7: try decoder.decodeSingularUInt64Field(value: &_storage._watchToken)
        case 8: try decoder.decodeSingularUInt64Field(value: &_storage._resultHash)
        case 99:
          var v: Exocore_Index_TestPredicate?
          if let current = _storage._predicate {
            try decoder.handleConflictingOneOf()
            if case .test(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._predicate = .test(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      switch _storage._predicate {
      case .match(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      case .trait(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      case .id(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case nil: break
      default: break
      }
      if let v = _storage._paging {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if _storage._summary != false {
        try visitor.visitSingularBoolField(value: _storage._summary, fieldNumber: 6)
      }
      if _storage._watchToken != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._watchToken, fieldNumber: 7)
      }
      if _storage._resultHash != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._resultHash, fieldNumber: 8)
      }
      if case .test(let v)? = _storage._predicate {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 99)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_EntityQuery, rhs: Exocore_Index_EntityQuery) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._predicate != rhs_storage._predicate {return false}
        if _storage._paging != rhs_storage._paging {return false}
        if _storage._summary != rhs_storage._summary {return false}
        if _storage._watchToken != rhs_storage._watchToken {return false}
        if _storage._resultHash != rhs_storage._resultHash {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_MatchPredicate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MatchPredicate"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "query"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.query)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.query.isEmpty {
      try visitor.visitSingularStringField(value: self.query, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_MatchPredicate, rhs: Exocore_Index_MatchPredicate) -> Bool {
    if lhs.query != rhs.query {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_IdPredicate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".IdPredicate"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_IdPredicate, rhs: Exocore_Index_IdPredicate) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_TestPredicate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TestPredicate"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "success"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.success)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.success != false {
      try visitor.visitSingularBoolField(value: self.success, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_TestPredicate, rhs: Exocore_Index_TestPredicate) -> Bool {
    if lhs.success != rhs.success {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_TraitPredicate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TraitPredicate"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "trait_name"),
    2: .same(proto: "query"),
  ]

  fileprivate class _StorageClass {
    var _traitName: String = String()
    var _query: Exocore_Index_TraitQuery? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _traitName = source._traitName
      _query = source._query
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._traitName)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._query)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._traitName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._traitName, fieldNumber: 1)
      }
      if let v = _storage._query {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_TraitPredicate, rhs: Exocore_Index_TraitPredicate) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._traitName != rhs_storage._traitName {return false}
        if _storage._query != rhs_storage._query {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_TraitQuery: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TraitQuery"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_TraitQuery, rhs: Exocore_Index_TraitQuery) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_Paging: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Paging"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "after_token"),
    2: .standard(proto: "before_token"),
    3: .same(proto: "count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.afterToken)
      case 2: try decoder.decodeSingularStringField(value: &self.beforeToken)
      case 3: try decoder.decodeSingularUInt32Field(value: &self.count)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.afterToken.isEmpty {
      try visitor.visitSingularStringField(value: self.afterToken, fieldNumber: 1)
    }
    if !self.beforeToken.isEmpty {
      try visitor.visitSingularStringField(value: self.beforeToken, fieldNumber: 2)
    }
    if self.count != 0 {
      try visitor.visitSingularUInt32Field(value: self.count, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_Paging, rhs: Exocore_Index_Paging) -> Bool {
    if lhs.afterToken != rhs.afterToken {return false}
    if lhs.beforeToken != rhs.beforeToken {return false}
    if lhs.count != rhs.count {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_EntityResults: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EntityResults"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "entities"),
    2: .same(proto: "summary"),
    3: .standard(proto: "estimated_count"),
    4: .standard(proto: "current_page"),
    5: .standard(proto: "next_page"),
    6: .same(proto: "hash"),
  ]

  fileprivate class _StorageClass {
    var _entities: [Exocore_Index_EntityResult] = []
    var _summary: Bool = false
    var _estimatedCount: UInt32 = 0
    var _currentPage: Exocore_Index_Paging? = nil
    var _nextPage: Exocore_Index_Paging? = nil
    var _hash: UInt64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _entities = source._entities
      _summary = source._summary
      _estimatedCount = source._estimatedCount
      _currentPage = source._currentPage
      _nextPage = source._nextPage
      _hash = source._hash
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeRepeatedMessageField(value: &_storage._entities)
        case 2: try decoder.decodeSingularBoolField(value: &_storage._summary)
        case 3: try decoder.decodeSingularUInt32Field(value: &_storage._estimatedCount)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._currentPage)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._nextPage)
        case 6: try decoder.decodeSingularUInt64Field(value: &_storage._hash)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._entities.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._entities, fieldNumber: 1)
      }
      if _storage._summary != false {
        try visitor.visitSingularBoolField(value: _storage._summary, fieldNumber: 2)
      }
      if _storage._estimatedCount != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._estimatedCount, fieldNumber: 3)
      }
      if let v = _storage._currentPage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._nextPage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if _storage._hash != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._hash, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_EntityResults, rhs: Exocore_Index_EntityResults) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._entities != rhs_storage._entities {return false}
        if _storage._summary != rhs_storage._summary {return false}
        if _storage._estimatedCount != rhs_storage._estimatedCount {return false}
        if _storage._currentPage != rhs_storage._currentPage {return false}
        if _storage._nextPage != rhs_storage._nextPage {return false}
        if _storage._hash != rhs_storage._hash {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_EntityResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EntityResult"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "entity"),
    2: .same(proto: "source"),
    3: .standard(proto: "sort_token"),
  ]

  fileprivate class _StorageClass {
    var _entity: Exocore_Index_Entity? = nil
    var _source: Exocore_Index_EntityResultSource = .unknown
    var _sortToken: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _entity = source._entity
      _source = source._source
      _sortToken = source._sortToken
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._entity)
        case 2: try decoder.decodeSingularEnumField(value: &_storage._source)
        case 3: try decoder.decodeSingularStringField(value: &_storage._sortToken)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._entity {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._source != .unknown {
        try visitor.visitSingularEnumField(value: _storage._source, fieldNumber: 2)
      }
      if !_storage._sortToken.isEmpty {
        try visitor.visitSingularStringField(value: _storage._sortToken, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_EntityResult, rhs: Exocore_Index_EntityResult) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._entity != rhs_storage._entity {return false}
        if _storage._source != rhs_storage._source {return false}
        if _storage._sortToken != rhs_storage._sortToken {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}