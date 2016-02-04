
let NSUndoCloseGroupingRunLoopOrdering: Int
@available(tvOS 3.0, *)
class NSUndoManager : NSObject {
  func beginUndoGrouping()
  func endUndoGrouping()
  var groupingLevel: Int { get }
  func disableUndoRegistration()
  func enableUndoRegistration()
  var undoRegistrationEnabled: Bool { get }
  var groupsByEvent: Bool
  var levelsOfUndo: Int
  var runLoopModes: [String]
  func undo()
  func redo()
  func undoNestedGroup()
  var canUndo: Bool { get }
  var canRedo: Bool { get }
  var undoing: Bool { get }
  var redoing: Bool { get }
  func removeAllActions()
  func removeAllActionsWithTarget(target: AnyObject)
  func registerUndoWithTarget(target: AnyObject, selector: Selector, object anObject: AnyObject?)
  func prepareWithInvocationTarget(target: AnyObject) -> AnyObject
  @available(tvOS 9.0, *)
  func __registerUndoWithTarget(target: AnyObject, handler undoHandler: (AnyObject) -> Void)
  @available(tvOS 5.0, *)
  func setActionIsDiscardable(discardable: Bool)
  @available(tvOS 5.0, *)
  var undoActionIsDiscardable: Bool { get }
  @available(tvOS 5.0, *)
  var redoActionIsDiscardable: Bool { get }
  var undoActionName: String { get }
  var redoActionName: String { get }
  func setActionName(actionName: String)
  var undoMenuItemTitle: String { get }
  var redoMenuItemTitle: String { get }
  func undoMenuTitleForUndoActionName(actionName: String) -> String
  func redoMenuTitleForUndoActionName(actionName: String) -> String
  init()
}

extension NSUndoManager {
  func registerUndoWithTarget<TargetType : AnyObject>(target: TargetType, handler: (TargetType) -> Void)
}
@available(tvOS 5.0, *)
let NSUndoManagerGroupIsDiscardableKey: String
@available(tvOS 3.0, *)
let NSUndoManagerCheckpointNotification: String
@available(tvOS 3.0, *)
let NSUndoManagerWillUndoChangeNotification: String
@available(tvOS 3.0, *)
let NSUndoManagerWillRedoChangeNotification: String
@available(tvOS 3.0, *)
let NSUndoManagerDidUndoChangeNotification: String
@available(tvOS 3.0, *)
let NSUndoManagerDidRedoChangeNotification: String
@available(tvOS 3.0, *)
let NSUndoManagerDidOpenUndoGroupNotification: String
@available(tvOS 3.0, *)
let NSUndoManagerWillCloseUndoGroupNotification: String
@available(tvOS 5.0, *)
let NSUndoManagerDidCloseUndoGroupNotification: String