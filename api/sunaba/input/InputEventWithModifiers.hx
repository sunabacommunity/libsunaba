package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class InputEventWithModifiers extends InputEventFromWindow {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('InputEventWithModifiers');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['InputEventWithModifiers', native];
        scriptLoader.call('loadScript', args);
    }

    public var altPressed(get, set): Bool;
    function get_altPressed(): Bool {
        return native.get('alt_pressed');
    }
    function set_altPressed(value: Bool): Bool {
      native.set('alt_pressed', value);
        return value;
    }
    public var commandOrControlAutoremap(get, set): Bool;
    function get_commandOrControlAutoremap(): Bool {
        return native.get('command_or_control_autoremap');
    }
    function set_commandOrControlAutoremap(value: Bool): Bool {
      native.set('command_or_control_autoremap', value);
        return value;
    }
    public var ctrlPressed(get, set): Bool;
    function get_ctrlPressed(): Bool {
        return native.get('ctrl_pressed');
    }
    function set_ctrlPressed(value: Bool): Bool {
      native.set('ctrl_pressed', value);
        return value;
    }
    public var metaPressed(get, set): Bool;
    function get_metaPressed(): Bool {
        return native.get('meta_pressed');
    }
    function set_metaPressed(value: Bool): Bool {
      native.set('meta_pressed', value);
        return value;
    }
    public var shiftPressed(get, set): Bool;
    function get_shiftPressed(): Bool {
        return native.get('shift_pressed');
    }
    function set_shiftPressed(value: Bool): Bool {
      native.set('shift_pressed', value);
        return value;
    }


  public function getModifiersMask(): Int {
      var args = new ArrayList();
      return native.call('get_modifiers_mask', args);
  }
  public function isCommandOrControlPressed(): Bool {
      var args = new ArrayList();
      return native.call('is_command_or_control_pressed', args);
  }
}
