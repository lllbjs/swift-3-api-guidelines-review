
@available(OSX 10.10, *)
enum EnergyFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case joule
  case kilojoule
  case calorie
  case kilocalorie
}
@available(OSX 10.10, *)
class EnergyFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: FormattingUnitStyle
  var isForFoodEnergyUse: Bool
  func string(fromValue value: Double, unit: EnergyFormatterUnit) -> String
  func string(fromJoules numberInJoules: Double) -> String
  func unitString(fromValue value: Double, unit: EnergyFormatterUnit) -> String
  func unitString(fromJoules numberInJoules: Double, usedUnit unitp: UnsafeMutablePointer<EnergyFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, for string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
