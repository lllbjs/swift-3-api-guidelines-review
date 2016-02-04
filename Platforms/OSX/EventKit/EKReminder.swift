
@available(OSX 10.8, *)
class EKReminder : EKCalendarItem {
  /*not inherited*/ init(eventStore: EKEventStore)
  @NSCopying var startDateComponents: NSDateComponents?
  @NSCopying var dueDateComponents: NSDateComponents?
  var completed: Bool
  @NSCopying var completionDate: NSDate?
  var priority: Int
  init()
}