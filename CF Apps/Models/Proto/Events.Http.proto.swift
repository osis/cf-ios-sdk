// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file http.proto

import Foundation
import ProtocolBuffers


public extension Events{}

public func == (lhs: Events.HttpStartStop, rhs: Events.HttpStartStop) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasStartTimestamp == rhs.hasStartTimestamp) && (!lhs.hasStartTimestamp || lhs.startTimestamp == rhs.startTimestamp)
  fieldCheck = fieldCheck && (lhs.hasStopTimestamp == rhs.hasStopTimestamp) && (!lhs.hasStopTimestamp || lhs.stopTimestamp == rhs.stopTimestamp)
  fieldCheck = fieldCheck && (lhs.hasRequestId == rhs.hasRequestId) && (!lhs.hasRequestId || lhs.requestId == rhs.requestId)
  fieldCheck = fieldCheck && (lhs.hasPeerType == rhs.hasPeerType) && (!lhs.hasPeerType || lhs.peerType == rhs.peerType)
  fieldCheck = fieldCheck && (lhs.hasMethod == rhs.hasMethod) && (!lhs.hasMethod || lhs.method == rhs.method)
  fieldCheck = fieldCheck && (lhs.hasUri == rhs.hasUri) && (!lhs.hasUri || lhs.uri == rhs.uri)
  fieldCheck = fieldCheck && (lhs.hasRemoteAddress == rhs.hasRemoteAddress) && (!lhs.hasRemoteAddress || lhs.remoteAddress == rhs.remoteAddress)
  fieldCheck = fieldCheck && (lhs.hasUserAgent == rhs.hasUserAgent) && (!lhs.hasUserAgent || lhs.userAgent == rhs.userAgent)
  fieldCheck = fieldCheck && (lhs.hasStatusCode == rhs.hasStatusCode) && (!lhs.hasStatusCode || lhs.statusCode == rhs.statusCode)
  fieldCheck = fieldCheck && (lhs.hasContentLength == rhs.hasContentLength) && (!lhs.hasContentLength || lhs.contentLength == rhs.contentLength)
  fieldCheck = fieldCheck && (lhs.hasApplicationId == rhs.hasApplicationId) && (!lhs.hasApplicationId || lhs.applicationId == rhs.applicationId)
  fieldCheck = fieldCheck && (lhs.hasInstanceIndex == rhs.hasInstanceIndex) && (!lhs.hasInstanceIndex || lhs.instanceIndex == rhs.instanceIndex)
  fieldCheck = fieldCheck && (lhs.hasInstanceId == rhs.hasInstanceId) && (!lhs.hasInstanceId || lhs.instanceId == rhs.instanceId)
  fieldCheck = fieldCheck && (lhs.forwarded == rhs.forwarded)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Events {
  public struct HttpRoot {
    public static var sharedInstance : HttpRoot {
     struct Static {
         static let instance : HttpRoot = HttpRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Events.UuidRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }



  //Enum type declaration start 

  /// Type of peer handling request.
  public enum PeerType:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    /// Request is made by this process.
    case Client = 1

    /// Request is received by this process.
    case Server = 2

    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
            case .Client: return ".Client"
            case .Server: return ".Server"
        }
    }
  }

  //Enum type declaration end 



  //Enum type declaration start 

  /// HTTP method.
  public enum Method:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    case Get = 1
    case Post = 2
    case Put = 3
    case Delete = 4
    case Head = 5
    case Acl = 6
    case BaselineControl = 7
    case Bind = 8
    case Checkin = 9
    case Checkout = 10
    case Connect = 11
    case Copy = 12
    case Debug = 13
    case Label = 14
    case Link = 15
    case Lock = 16
    case Merge = 17
    case Mkactivity = 18
    case Mkcalendar = 19
    case Mkcol = 20
    case Mkredirectref = 21
    case Mkworkspace = 22
    case Move = 23
    case Options = 24
    case Orderpatch = 25
    case Patch = 26
    case Pri = 27
    case Propfind = 28
    case Proppatch = 29
    case Rebind = 30
    case Report = 31
    case Search = 32
    case Showmethod = 33
    case Spacejump = 34
    case Textsearch = 35
    case Trace = 36
    case Track = 37
    case Unbind = 38
    case Uncheckout = 39
    case Unlink = 40
    case Unlock = 41
    case Update = 42
    case Updateredirectref = 43
    case VersionControl = 44

    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
            case .Get: return ".Get"
            case .Post: return ".Post"
            case .Put: return ".Put"
            case .Delete: return ".Delete"
            case .Head: return ".Head"
            case .Acl: return ".Acl"
            case .BaselineControl: return ".BaselineControl"
            case .Bind: return ".Bind"
            case .Checkin: return ".Checkin"
            case .Checkout: return ".Checkout"
            case .Connect: return ".Connect"
            case .Copy: return ".Copy"
            case .Debug: return ".Debug"
            case .Label: return ".Label"
            case .Link: return ".Link"
            case .Lock: return ".Lock"
            case .Merge: return ".Merge"
            case .Mkactivity: return ".Mkactivity"
            case .Mkcalendar: return ".Mkcalendar"
            case .Mkcol: return ".Mkcol"
            case .Mkredirectref: return ".Mkredirectref"
            case .Mkworkspace: return ".Mkworkspace"
            case .Move: return ".Move"
            case .Options: return ".Options"
            case .Orderpatch: return ".Orderpatch"
            case .Patch: return ".Patch"
            case .Pri: return ".Pri"
            case .Propfind: return ".Propfind"
            case .Proppatch: return ".Proppatch"
            case .Rebind: return ".Rebind"
            case .Report: return ".Report"
            case .Search: return ".Search"
            case .Showmethod: return ".Showmethod"
            case .Spacejump: return ".Spacejump"
            case .Textsearch: return ".Textsearch"
            case .Trace: return ".Trace"
            case .Track: return ".Track"
            case .Unbind: return ".Unbind"
            case .Uncheckout: return ".Uncheckout"
            case .Unlink: return ".Unlink"
            case .Unlock: return ".Unlock"
            case .Update: return ".Update"
            case .Updateredirectref: return ".Updateredirectref"
            case .VersionControl: return ".VersionControl"
        }
    }
  }

  //Enum type declaration end 

  /// An HttpStartStop event represents the whole lifecycle of an HTTP request.
  final public class HttpStartStop : GeneratedMessage, GeneratedMessageProtocol {
    /// UNIX timestamp (in nanoseconds) when the request was sent (by a client) or received (by a server).
    public private(set) var startTimestamp:Int64 = Int64(0)

    public private(set) var hasStartTimestamp:Bool = false
    /// UNIX timestamp (in nanoseconds) when the request was received.
    public private(set) var stopTimestamp:Int64 = Int64(0)

    public private(set) var hasStopTimestamp:Bool = false
    public private(set) var requestId:Events.Uuid!
    public private(set) var hasRequestId:Bool = false
    public private(set) var peerType:Events.PeerType = Events.PeerType.Client
    public private(set) var hasPeerType:Bool = false
    public private(set) var method:Events.Method = Events.Method.Get
    public private(set) var hasMethod:Bool = false
    /// Destination of the request.
    public private(set) var uri:String = ""

    public private(set) var hasUri:Bool = false
    /// Remote address of the request. (For a server, this should be the origin of the request.)
    public private(set) var remoteAddress:String = ""

    public private(set) var hasRemoteAddress:Bool = false
    /// Contents of the UserAgent header on the request.
    public private(set) var userAgent:String = ""

    public private(set) var hasUserAgent:Bool = false
    /// Status code returned with the response to the request.
    public private(set) var statusCode:Int32 = Int32(0)

    public private(set) var hasStatusCode:Bool = false
    /// Length of response (bytes).
    public private(set) var contentLength:Int64 = Int64(0)

    public private(set) var hasContentLength:Bool = false
    public private(set) var applicationId:Events.Uuid!
    public private(set) var hasApplicationId:Bool = false
    /// Index of the application instance.
    public private(set) var instanceIndex:Int32 = Int32(0)

    public private(set) var hasInstanceIndex:Bool = false
    /// ID of the application instance.
    public private(set) var instanceId:String = ""

    public private(set) var hasInstanceId:Bool = false
    /// This contains http forwarded-for [x-forwarded-for] header from the request.
    public private(set) var forwarded:Array<String> = Array<String>()
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
      if !hasStartTimestamp {
        return false
      }
      if !hasStopTimestamp {
        return false
      }
      if !hasRequestId {
        return false
      }
      if !hasPeerType {
        return false
      }
      if !hasMethod {
        return false
      }
      if !hasUri {
        return false
      }
      if !hasRemoteAddress {
        return false
      }
      if !hasUserAgent {
        return false
      }
      if !hasStatusCode {
        return false
      }
      if !hasContentLength {
        return false
      }
      if !requestId.isInitialized() {
        return false
      }
      if hasApplicationId {
       if !applicationId.isInitialized() {
         return false
       }
      }
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasStartTimestamp {
        try output.writeInt64(1, value:startTimestamp)
      }
      if hasStopTimestamp {
        try output.writeInt64(2, value:stopTimestamp)
      }
      if hasRequestId {
        try output.writeMessage(3, value:requestId)
      }
      if hasPeerType {
        try output.writeEnum(4, value:peerType.rawValue)
      }
      if hasMethod {
        try output.writeEnum(5, value:method.rawValue)
      }
      if hasUri {
        try output.writeString(6, value:uri)
      }
      if hasRemoteAddress {
        try output.writeString(7, value:remoteAddress)
      }
      if hasUserAgent {
        try output.writeString(8, value:userAgent)
      }
      if hasStatusCode {
        try output.writeInt32(9, value:statusCode)
      }
      if hasContentLength {
        try output.writeInt64(10, value:contentLength)
      }
      if hasApplicationId {
        try output.writeMessage(12, value:applicationId)
      }
      if hasInstanceIndex {
        try output.writeInt32(13, value:instanceIndex)
      }
      if hasInstanceId {
        try output.writeString(14, value:instanceId)
      }
      if !forwarded.isEmpty {
        for oneValueforwarded in forwarded {
          try output.writeString(15, value:oneValueforwarded)
        }
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasStartTimestamp {
        serialize_size += startTimestamp.computeInt64Size(1)
      }
      if hasStopTimestamp {
        serialize_size += stopTimestamp.computeInt64Size(2)
      }
      if hasRequestId {
          if let varSizerequestId = requestId?.computeMessageSize(3) {
              serialize_size += varSizerequestId
          }
      }
      if (hasPeerType) {
        serialize_size += peerType.rawValue.computeEnumSize(4)
      }
      if (hasMethod) {
        serialize_size += method.rawValue.computeEnumSize(5)
      }
      if hasUri {
        serialize_size += uri.computeStringSize(6)
      }
      if hasRemoteAddress {
        serialize_size += remoteAddress.computeStringSize(7)
      }
      if hasUserAgent {
        serialize_size += userAgent.computeStringSize(8)
      }
      if hasStatusCode {
        serialize_size += statusCode.computeInt32Size(9)
      }
      if hasContentLength {
        serialize_size += contentLength.computeInt64Size(10)
      }
      if hasApplicationId {
          if let varSizeapplicationId = applicationId?.computeMessageSize(12) {
              serialize_size += varSizeapplicationId
          }
      }
      if hasInstanceIndex {
        serialize_size += instanceIndex.computeInt32Size(13)
      }
      if hasInstanceId {
        serialize_size += instanceId.computeStringSize(14)
      }
      var dataSizeForwarded:Int32 = 0
      for oneValueforwarded in forwarded {
          dataSizeForwarded += oneValueforwarded.computeStringSizeNoTag()
      }
      serialize_size += dataSizeForwarded
      serialize_size += 1 * Int32(forwarded.count)
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Events.HttpStartStop> {
      var mergedArray = Array<Events.HttpStartStop>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Events.HttpStartStop? {
      return try Events.HttpStartStop.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Events.HttpStartStop {
      return try Events.HttpStartStop.Builder().mergeFromData(data, extensionRegistry:Events.HttpRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Events.HttpStartStop {
      return try Events.HttpStartStop.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Events.HttpStartStop {
      return try Events.HttpStartStop.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Events.HttpStartStop {
      return try Events.HttpStartStop.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Events.HttpStartStop {
      return try Events.HttpStartStop.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Events.HttpStartStop {
      return try Events.HttpStartStop.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Events.HttpStartStop.Builder {
      return Events.HttpStartStop.classBuilder() as! Events.HttpStartStop.Builder
    }
    public func getBuilder() -> Events.HttpStartStop.Builder {
      return classBuilder() as! Events.HttpStartStop.Builder
    }
    public override class func classBuilder() -> MessageBuilder {
      return Events.HttpStartStop.Builder()
    }
    public override func classBuilder() -> MessageBuilder {
      return Events.HttpStartStop.Builder()
    }
    public func toBuilder() throws -> Events.HttpStartStop.Builder {
      return try Events.HttpStartStop.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Events.HttpStartStop) throws -> Events.HttpStartStop.Builder {
      return try Events.HttpStartStop.Builder().mergeFrom(prototype)
    }
    override public func getDescription(indent:String) throws -> String {
      var output:String = ""
      if hasStartTimestamp {
        output += "\(indent) startTimestamp: \(startTimestamp) \n"
      }
      if hasStopTimestamp {
        output += "\(indent) stopTimestamp: \(stopTimestamp) \n"
      }
      if hasRequestId {
        output += "\(indent) requestId {\n"
        if let outDescRequestId = requestId {
          output += try outDescRequestId.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      if (hasPeerType) {
        output += "\(indent) peerType: \(peerType.description)\n"
      }
      if (hasMethod) {
        output += "\(indent) method: \(method.description)\n"
      }
      if hasUri {
        output += "\(indent) uri: \(uri) \n"
      }
      if hasRemoteAddress {
        output += "\(indent) remoteAddress: \(remoteAddress) \n"
      }
      if hasUserAgent {
        output += "\(indent) userAgent: \(userAgent) \n"
      }
      if hasStatusCode {
        output += "\(indent) statusCode: \(statusCode) \n"
      }
      if hasContentLength {
        output += "\(indent) contentLength: \(contentLength) \n"
      }
      if hasApplicationId {
        output += "\(indent) applicationId {\n"
        if let outDescApplicationId = applicationId {
          output += try outDescApplicationId.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      if hasInstanceIndex {
        output += "\(indent) instanceIndex: \(instanceIndex) \n"
      }
      if hasInstanceId {
        output += "\(indent) instanceId: \(instanceId) \n"
      }
      var forwardedElementIndex:Int = 0
      for oneValueforwarded in forwarded  {
          output += "\(indent) forwarded[\(forwardedElementIndex)]: \(oneValueforwarded)\n"
          forwardedElementIndex += 1
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasStartTimestamp {
               hashCode = (hashCode &* 31) &+ startTimestamp.hashValue
            }
            if hasStopTimestamp {
               hashCode = (hashCode &* 31) &+ stopTimestamp.hashValue
            }
            if hasRequestId {
                if let hashValuerequestId = requestId?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuerequestId
                }
            }
            if hasPeerType {
               hashCode = (hashCode &* 31) &+ Int(peerType.rawValue)
            }
            if hasMethod {
               hashCode = (hashCode &* 31) &+ Int(method.rawValue)
            }
            if hasUri {
               hashCode = (hashCode &* 31) &+ uri.hashValue
            }
            if hasRemoteAddress {
               hashCode = (hashCode &* 31) &+ remoteAddress.hashValue
            }
            if hasUserAgent {
               hashCode = (hashCode &* 31) &+ userAgent.hashValue
            }
            if hasStatusCode {
               hashCode = (hashCode &* 31) &+ statusCode.hashValue
            }
            if hasContentLength {
               hashCode = (hashCode &* 31) &+ contentLength.hashValue
            }
            if hasApplicationId {
                if let hashValueapplicationId = applicationId?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueapplicationId
                }
            }
            if hasInstanceIndex {
               hashCode = (hashCode &* 31) &+ instanceIndex.hashValue
            }
            if hasInstanceId {
               hashCode = (hashCode &* 31) &+ instanceId.hashValue
            }
            for oneValueforwarded in forwarded {
                hashCode = (hashCode &* 31) &+ oneValueforwarded.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Events.HttpStartStop"
    }
    override public func className() -> String {
        return "Events.HttpStartStop"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Events.HttpStartStop.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Events.HttpStartStop = Events.HttpStartStop()
      public func getMessage() -> Events.HttpStartStop {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasStartTimestamp:Bool {
           get {
                return builderResult.hasStartTimestamp
           }
      }
      public var startTimestamp:Int64 {
           get {
                return builderResult.startTimestamp
           }
           set (value) {
               builderResult.hasStartTimestamp = true
               builderResult.startTimestamp = value
           }
      }
      public func setStartTimestamp(value:Int64) -> Events.HttpStartStop.Builder {
        self.startTimestamp = value
        return self
      }
      public func clearStartTimestamp() -> Events.HttpStartStop.Builder{
           builderResult.hasStartTimestamp = false
           builderResult.startTimestamp = Int64(0)
           return self
      }
      public var hasStopTimestamp:Bool {
           get {
                return builderResult.hasStopTimestamp
           }
      }
      public var stopTimestamp:Int64 {
           get {
                return builderResult.stopTimestamp
           }
           set (value) {
               builderResult.hasStopTimestamp = true
               builderResult.stopTimestamp = value
           }
      }
      public func setStopTimestamp(value:Int64) -> Events.HttpStartStop.Builder {
        self.stopTimestamp = value
        return self
      }
      public func clearStopTimestamp() -> Events.HttpStartStop.Builder{
           builderResult.hasStopTimestamp = false
           builderResult.stopTimestamp = Int64(0)
           return self
      }
      public var hasRequestId:Bool {
           get {
               return builderResult.hasRequestId
           }
      }
      public var requestId:Events.Uuid! {
           get {
               if requestIdBuilder_ != nil {
                  builderResult.requestId = requestIdBuilder_.getMessage()
               }
               return builderResult.requestId
           }
           set (value) {
               builderResult.hasRequestId = true
               builderResult.requestId = value
           }
      }
      private var requestIdBuilder_:Events.Uuid.Builder! {
           didSet {
              builderResult.hasRequestId = true
           }
      }
      public func getRequestIdBuilder() -> Events.Uuid.Builder {
        if requestIdBuilder_ == nil {
           requestIdBuilder_ = Events.Uuid.Builder()
           builderResult.requestId = requestIdBuilder_.getMessage()
           if requestId != nil {
              try! requestIdBuilder_.mergeFrom(requestId)
           }
        }
        return requestIdBuilder_
      }
      public func setRequestId(value:Events.Uuid!) -> Events.HttpStartStop.Builder {
        self.requestId = value
        return self
      }
      public func mergeRequestId(value:Events.Uuid) throws -> Events.HttpStartStop.Builder {
        if builderResult.hasRequestId {
          builderResult.requestId = try Events.Uuid.builderWithPrototype(builderResult.requestId).mergeFrom(value).buildPartial()
        } else {
          builderResult.requestId = value
        }
        builderResult.hasRequestId = true
        return self
      }
      public func clearRequestId() -> Events.HttpStartStop.Builder {
        requestIdBuilder_ = nil
        builderResult.hasRequestId = false
        builderResult.requestId = nil
        return self
      }
        public var hasPeerType:Bool{
            get {
                return builderResult.hasPeerType
            }
        }
        public var peerType:Events.PeerType {
            get {
                return builderResult.peerType
            }
            set (value) {
                builderResult.hasPeerType = true
                builderResult.peerType = value
            }
        }
        public func setPeerType(value:Events.PeerType) -> Events.HttpStartStop.Builder {
          self.peerType = value
          return self
        }
        public func clearPeerType() -> Events.HttpStartStop.Builder {
           builderResult.hasPeerType = false
           builderResult.peerType = .Client
           return self
        }
        public var hasMethod:Bool{
            get {
                return builderResult.hasMethod
            }
        }
        public var method:Events.Method {
            get {
                return builderResult.method
            }
            set (value) {
                builderResult.hasMethod = true
                builderResult.method = value
            }
        }
        public func setMethod(value:Events.Method) -> Events.HttpStartStop.Builder {
          self.method = value
          return self
        }
        public func clearMethod() -> Events.HttpStartStop.Builder {
           builderResult.hasMethod = false
           builderResult.method = .Get
           return self
        }
      public var hasUri:Bool {
           get {
                return builderResult.hasUri
           }
      }
      public var uri:String {
           get {
                return builderResult.uri
           }
           set (value) {
               builderResult.hasUri = true
               builderResult.uri = value
           }
      }
      public func setUri(value:String) -> Events.HttpStartStop.Builder {
        self.uri = value
        return self
      }
      public func clearUri() -> Events.HttpStartStop.Builder{
           builderResult.hasUri = false
           builderResult.uri = ""
           return self
      }
      public var hasRemoteAddress:Bool {
           get {
                return builderResult.hasRemoteAddress
           }
      }
      public var remoteAddress:String {
           get {
                return builderResult.remoteAddress
           }
           set (value) {
               builderResult.hasRemoteAddress = true
               builderResult.remoteAddress = value
           }
      }
      public func setRemoteAddress(value:String) -> Events.HttpStartStop.Builder {
        self.remoteAddress = value
        return self
      }
      public func clearRemoteAddress() -> Events.HttpStartStop.Builder{
           builderResult.hasRemoteAddress = false
           builderResult.remoteAddress = ""
           return self
      }
      public var hasUserAgent:Bool {
           get {
                return builderResult.hasUserAgent
           }
      }
      public var userAgent:String {
           get {
                return builderResult.userAgent
           }
           set (value) {
               builderResult.hasUserAgent = true
               builderResult.userAgent = value
           }
      }
      public func setUserAgent(value:String) -> Events.HttpStartStop.Builder {
        self.userAgent = value
        return self
      }
      public func clearUserAgent() -> Events.HttpStartStop.Builder{
           builderResult.hasUserAgent = false
           builderResult.userAgent = ""
           return self
      }
      public var hasStatusCode:Bool {
           get {
                return builderResult.hasStatusCode
           }
      }
      public var statusCode:Int32 {
           get {
                return builderResult.statusCode
           }
           set (value) {
               builderResult.hasStatusCode = true
               builderResult.statusCode = value
           }
      }
      public func setStatusCode(value:Int32) -> Events.HttpStartStop.Builder {
        self.statusCode = value
        return self
      }
      public func clearStatusCode() -> Events.HttpStartStop.Builder{
           builderResult.hasStatusCode = false
           builderResult.statusCode = Int32(0)
           return self
      }
      public var hasContentLength:Bool {
           get {
                return builderResult.hasContentLength
           }
      }
      public var contentLength:Int64 {
           get {
                return builderResult.contentLength
           }
           set (value) {
               builderResult.hasContentLength = true
               builderResult.contentLength = value
           }
      }
      public func setContentLength(value:Int64) -> Events.HttpStartStop.Builder {
        self.contentLength = value
        return self
      }
      public func clearContentLength() -> Events.HttpStartStop.Builder{
           builderResult.hasContentLength = false
           builderResult.contentLength = Int64(0)
           return self
      }
      public var hasApplicationId:Bool {
           get {
               return builderResult.hasApplicationId
           }
      }
      public var applicationId:Events.Uuid! {
           get {
               if applicationIdBuilder_ != nil {
                  builderResult.applicationId = applicationIdBuilder_.getMessage()
               }
               return builderResult.applicationId
           }
           set (value) {
               builderResult.hasApplicationId = true
               builderResult.applicationId = value
           }
      }
      private var applicationIdBuilder_:Events.Uuid.Builder! {
           didSet {
              builderResult.hasApplicationId = true
           }
      }
      public func getApplicationIdBuilder() -> Events.Uuid.Builder {
        if applicationIdBuilder_ == nil {
           applicationIdBuilder_ = Events.Uuid.Builder()
           builderResult.applicationId = applicationIdBuilder_.getMessage()
           if applicationId != nil {
              try! applicationIdBuilder_.mergeFrom(applicationId)
           }
        }
        return applicationIdBuilder_
      }
      public func setApplicationId(value:Events.Uuid!) -> Events.HttpStartStop.Builder {
        self.applicationId = value
        return self
      }
      public func mergeApplicationId(value:Events.Uuid) throws -> Events.HttpStartStop.Builder {
        if builderResult.hasApplicationId {
          builderResult.applicationId = try Events.Uuid.builderWithPrototype(builderResult.applicationId).mergeFrom(value).buildPartial()
        } else {
          builderResult.applicationId = value
        }
        builderResult.hasApplicationId = true
        return self
      }
      public func clearApplicationId() -> Events.HttpStartStop.Builder {
        applicationIdBuilder_ = nil
        builderResult.hasApplicationId = false
        builderResult.applicationId = nil
        return self
      }
      public var hasInstanceIndex:Bool {
           get {
                return builderResult.hasInstanceIndex
           }
      }
      public var instanceIndex:Int32 {
           get {
                return builderResult.instanceIndex
           }
           set (value) {
               builderResult.hasInstanceIndex = true
               builderResult.instanceIndex = value
           }
      }
      public func setInstanceIndex(value:Int32) -> Events.HttpStartStop.Builder {
        self.instanceIndex = value
        return self
      }
      public func clearInstanceIndex() -> Events.HttpStartStop.Builder{
           builderResult.hasInstanceIndex = false
           builderResult.instanceIndex = Int32(0)
           return self
      }
      public var hasInstanceId:Bool {
           get {
                return builderResult.hasInstanceId
           }
      }
      public var instanceId:String {
           get {
                return builderResult.instanceId
           }
           set (value) {
               builderResult.hasInstanceId = true
               builderResult.instanceId = value
           }
      }
      public func setInstanceId(value:String) -> Events.HttpStartStop.Builder {
        self.instanceId = value
        return self
      }
      public func clearInstanceId() -> Events.HttpStartStop.Builder{
           builderResult.hasInstanceId = false
           builderResult.instanceId = ""
           return self
      }
      public var forwarded:Array<String> {
           get {
               return builderResult.forwarded
           }
           set (array) {
               builderResult.forwarded = array
           }
      }
      public func setForwarded(value:Array<String>) -> Events.HttpStartStop.Builder {
        self.forwarded = value
        return self
      }
      public func clearForwarded() -> Events.HttpStartStop.Builder {
         builderResult.forwarded.removeAll(keepCapacity: false)
         return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      public override func clear() -> Events.HttpStartStop.Builder {
        builderResult = Events.HttpStartStop()
        return self
      }
      public override func clone() throws -> Events.HttpStartStop.Builder {
        return try Events.HttpStartStop.builderWithPrototype(builderResult)
      }
      public override func build() throws -> Events.HttpStartStop {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Events.HttpStartStop {
        let returnMe:Events.HttpStartStop = builderResult
        return returnMe
      }
      public func mergeFrom(other:Events.HttpStartStop) throws -> Events.HttpStartStop.Builder {
        if other == Events.HttpStartStop() {
         return self
        }
        if other.hasStartTimestamp {
             startTimestamp = other.startTimestamp
        }
        if other.hasStopTimestamp {
             stopTimestamp = other.stopTimestamp
        }
        if (other.hasRequestId) {
            try mergeRequestId(other.requestId)
        }
        if other.hasPeerType {
             peerType = other.peerType
        }
        if other.hasMethod {
             method = other.method
        }
        if other.hasUri {
             uri = other.uri
        }
        if other.hasRemoteAddress {
             remoteAddress = other.remoteAddress
        }
        if other.hasUserAgent {
             userAgent = other.userAgent
        }
        if other.hasStatusCode {
             statusCode = other.statusCode
        }
        if other.hasContentLength {
             contentLength = other.contentLength
        }
        if (other.hasApplicationId) {
            try mergeApplicationId(other.applicationId)
        }
        if other.hasInstanceIndex {
             instanceIndex = other.instanceIndex
        }
        if other.hasInstanceId {
             instanceId = other.instanceId
        }
        if !other.forwarded.isEmpty {
            builderResult.forwarded += other.forwarded
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      public override func mergeFromCodedInputStream(input:CodedInputStream) throws -> Events.HttpStartStop.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      public override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Events.HttpStartStop.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8 :
            startTimestamp = try input.readInt64()

          case 16 :
            stopTimestamp = try input.readInt64()

          case 26 :
            let subBuilder:Events.Uuid.Builder = Events.Uuid.Builder()
            if hasRequestId {
              try subBuilder.mergeFrom(requestId)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            requestId = subBuilder.buildPartial()

          case 32 :
            let valueIntpeerType = try input.readEnum()
            if let enumspeerType = Events.PeerType(rawValue:valueIntpeerType){
                 peerType = enumspeerType
            } else {
                 try unknownFieldsBuilder.mergeVarintField(4, value:Int64(valueIntpeerType))
            }

          case 40 :
            let valueIntmethod = try input.readEnum()
            if let enumsmethod = Events.Method(rawValue:valueIntmethod){
                 method = enumsmethod
            } else {
                 try unknownFieldsBuilder.mergeVarintField(5, value:Int64(valueIntmethod))
            }

          case 50 :
            uri = try input.readString()

          case 58 :
            remoteAddress = try input.readString()

          case 66 :
            userAgent = try input.readString()

          case 72 :
            statusCode = try input.readInt32()

          case 80 :
            contentLength = try input.readInt64()

          case 98 :
            let subBuilder:Events.Uuid.Builder = Events.Uuid.Builder()
            if hasApplicationId {
              try subBuilder.mergeFrom(applicationId)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            applicationId = subBuilder.buildPartial()

          case 104 :
            instanceIndex = try input.readInt32()

          case 114 :
            instanceId = try input.readString()

          case 122 :
            forwarded += [try input.readString()]

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)