// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: exocore/index/mutation.proto
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

public struct Exocore_Index_EntityMutation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var entityID: String {
    get {return _storage._entityID}
    set {_uniqueStorage()._entityID = newValue}
  }

  public var mutation: OneOf_Mutation? {
    get {return _storage._mutation}
    set {_uniqueStorage()._mutation = newValue}
  }

  public var putTrait: Exocore_Index_PutTraitMutation {
    get {
      if case .putTrait(let v)? = _storage._mutation {return v}
      return Exocore_Index_PutTraitMutation()
    }
    set {_uniqueStorage()._mutation = .putTrait(newValue)}
  }

  public var deleteTrait: Exocore_Index_DeleteTraitMutation {
    get {
      if case .deleteTrait(let v)? = _storage._mutation {return v}
      return Exocore_Index_DeleteTraitMutation()
    }
    set {_uniqueStorage()._mutation = .deleteTrait(newValue)}
  }

  public var deleteEntity: Exocore_Index_DeleteEntityMutation {
    get {
      if case .deleteEntity(let v)? = _storage._mutation {return v}
      return Exocore_Index_DeleteEntityMutation()
    }
    set {_uniqueStorage()._mutation = .deleteEntity(newValue)}
  }

  public var updateTrait: Exocore_Index_UpdateTraitMutation {
    get {
      if case .updateTrait(let v)? = _storage._mutation {return v}
      return Exocore_Index_UpdateTraitMutation()
    }
    set {_uniqueStorage()._mutation = .updateTrait(newValue)}
  }

  public var compactTrait: Exocore_Index_CompactTraitMutation {
    get {
      if case .compactTrait(let v)? = _storage._mutation {return v}
      return Exocore_Index_CompactTraitMutation()
    }
    set {_uniqueStorage()._mutation = .compactTrait(newValue)}
  }

  public var test: Exocore_Index_TestMutation {
    get {
      if case .test(let v)? = _storage._mutation {return v}
      return Exocore_Index_TestMutation()
    }
    set {_uniqueStorage()._mutation = .test(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Mutation: Equatable {
    case putTrait(Exocore_Index_PutTraitMutation)
    case deleteTrait(Exocore_Index_DeleteTraitMutation)
    case deleteEntity(Exocore_Index_DeleteEntityMutation)
    case updateTrait(Exocore_Index_UpdateTraitMutation)
    case compactTrait(Exocore_Index_CompactTraitMutation)
    case test(Exocore_Index_TestMutation)

  #if !swift(>=4.1)
    public static func ==(lhs: Exocore_Index_EntityMutation.OneOf_Mutation, rhs: Exocore_Index_EntityMutation.OneOf_Mutation) -> Bool {
      switch (lhs, rhs) {
      case (.putTrait(let l), .putTrait(let r)): return l == r
      case (.deleteTrait(let l), .deleteTrait(let r)): return l == r
      case (.deleteEntity(let l), .deleteEntity(let r)): return l == r
      case (.updateTrait(let l), .updateTrait(let r)): return l == r
      case (.compactTrait(let l), .compactTrait(let r)): return l == r
      case (.test(let l), .test(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Exocore_Index_PutTraitMutation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var trait: Exocore_Index_Trait {
    get {return _storage._trait ?? Exocore_Index_Trait()}
    set {_uniqueStorage()._trait = newValue}
  }
  /// Returns true if `trait` has been explicitly set.
  public var hasTrait: Bool {return _storage._trait != nil}
  /// Clears the value of `trait`. Subsequent reads from it will return its default value.
  public mutating func clearTrait() {_uniqueStorage()._trait = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Exocore_Index_DeleteTraitMutation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var traitID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Exocore_Index_DeleteEntityMutation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Exocore_Index_UpdateTraitMutation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var traitID: String {
    get {return _storage._traitID}
    set {_uniqueStorage()._traitID = newValue}
  }

  public var trait: Exocore_Index_Trait {
    get {return _storage._trait ?? Exocore_Index_Trait()}
    set {_uniqueStorage()._trait = newValue}
  }
  /// Returns true if `trait` has been explicitly set.
  public var hasTrait: Bool {return _storage._trait != nil}
  /// Clears the value of `trait`. Subsequent reads from it will return its default value.
  public mutating func clearTrait() {_uniqueStorage()._trait = nil}

  public var fieldMask: SwiftProtobuf.Google_Protobuf_FieldMask {
    get {return _storage._fieldMask ?? SwiftProtobuf.Google_Protobuf_FieldMask()}
    set {_uniqueStorage()._fieldMask = newValue}
  }
  /// Returns true if `fieldMask` has been explicitly set.
  public var hasFieldMask: Bool {return _storage._fieldMask != nil}
  /// Clears the value of `fieldMask`. Subsequent reads from it will return its default value.
  public mutating func clearFieldMask() {_uniqueStorage()._fieldMask = nil}

  /// Updates is only valid if the last mutation operation on trait this given operation id.
  public var ifLastOperationID: UInt64 {
    get {return _storage._ifLastOperationID}
    set {_uniqueStorage()._ifLastOperationID = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Exocore_Index_CompactTraitMutation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// List of operations that are compacted by this compaction. The compaction will only succeed
  /// if there were no operations between these operations and the compaction's operation itself.
  public var compactedOperations: [Exocore_Index_CompactTraitMutation.Operation] {
    get {return _storage._compactedOperations}
    set {_uniqueStorage()._compactedOperations = newValue}
  }

  /// Trait with merged values from compacted operations
  public var trait: Exocore_Index_Trait {
    get {return _storage._trait ?? Exocore_Index_Trait()}
    set {_uniqueStorage()._trait = newValue}
  }
  /// Returns true if `trait` has been explicitly set.
  public var hasTrait: Bool {return _storage._trait != nil}
  /// Clears the value of `trait`. Subsequent reads from it will return its default value.
  public mutating func clearTrait() {_uniqueStorage()._trait = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct Operation {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var operationID: UInt64 = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Exocore_Index_TestMutation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var success: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Exocore_Index_MutationResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var operationID: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "exocore.index"

extension Exocore_Index_EntityMutation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EntityMutation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "entity_id"),
    2: .standard(proto: "put_trait"),
    3: .standard(proto: "delete_trait"),
    4: .standard(proto: "delete_entity"),
    5: .standard(proto: "update_trait"),
    6: .standard(proto: "compact_trait"),
    99: .same(proto: "test"),
  ]

  fileprivate class _StorageClass {
    var _entityID: String = String()
    var _mutation: Exocore_Index_EntityMutation.OneOf_Mutation?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _entityID = source._entityID
      _mutation = source._mutation
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._entityID)
        case 2:
          var v: Exocore_Index_PutTraitMutation?
          if let current = _storage._mutation {
            try decoder.handleConflictingOneOf()
            if case .putTrait(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._mutation = .putTrait(v)}
        case 3:
          var v: Exocore_Index_DeleteTraitMutation?
          if let current = _storage._mutation {
            try decoder.handleConflictingOneOf()
            if case .deleteTrait(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._mutation = .deleteTrait(v)}
        case 4:
          var v: Exocore_Index_DeleteEntityMutation?
          if let current = _storage._mutation {
            try decoder.handleConflictingOneOf()
            if case .deleteEntity(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._mutation = .deleteEntity(v)}
        case 5:
          var v: Exocore_Index_UpdateTraitMutation?
          if let current = _storage._mutation {
            try decoder.handleConflictingOneOf()
            if case .updateTrait(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._mutation = .updateTrait(v)}
        case 6:
          var v: Exocore_Index_CompactTraitMutation?
          if let current = _storage._mutation {
            try decoder.handleConflictingOneOf()
            if case .compactTrait(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._mutation = .compactTrait(v)}
        case 99:
          var v: Exocore_Index_TestMutation?
          if let current = _storage._mutation {
            try decoder.handleConflictingOneOf()
            if case .test(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._mutation = .test(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._entityID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._entityID, fieldNumber: 1)
      }
      switch _storage._mutation {
      case .putTrait(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      case .deleteTrait(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case .deleteEntity(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      case .updateTrait(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      case .compactTrait(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      case .test(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 99)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_EntityMutation, rhs: Exocore_Index_EntityMutation) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._entityID != rhs_storage._entityID {return false}
        if _storage._mutation != rhs_storage._mutation {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_PutTraitMutation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PutTraitMutation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "trait"),
  ]

  fileprivate class _StorageClass {
    var _trait: Exocore_Index_Trait? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _trait = source._trait
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._trait)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._trait {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_PutTraitMutation, rhs: Exocore_Index_PutTraitMutation) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._trait != rhs_storage._trait {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_DeleteTraitMutation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteTraitMutation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "trait_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.traitID)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.traitID.isEmpty {
      try visitor.visitSingularStringField(value: self.traitID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_DeleteTraitMutation, rhs: Exocore_Index_DeleteTraitMutation) -> Bool {
    if lhs.traitID != rhs.traitID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_DeleteEntityMutation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteEntityMutation"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_DeleteEntityMutation, rhs: Exocore_Index_DeleteEntityMutation) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_UpdateTraitMutation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateTraitMutation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "trait_id"),
    2: .same(proto: "trait"),
    3: .standard(proto: "field_mask"),
    4: .standard(proto: "if_last_operation_id"),
  ]

  fileprivate class _StorageClass {
    var _traitID: String = String()
    var _trait: Exocore_Index_Trait? = nil
    var _fieldMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
    var _ifLastOperationID: UInt64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _traitID = source._traitID
      _trait = source._trait
      _fieldMask = source._fieldMask
      _ifLastOperationID = source._ifLastOperationID
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._traitID)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._trait)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._fieldMask)
        case 4: try decoder.decodeSingularUInt64Field(value: &_storage._ifLastOperationID)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._traitID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._traitID, fieldNumber: 1)
      }
      if let v = _storage._trait {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._fieldMask {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if _storage._ifLastOperationID != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._ifLastOperationID, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_UpdateTraitMutation, rhs: Exocore_Index_UpdateTraitMutation) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._traitID != rhs_storage._traitID {return false}
        if _storage._trait != rhs_storage._trait {return false}
        if _storage._fieldMask != rhs_storage._fieldMask {return false}
        if _storage._ifLastOperationID != rhs_storage._ifLastOperationID {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_CompactTraitMutation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CompactTraitMutation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "compacted_operations"),
    2: .same(proto: "trait"),
  ]

  fileprivate class _StorageClass {
    var _compactedOperations: [Exocore_Index_CompactTraitMutation.Operation] = []
    var _trait: Exocore_Index_Trait? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _compactedOperations = source._compactedOperations
      _trait = source._trait
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
        case 1: try decoder.decodeRepeatedMessageField(value: &_storage._compactedOperations)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._trait)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._compactedOperations.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._compactedOperations, fieldNumber: 1)
      }
      if let v = _storage._trait {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_CompactTraitMutation, rhs: Exocore_Index_CompactTraitMutation) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._compactedOperations != rhs_storage._compactedOperations {return false}
        if _storage._trait != rhs_storage._trait {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_CompactTraitMutation.Operation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Exocore_Index_CompactTraitMutation.protoMessageName + ".Operation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "operation_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.operationID)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.operationID != 0 {
      try visitor.visitSingularUInt64Field(value: self.operationID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_CompactTraitMutation.Operation, rhs: Exocore_Index_CompactTraitMutation.Operation) -> Bool {
    if lhs.operationID != rhs.operationID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_TestMutation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TestMutation"
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

  public static func ==(lhs: Exocore_Index_TestMutation, rhs: Exocore_Index_TestMutation) -> Bool {
    if lhs.success != rhs.success {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Index_MutationResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MutationResult"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "operation_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.operationID)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.operationID != 0 {
      try visitor.visitSingularUInt64Field(value: self.operationID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Index_MutationResult, rhs: Exocore_Index_MutationResult) -> Bool {
    if lhs.operationID != rhs.operationID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
