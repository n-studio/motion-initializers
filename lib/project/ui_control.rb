# https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIControl_class/index.html

class UIControl
  UIControlStateEnum = {
    normal: UIControlStateNormal,
    highlighted: UIControlStateHighlighted,
    disabled: UIControlStateDisabled,
    selected: UIControlStateSelected,
    application: UIControlStateApplication,
    reserved: UIControlStateReserved
  }
  
  UIControlEventsEnum = {
    touch_down: UIControlEventTouchDown,
    touch_down_repeat: UIControlEventTouchDownRepeat,
    touch_drag_inside: UIControlEventTouchDragInside,
    touch_drag_outside: UIControlEventTouchDragOutside,
    touch_drag_enter: UIControlEventTouchDragEnter,
    touch_drag_exit: UIControlEventTouchDragExit,
    touch_up_inside: UIControlEventTouchUpInside,
    touch_up_outside: UIControlEventTouchUpOutside,
    touch_cancel: UIControlEventTouchCancel,
    value_changed: UIControlEventValueChanged,
    editing_did_begin: UIControlEventEditingDidBegin,
    editing_changed: UIControlEventEditingChanged,
    editing_did_end: UIControlEventEditingDidEnd,
    editing_did_end_on_exit: UIControlEventEditingDidEndOnExit,
    all_touch_events: UIControlEventAllTouchEvents,
    all_editing_events: UIControlEventAllEditingEvents,
    application_reserved: UIControlEventApplicationReserved,
    system_reserved: UIControlEventSystemReserved,
    all_events: UIControlEventAllEvents
  }
  
  def addTarget!(target, action: action, forControlEvents: events)
    if events.is_a?(Array)
      controlEvents = events.map{|e|UIControlEventsEnum[e]}.inject(:|)
    else
      controlEvents = UIControlEventsEnum[events]
    end
    addTarget(target, action: action, forControlEvents: controlEvents)
  end
  alias_method :'add_target:action:events:', :'addTarget!:action:forControlEvents'
  
  def removeTarget!(target, action: action, forControlEvents: events)
    if events.is_a?(Array)
      controlEvents = events.map{|e|UIControlEventsEnum[e]}.inject(:|)
    else
      controlEvents = UIControlEventsEnum[events]
    end
    removeTarget(target, action: action, forControlEvents: controlEvents)
  end
  alias_method :'remove_target:action:events:', :'removeTarget!:action:forControlEvents'
end