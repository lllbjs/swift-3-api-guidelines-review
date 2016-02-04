
let ICScannerStatusWarmingUp: String
let ICScannerStatusWarmUpDone: String
let ICScannerStatusRequestsOverviewScan: String
enum ICScannerTransferMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case FileBased
  case MemoryBased
}
protocol ICScannerDeviceDelegate : ICDeviceDelegate {
  optional func scannerDeviceDidBecomeAvailable(scanner: ICScannerDevice)
  optional func scannerDevice(scanner: ICScannerDevice, didSelectFunctionalUnit functionalUnit: ICScannerFunctionalUnit, error: NSError?)
  optional func scannerDevice(scanner: ICScannerDevice, didScanToURL url: NSURL)
  optional func scannerDevice(scanner: ICScannerDevice, didScanToBandData data: ICScannerBandData)
  optional func scannerDevice(scanner: ICScannerDevice, didCompleteOverviewScanWithError error: NSError?)
  optional func scannerDevice(scanner: ICScannerDevice, didCompleteScanWithError error: NSError?)
}
class ICScannerDevice : ICDevice {
  var availableFunctionalUnitTypes: [NSNumber] { get }
  var selectedFunctionalUnit: ICScannerFunctionalUnit { get }
  var transferMode: ICScannerTransferMode
  var maxMemoryBandSize: UInt32
  var downloadsDirectory: NSURL
  var documentName: String
  var documentUTI: String
  func requestSelectFunctionalUnit(type: ICScannerFunctionalUnitType)
  func requestOverviewScan()
  func requestScan()
  func cancelScan()
  init()
}