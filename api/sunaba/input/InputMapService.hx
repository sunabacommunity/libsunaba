package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class InputMapService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('InputMap');
        }
        return _native;
    }



  public static function actionAddEvent(action: String, event: InputEvent): Void {
      var args = new ArrayList();
      args.append(action);
      args.append(event.native);
      getNative().call('action_add_event', args);
  }
  public static function actionEraseEvent(action: String, event: InputEvent): Void {
      var args = new ArrayList();
      args.append(action);
      args.append(event.native);
      getNative().call('action_erase_event', args);
  }
  public static function actionEraseEvents(action: String): Void {
      var args = new ArrayList();
      args.append(action);
      getNative().call('action_erase_events', args);
  }
  public static function actionGetDeadzone(action: String): Float {
      var args = new ArrayList();
      args.append(action);
      return getNative().call('action_get_deadzone', args);
  }
  public static function actionHasEvent(action: String, event: InputEvent): Bool {
      var args = new ArrayList();
      args.append(action);
      args.append(event.native);
      return getNative().call('action_has_event', args);
  }
  public static function actionSetDeadzone(action: String, deadzone: Float): Void {
      var args = new ArrayList();
      args.append(action);
      args.append(deadzone);
      getNative().call('action_set_deadzone', args);
  }
  public static function addAction(action: String, ?deadzone: Float): Void {
      var args = new ArrayList();
      args.append(action);
      if (deadzone != null) {
          args.append(deadzone);
      }
      getNative().call('add_action', args);
  }
  public static function eraseAction(action: String): Void {
      var args = new ArrayList();
      args.append(action);
      getNative().call('erase_action', args);
  }
  public static function eventIsAction(event: InputEvent, action: String, ?exactMatch: Bool): Bool {
      var args = new ArrayList();
      args.append(event.native);
      args.append(action);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return getNative().call('event_is_action', args);
  }
  public static function getActionDescription(action: String): String {
      var args = new ArrayList();
      args.append(action);
      return getNative().call('get_action_description', args);
  }
  public static function hasAction(action: String): Bool {
      var args = new ArrayList();
      args.append(action);
      return getNative().call('has_action', args);
  }
  public static function loadFromProjectSettings(): Void {
      var args = new ArrayList();
      getNative().call('load_from_project_settings', args);
  }
}
