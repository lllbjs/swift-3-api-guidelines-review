
struct NSDataReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataReadingMappedIfSafe: NSDataReadingOptions { get }
  static var DataReadingUncached: NSDataReadingOptions { get }
  @available(iOS 5.0, *)
  static var DataReadingMappedAlways: NSDataReadingOptions { get }
  static var DataReadingMapped: NSDataReadingOptions { get }
  static var MappedRead: NSDataReadingOptions { get }
  static var UncachedRead: NSDataReadingOptions { get }
}
struct NSDataWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DataWritingAtomic: NSDataWritingOptions { get }
  @available(iOS 6.0, *)
  static var DataWritingWithoutOverwriting: NSDataWritingOptions { get }
  @available(iOS 4.0, *)
  static var DataWritingFileProtectionNone: NSDataWritingOptions { get }
  @available(iOS 4.0, *)
  static var DataWritingFileProtectionComplete: NSDataWritingOptions { get }
  @available(iOS 5.0, *)
  static var DataWritingFileProtectionCompleteUnlessOpen: NSDataWritingOptions { get }
  @available(iOS 5.0, *)
  static var DataWritingFileProtectionCompleteUntilFirstUserAuthentication: NSDataWritingOptions { get }
  @available(iOS 4.0, *)
  static var DataWritingFileProtectionMask: NSDataWritingOptions { get }
  static var AtomicWrite: NSDataWritingOptions { get }
}
@available(iOS 4.0, *)
struct NSDataSearchOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Backwards: NSDataSearchOptions { get }
  static var Anchored: NSDataSearchOptions { get }
}
@available(iOS 7.0, *)
struct NSDataBase64EncodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Encoding64CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var Encoding76CharacterLineLength: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithCarriageReturn: NSDataBase64EncodingOptions { get }
  static var EncodingEndLineWithLineFeed: NSDataBase64EncodingOptions { get }
}
@available(iOS 7.0, *)
struct NSDataBase64DecodingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var IgnoreUnknownCharacters: NSDataBase64DecodingOptions { get }
}
class NSData : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  var bytes: UnsafePointer<Void> { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSData {
  var description: String { get }
  func getBytes(buffer: UnsafeMutablePointer<Void>, length: Int)
  func getBytes(buffer: UnsafeMutablePointer<Void>, range: NSRange)
  func isEqualToData(other: NSData) -> Bool
  func subdataWithRange(range: NSRange) -> NSData
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(url: NSURL, atomically: Bool) -> Bool
  func writeToFile(path: String, options writeOptionsMask: NSDataWritingOptions) throws
  func writeToURL(url: NSURL, options writeOptionsMask: NSDataWritingOptions) throws
  @available(iOS 4.0, *)
  func rangeOfData(dataToFind: NSData, options mask: NSDataSearchOptions, range searchRange: NSRange) -> NSRange
  @available(iOS 7.0, *)
  func enumerateByteRangesUsingBlock(block: (UnsafePointer<Void>, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSData {
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(iOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data: NSData)
}
extension NSData {
  @available(iOS 7.0, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  @available(iOS 7.0, *)
  func base64EncodedStringWithOptions(options: NSDataBase64EncodingOptions) -> String
  @available(iOS 7.0, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  @available(iOS 7.0, *)
  func base64EncodedDataWithOptions(options: NSDataBase64EncodingOptions) -> NSData
}
extension NSData {
  @available(iOS, introduced=2.0, deprecated=8.0, message="This method is unsafe because it could potentially cause buffer overruns. Use -getBytes:length: instead.")
  func getBytes(buffer: UnsafeMutablePointer<Void>)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use +dataWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  class func dataWithContentsOfMappedFile(path: String) -> AnyObject?
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
class NSMutableData : NSData {
  var mutableBytes: UnsafeMutablePointer<Void> { get }
  var length: Int
  init()
  init?(coder aDecoder: NSCoder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(iOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data: NSData)
  @available(iOS 7.0, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  @available(iOS 7.0, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
}
extension NSMutableData {
  func appendBytes(bytes: UnsafePointer<Void>, length: Int)
  func appendData(other: NSData)
  func increaseLengthBy(extraLength: Int)
  func replaceBytesInRange(range: NSRange, withBytes bytes: UnsafePointer<Void>)
  func resetBytesInRange(range: NSRange)
  func setData(data: NSData)
  func replaceBytesInRange(range: NSRange, withBytes replacementBytes: UnsafePointer<Void>, length replacementLength: Int)
}
extension NSMutableData {
  init?(capacity: Int)
  init?(length: Int)
}
@available(iOS 4.0, *)
class NSPurgeableData : NSMutableData, NSDiscardableContent {
  init()
  init?(coder aDecoder: NSCoder)
  init(bytes: UnsafePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, freeWhenDone b: Bool)
  @available(iOS 7.0, *)
  init(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length: Int, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?)
  init(contentsOfFile path: String, options readOptionsMask: NSDataReadingOptions) throws
  init(contentsOfURL url: NSURL, options readOptionsMask: NSDataReadingOptions) throws
  init?(contentsOfFile path: String)
  init?(contentsOfURL url: NSURL)
  init(data: NSData)
  @available(iOS 7.0, *)
  init?(base64EncodedString base64String: String, options: NSDataBase64DecodingOptions)
  @available(iOS 7.0, *)
  init?(base64EncodedData base64Data: NSData, options: NSDataBase64DecodingOptions)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use -initWithContentsOfURL:options:error: and NSDataReadingMappedIfSafe or NSDataReadingMappedAlways instead.")
  init?(contentsOfMappedFile path: String)
  init?(capacity: Int)
  init?(length: Int)
  @available(iOS 4.0, *)
  func beginContentAccess() -> Bool
  @available(iOS 4.0, *)
  func endContentAccess()
  @available(iOS 4.0, *)
  func discardContentIfPossible()
  @available(iOS 4.0, *)
  func isContentDiscarded() -> Bool
}