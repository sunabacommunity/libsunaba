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



  public function actionAddEvent(action: String, event: InputEvent): Void {
      var args = new ArrayList();
      args.append(action);
      args.append(event.native);
      getNative().call('action_add_event', args);
  }
  public function actionEraseEvent(action: String, event: InputEvent): Void {
      var args = new ArrayList();
      args.append(action);
      args.append(event.native);
      getNative().call('action_erase_event', args);
  }
  public function actionEraseEvents(action: String): Void {
      var args = new ArrayList();
      args.append(action);
      getNative().call('action_erase_events', args);
  }
  public function actionGetDeadzone(action: String): Float {
      var args = new ArrayList();
      args.append(action);
      return getNative().call('action_get_deadzone', args);
  }
  public function actionHasEvent(action: String, event: InputEvent): Bool {
      var args = new ArrayList();
      args.append(action);
      args.append(event.native);
      return getNative().call('action_has_event', args);
  }
  public function actionSetDeadzone(action: String, deadzone: Float): Void {
      var args = new ArrayList();
      args.append(action);
      args.append(deadzone);
      getNative().call('action_set_deadzone', args);
  }
  public function addAction(action: String, ?deadzone: Float): Void {
      var args = new ArrayList();
      args.append(action);
      if (deadzone != null) {
          args.append(deadzone);
      }
      getNative().call('add_action', args);
  }
  public function eraseAction(action: String): Void {
      var args = new ArrayList();
      args.append(action);
      getNative().call('erase_action', args);
  }
  public function eventIsAction(event: InputEvent, action: String, ?exactMatch: Bool): Bool {
      var args = new ArrayList();
      args.append(event.native);
      args.append(action);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return getNative().call('event_is_action', args);
  }
  public function getActionDescription(action: String): String {
      var args = new ArrayList();
      args.append(action);
      return getNative().call('get_action_description', args);
  }
  public function hasAction(action: String): Bool {
      var args = new ArrayList();
      args.append(action);
      return getNative().call('has_action', args);
  }
  public function loadFromProjectSettings(): Void {
      var args = new ArrayList();
      getNative().call('load_from_project_settings', args);
  }
}
