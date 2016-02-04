
@available(iOS 8.0, *)
enum WKSelectionGranularity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Dynamic
  case Character
}
@available(iOS 8.0, *)
class WKWebViewConfiguration : NSObject, NSCopying {
  var processPool: WKProcessPool
  var preferences: WKPreferences
  var userContentController: WKUserContentController
  @available(iOS 9.0, *)
  var websiteDataStore: WKWebsiteDataStore
  var suppressesIncrementalRendering: Bool
  @available(iOS 9.0, *)
  var applicationNameForUserAgent: String?
  @available(iOS 9.0, *)
  var allowsAirPlayForMediaPlayback: Bool
  var allowsInlineMediaPlayback: Bool
  @available(iOS 9.0, *)
  var requiresUserActionForMediaPlayback: Bool
  var selectionGranularity: WKSelectionGranularity
  @available(iOS 9.0, *)
  var allowsPictureInPictureMediaPlayback: Bool
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension WKWebViewConfiguration {
  @available(iOS, introduced=8.0, deprecated=9.0, message="Please use requiresUserActionForMediaPlayback")
  var mediaPlaybackRequiresUserAction: Bool
  @available(iOS, introduced=8.0, deprecated=9.0, message="Please use allowsAirPlayForMediaPlayback")
  var mediaPlaybackAllowsAirPlay: Bool
}