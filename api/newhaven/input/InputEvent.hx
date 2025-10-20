package newhaven.input;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.Signal;
import newhaven.core.ArrayList;
import newhaven.core.Vector2;

class InputEvent extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('InputEvent');
        }
        native = _native;
    }

    public var device(get, set): Int;
    function get_device(): Int {
        return native.get('device');
    }
    function set_device(value: Int): Int {
      native.set('device', value);
        return value;
    }


  public function accumulate(withEvent: InputEvent): Bool {
      var args = new ArrayList();
      args.append(withEvent.native);
      return native.call('accumulate', args);
  }
  public function asText(): String {
      var args = new ArrayList();
      return native.call('as_text', args);
  }
  public function getActionStrength(action: String, ?exactMatch: Bool): Float {
      var args = new ArrayList();
      args.append(action);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return native.call('get_action_strength', args);
  }
  public function isAction(action: String, ?exactMatch: Bool): Bool {
      var args = new ArrayList();
      args.append(action);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return native.call('is_action', args);
  }
  public function isActionPressed(action: String, ?allowEcho: Bool, ?exactMatch: Bool): Bool {
      var args = new ArrayList();
      args.append(action);
      if (allowEcho != null) {
          args.append(allowEcho);
      }
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return native.call('is_action_pressed', args);
  }
  public function isActionReleased(action: String, ?exactMatch: Bool): Bool {
      var args = new ArrayList();
      args.append(action);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return native.call('is_action_released', args);
  }
  public function isActionType(): Bool {
      var args = new ArrayList();
      return native.call('is_action_type', args);
  }
  public function isCanceled(): Bool {
      var args = new ArrayList();
      return native.call('is_canceled', args);
  }
  public function isEcho(): Bool {
      var args = new ArrayList();
      return native.call('is_echo', args);
  }
  public function isMatch(event: InputEvent, ?exactMatch: Bool): Bool {
      var args = new ArrayList();
      args.append(event.native);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return native.call('is_match', args);
  }
  public function isPressed(): Bool {
      var args = new ArrayList();
      return native.call('is_pressed', args);
  }
  public function isReleased(): Bool {
      var args = new ArrayList();
      return native.call('is_released', args);
  }
  public function xformedBy(xform: Variant, ?localOfs: Vector2): InputEvent {
      var args = new ArrayList();
      args.append(xform);
      if (localOfs != null) {
          args.append(localOfs);
      }
      var ref: NativeReference = native.call('xformed_by', args);
      return new InputEvent(ref);
  }
}
