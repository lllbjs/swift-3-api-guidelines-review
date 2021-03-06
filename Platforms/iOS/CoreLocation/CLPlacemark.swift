
@available(iOS 5.0, *)
class CLPlacemark : NSObject, NSCopying, NSSecureCoding {
  init(placemark placemark: CLPlacemark)
  @NSCopying var location: CLLocation? { get }
  @NSCopying var region: CLRegion? { get }
  @available(iOS 9.0, *)
  @NSCopying var timeZone: NSTimeZone? { get }
  var addressDictionary: [NSObject : AnyObject]? { get }
  var name: String? { get }
  var thoroughfare: String? { get }
  var subThoroughfare: String? { get }
  var locality: String? { get }
  var subLocality: String? { get }
  var administrativeArea: String? { get }
  var subAdministrativeArea: String? { get }
  var postalCode: String? { get }
  var isOcountryCode: String? { get }
  var country: String? { get }
  var inlandWater: String? { get }
  var ocean: String? { get }
  var areasOfInterest: [String]? { get }
  @available(iOS 5.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 5.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
