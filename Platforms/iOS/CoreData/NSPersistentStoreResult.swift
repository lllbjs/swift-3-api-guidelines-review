
@available(iOS 8.0, *)
enum NSBatchUpdateRequestResultType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case statusOnlyResultType
  case updatedObjectIDsResultType
  case updatedObjectsCountResultType
}
@available(iOS 9.0, *)
enum NSBatchDeleteRequestResultType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case resultTypeStatusOnly
  case resultTypeObjectIDs
  case resultTypeCount
}
@available(iOS 8.0, *)
class NSPersistentStoreResult : NSObject {
}
@available(iOS 8.0, *)
class NSPersistentStoreAsynchronousResult : NSPersistentStoreResult {
  var managedObjectContext: NSManagedObjectContext { get }
  var operationError: NSError? { get }
  var progress: NSProgress? { get }
  func cancel()
}
@available(iOS 8.0, *)
class NSAsynchronousFetchResult : NSPersistentStoreAsynchronousResult {
  var fetchRequest: NSAsynchronousFetchRequest { get }
  var finalResult: [AnyObject]? { get }
}
@available(iOS 8.0, *)
class NSBatchUpdateResult : NSPersistentStoreResult {
  var result: AnyObject? { get }
  var resultType: NSBatchUpdateRequestResultType { get }
}
@available(iOS 9.0, *)
class NSBatchDeleteResult : NSPersistentStoreResult {
  var result: AnyObject? { get }
  var resultType: NSBatchDeleteRequestResultType { get }
}
