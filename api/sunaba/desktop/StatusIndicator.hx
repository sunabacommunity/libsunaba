package sunaba.desktop;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.Node;
import sunaba.Texture2D;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.Rect2;

class StatusIndicator extends Node {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('StatusIndicator');
        }
        native = _native;
    }

    public var icon(get, set): Texture2D;
    function get_icon(): Texture2D {
        var ref: NativeReference = native.get('icon');
        return new Texture2D(ref);
    }
    function set_icon(value: Texture2D): Texture2D {
      native.set('icon', value.native);
        return value;
    }
    public var menu(get, set): String;
    function get_menu(): String {
        return native.get('menu');
    }
    function set_menu(value: String): String {
      native.set('menu', value);
        return value;
    }
    public var tooltip(get, set): String;
    function get_tooltip(): String {
        return native.get('tooltip');
    }
    function set_tooltip(value: String): String {
      native.set('tooltip', value);
        return value;
    }
    public var visible(get, set): Bool;
    function get_visible(): Bool {
        return native.get('visible');
    }
    function set_visible(value: Bool): Bool {
      native.set('visible', value);
        return value;
    }

	private var _pressed: Signal;
	public var pressed(get, default): Signal;
	function get_pressed(): Signal {
	    if (_pressed == null) {
	        _pressed = Signal.createFromObject(native, 'pressed');
	    }
	    return _pressed;
	}

  public function getRect(): Rect2 {
      var args = new ArrayList();
      return native.call('get_rect', args);
  }
}
