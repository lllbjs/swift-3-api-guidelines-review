
@available(OSX 10.4, *)
class CIFilterShape : NSObject, NSCopying {
  init(rect r: CGRect)
  func transformBy(m: CGAffineTransform, interior flag: Bool) -> CIFilterShape
  func insetByX(dx: Int32, y dy: Int32) -> CIFilterShape
  func unionWith(s2: CIFilterShape) -> CIFilterShape
  func unionWithRect(r: CGRect) -> CIFilterShape
  func intersectWith(s2: CIFilterShape) -> CIFilterShape
  func intersectWithRect(r: CGRect) -> CIFilterShape
  var extent: CGRect { get }
  init()
  @available(OSX 10.4, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}