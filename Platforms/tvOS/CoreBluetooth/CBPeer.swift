
@available(tvOS 8.0, *)
class CBPeer : Object, Copying {
  @available(tvOS 7.0, *)
  var identifier: UUID { get }
  @available(tvOS 8.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
