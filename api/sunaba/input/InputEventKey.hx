package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class InputEventKey extends InputEventWithModifiers {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('InputEventKey');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['InputEventKey', native];
        scriptLoader.call('loadScript', args);
    }

    public var echo(get, set): Bool;
    function get_echo(): Bool {
        return native.get('echo');
    }
    function set_echo(value: Bool): Bool {
      native.set('echo', value);
        return value;
    }
    public var keyLabel(get, set): Int;
    function get_keyLabel(): Int {
        return native.get('key_label');
    }
    function set_keyLabel(value: Int): Int {
      native.set('key_label', value);
        return value;
    }
    public var keycode(get, set): Int;
    function get_keycode(): Int {
        return native.get('keycode');
    }
    function set_keycode(value: Int): Int {
      native.set('keycode', value);
        return value;
    }
    public var location(get, set): Int;
    function get_location(): Int {
        return native.get('location');
    }
    function set_location(value: Int): Int {
      native.set('location', value);
        return value;
    }
    public var physicalKeycode(get, set): Int;
    function get_physicalKeycode(): Int {
        return native.get('physical_keycode');
    }
    function set_physicalKeycode(value: Int): Int {
      native.set('physical_keycode', value);
        return value;
    }
    public var pressed(get, set): Bool;
    function get_pressed(): Bool {
        return native.get('pressed');
    }
    function set_pressed(value: Bool): Bool {
      native.set('pressed', value);
        return value;
    }
    public var unicode(get, set): Int;
    function get_unicode(): Int {
        return native.get('unicode');
    }
    function set_unicode(value: Int): Int {
      native.set('unicode', value);
        return value;
    }


  public function asTextKeyLabel(): String {
      var args = new ArrayList();
      return native.call('as_text_key_label', args);
  }
  public function asTextKeycode(): String {
      var args = new ArrayList();
      return native.call('as_text_keycode', args);
  }
  public function asTextLocation(): String {
      var args = new ArrayList();
      return native.call('as_text_location', args);
  }
  public function asTextPhysicalKeycode(): String {
      var args = new ArrayList();
      return native.call('as_text_physical_keycode', args);
  }
  public function getKeyLabelWithModifiers(): Int {
      var args = new ArrayList();
      return native.call('get_key_label_with_modifiers', args);
  }
  public function getKeycodeWithModifiers(): Int {
      var args = new ArrayList();
      return native.call('get_keycode_with_modifiers', args);
  }
  public function getPhysicalKeycodeWithModifiers(): Int {
      var args = new ArrayList();
      return native.call('get_physical_keycode_with_modifiers', args);
  }
}
