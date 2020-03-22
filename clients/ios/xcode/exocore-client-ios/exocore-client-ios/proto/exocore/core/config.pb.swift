// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: exocore/core/config.proto
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

public struct Exocore_Core_LocalNodeConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var keypair: String = String()

  public var publicKey: String = String()

  public var cells: [Exocore_Core_CellConfig] = []

  public var listenAddresses: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Exocore_Core_NodeConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var publicKey: String = String()

  public var addresses: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Exocore_Core_CellConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var publicKey: String = String()

  public var keypair: String = String()

  public var dataDirectory: String = String()

  public var nodes: [Exocore_Core_CellNodeConfig] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Exocore_Core_CellNodeConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var node: Exocore_Core_NodeConfig {
    get {return _storage._node ?? Exocore_Core_NodeConfig()}
    set {_uniqueStorage()._node = newValue}
  }
  /// Returns true if `node` has been explicitly set.
  public var hasNode: Bool {return _storage._node != nil}
  /// Clears the value of `node`. Subsequent reads from it will return its default value.
  public mutating func clearNode() {_uniqueStorage()._node = nil}

  public var roles: [Exocore_Core_CellNodeConfig.Role] {
    get {return _storage._roles}
    set {_uniqueStorage()._roles = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum Role: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case invalidRole // = 0
    case dataRole // = 1
    case indexStoreRole // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .invalidRole
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .invalidRole
      case 1: self = .dataRole
      case 2: self = .indexStoreRole
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .invalidRole: return 0
      case .dataRole: return 1
      case .indexStoreRole: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension Exocore_Core_CellNodeConfig.Role: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Exocore_Core_CellNodeConfig.Role] = [
    .invalidRole,
    .dataRole,
    .indexStoreRole,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "exocore.core"

extension Exocore_Core_LocalNodeConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LocalNodeConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "keypair"),
    2: .standard(proto: "public_key"),
    3: .same(proto: "cells"),
    4: .standard(proto: "listen_addresses"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.keypair)
      case 2: try decoder.decodeSingularStringField(value: &self.publicKey)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.cells)
      case 4: try decoder.decodeRepeatedStringField(value: &self.listenAddresses)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.keypair.isEmpty {
      try visitor.visitSingularStringField(value: self.keypair, fieldNumber: 1)
    }
    if !self.publicKey.isEmpty {
      try visitor.visitSingularStringField(value: self.publicKey, fieldNumber: 2)
    }
    if !self.cells.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.cells, fieldNumber: 3)
    }
    if !self.listenAddresses.isEmpty {
      try visitor.visitRepeatedStringField(value: self.listenAddresses, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Core_LocalNodeConfig, rhs: Exocore_Core_LocalNodeConfig) -> Bool {
    if lhs.keypair != rhs.keypair {return false}
    if lhs.publicKey != rhs.publicKey {return false}
    if lhs.cells != rhs.cells {return false}
    if lhs.listenAddresses != rhs.listenAddresses {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Core_NodeConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NodeConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "public_key"),
    2: .same(proto: "addresses"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.publicKey)
      case 2: try decoder.decodeRepeatedStringField(value: &self.addresses)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.publicKey.isEmpty {
      try visitor.visitSingularStringField(value: self.publicKey, fieldNumber: 1)
    }
    if !self.addresses.isEmpty {
      try visitor.visitRepeatedStringField(value: self.addresses, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Core_NodeConfig, rhs: Exocore_Core_NodeConfig) -> Bool {
    if lhs.publicKey != rhs.publicKey {return false}
    if lhs.addresses != rhs.addresses {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Core_CellConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CellConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "public_key"),
    2: .same(proto: "keypair"),
    3: .standard(proto: "data_directory"),
    4: .same(proto: "nodes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.publicKey)
      case 2: try decoder.decodeSingularStringField(value: &self.keypair)
      case 3: try decoder.decodeSingularStringField(value: &self.dataDirectory)
      case 4: try decoder.decodeRepeatedMessageField(value: &self.nodes)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.publicKey.isEmpty {
      try visitor.visitSingularStringField(value: self.publicKey, fieldNumber: 1)
    }
    if !self.keypair.isEmpty {
      try visitor.visitSingularStringField(value: self.keypair, fieldNumber: 2)
    }
    if !self.dataDirectory.isEmpty {
      try visitor.visitSingularStringField(value: self.dataDirectory, fieldNumber: 3)
    }
    if !self.nodes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.nodes, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Core_CellConfig, rhs: Exocore_Core_CellConfig) -> Bool {
    if lhs.publicKey != rhs.publicKey {return false}
    if lhs.keypair != rhs.keypair {return false}
    if lhs.dataDirectory != rhs.dataDirectory {return false}
    if lhs.nodes != rhs.nodes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Core_CellNodeConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CellNodeConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "node"),
    2: .same(proto: "roles"),
  ]

  fileprivate class _StorageClass {
    var _node: Exocore_Core_NodeConfig? = nil
    var _roles: [Exocore_Core_CellNodeConfig.Role] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _node = source._node
      _roles = source._roles
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._node)
        case 2: try decoder.decodeRepeatedEnumField(value: &_storage._roles)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._node {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._roles.isEmpty {
        try visitor.visitPackedEnumField(value: _storage._roles, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Exocore_Core_CellNodeConfig, rhs: Exocore_Core_CellNodeConfig) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._node != rhs_storage._node {return false}
        if _storage._roles != rhs_storage._roles {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Exocore_Core_CellNodeConfig.Role: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "INVALID_ROLE"),
    1: .same(proto: "DATA_ROLE"),
    2: .same(proto: "INDEX_STORE_ROLE"),
  ]
}