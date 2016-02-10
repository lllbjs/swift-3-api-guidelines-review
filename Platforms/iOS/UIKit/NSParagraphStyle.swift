
@available(iOS 7.0, *)
let NSTabColumnTerminatorsAttributeName: String
@available(iOS 7.0, *)
class NSTextTab : Object, Copying, Coding {
  @available(iOS 7.0, *)
  class func columnTerminators(for aLocale: Locale?) -> CharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [String : AnyObject] = [:])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [String : AnyObject] { get }
  convenience init()
  @available(iOS 7.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(iOS 7.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 6.0, *)
enum NSLineBreakMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case byWordWrapping
  case byCharWrapping
  case byClipping
  case byTruncatingHead
  case byTruncatingTail
  case byTruncatingMiddle
}
@available(iOS 6.0, *)
class NSParagraphStyle : Object, Copying, MutableCopying, SecureCoding {
  class func defaultParagraphStyle() -> NSParagraphStyle
  class func defaultWritingDirection(forLanguage languageName: String?) -> NSWritingDirection
  var lineSpacing: CGFloat { get }
  var paragraphSpacing: CGFloat { get }
  var alignment: NSTextAlignment { get }
  var headIndent: CGFloat { get }
  var tailIndent: CGFloat { get }
  var firstLineHeadIndent: CGFloat { get }
  var minimumLineHeight: CGFloat { get }
  var maximumLineHeight: CGFloat { get }
  var lineBreakMode: NSLineBreakMode { get }
  var baseWritingDirection: NSWritingDirection { get }
  var lineHeightMultiple: CGFloat { get }
  var paragraphSpacingBefore: CGFloat { get }
  var hyphenationFactor: Float { get }
  @available(iOS 7.0, *)
  var tabStops: [NSTextTab] { get }
  @available(iOS 7.0, *)
  var defaultTabInterval: CGFloat { get }
  @available(iOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool { get }
  init()
  @available(iOS 6.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(iOS 6.0, *)
  func mutableCopy(with zone: Zone = nil) -> AnyObject
  @available(iOS 6.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 6.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 6.0, *)
class NSMutableParagraphStyle : NSParagraphStyle {
  var lineSpacing: CGFloat
  var paragraphSpacing: CGFloat
  var alignment: NSTextAlignment
  var firstLineHeadIndent: CGFloat
  var headIndent: CGFloat
  var tailIndent: CGFloat
  var lineBreakMode: NSLineBreakMode
  var minimumLineHeight: CGFloat
  var maximumLineHeight: CGFloat
  var baseWritingDirection: NSWritingDirection
  var lineHeightMultiple: CGFloat
  var paragraphSpacingBefore: CGFloat
  var hyphenationFactor: Float
  @available(iOS 7.0, *)
  var tabStops: [NSTextTab]!
  @available(iOS 7.0, *)
  var defaultTabInterval: CGFloat
  @available(iOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool
  @available(iOS 9.0, *)
  func addTabStop(anObject: NSTextTab)
  @available(iOS 9.0, *)
  func removeTabStop(anObject: NSTextTab)
  @available(iOS 9.0, *)
  func setParagraphStyle(obj: NSParagraphStyle)
  init()
  init?(coder aDecoder: Coder)
}
