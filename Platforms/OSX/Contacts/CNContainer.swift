
@available(OSX 10.11, *)
enum CNContainerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unassigned
  case Local
  case Exchange
  case CardDAV
}
@available(OSX 10.11, *)
class CNContainer : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var name: String { get }
  var type: CNContainerType { get }
  init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
let CNContainerIdentifierKey: String
@available(OSX 10.11, *)
let CNContainerNameKey: String
@available(OSX 10.11, *)
let CNContainerTypeKey: String