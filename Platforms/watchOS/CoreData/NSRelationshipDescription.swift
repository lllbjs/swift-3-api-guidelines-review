
enum NSDeleteRule : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoActionDeleteRule
  case NullifyDeleteRule
  case CascadeDeleteRule
  case DenyDeleteRule
}
@available(watchOS 2.0, *)
class NSRelationshipDescription : NSPropertyDescription {
  unowned(unsafe) var destinationEntity: @sil_unmanaged NSEntityDescription?
  unowned(unsafe) var inverseRelationship: @sil_unmanaged NSRelationshipDescription?
  var maxCount: Int
  var minCount: Int
  var deleteRule: NSDeleteRule
  var toMany: Bool { get }
  @available(watchOS 2.0, *)
  @NSCopying var versionHash: NSData { get }
  @available(watchOS 2.0, *)
  var ordered: Bool
  init()
  init?(coder aDecoder: NSCoder)
}