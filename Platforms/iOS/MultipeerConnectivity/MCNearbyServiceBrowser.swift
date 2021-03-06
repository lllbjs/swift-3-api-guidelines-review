
@available(iOS 7.0, *)
class MCNearbyServiceBrowser : NSObject {
  init(peer myPeerID: MCPeerID, serviceType serviceType: String)
  func startBrowsingForPeers()
  func stopBrowsingForPeers()
  func invitePeer(_ peerID: MCPeerID, to session: MCSession, withContext context: NSData?, timeout timeout: NSTimeInterval)
  weak var delegate: @sil_weak MCNearbyServiceBrowserDelegate?
  var myPeerID: MCPeerID { get }
  var serviceType: String { get }
}
protocol MCNearbyServiceBrowserDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  func browser(_ browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?)
  @available(iOS 7.0, *)
  func browser(_ browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID)
  @available(iOS 7.0, *)
  optional func browser(_ browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: NSError)
}
