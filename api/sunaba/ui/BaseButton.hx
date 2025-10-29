package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.input.Shortcut;
import sunaba.core.Signal;

class BaseButton extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('BaseButton');
        }
        native = _native;
    }

    public var actionMode(get, set): Int;
    function get_actionMode(): Int {
        return native.get('action_mode');
    }
    function set_actionMode(value: Int): Int {
      native.set('action_mode', value);
        return value;
    }
    public var buttonGroup(get, set): ButtonGroup;
    function get_buttonGroup(): ButtonGroup {
        var ref: NativeReference = native.get('button_group');
        return new ButtonGroup(ref);
    }
    function set_buttonGroup(value: ButtonGroup): ButtonGroup {
      native.set('button_group', value.native);
        return value;
    }
    public var buttonMask(get, set): Int;
    function get_buttonMask(): Int {
        return native.get('button_mask');
    }
    function set_buttonMask(value: Int): Int {
      native.set('button_mask', value);
        return value;
    }
    public var buttonPressed(get, set): Bool;
    function get_buttonPressed(): Bool {
        return native.get('button_pressed');
    }
    function set_buttonPressed(value: Bool): Bool {
      native.set('button_pressed', value);
        return value;
    }
    public var disabled(get, set): Bool;
    function get_disabled(): Bool {
        return native.get('disabled');
    }
    function set_disabled(value: Bool): Bool {
      native.set('disabled', value);
        return value;
    }
    public var keepPressedOutside(get, set): Bool;
    function get_keepPressedOutside(): Bool {
        return native.get('keep_pressed_outside');
    }
    function set_keepPressedOutside(value: Bool): Bool {
      native.set('keep_pressed_outside', value);
        return value;
    }
    public var shortcut(get, set): Shortcut;
    function get_shortcut(): Shortcut {
        var ref: NativeReference = native.get('shortcut');
        return new Shortcut(ref);
    }
    function set_shortcut(value: Shortcut): Shortcut {
      native.set('shortcut', value.native);
        return value;
    }
    public var shortcutFeedback(get, set): Bool;
    function get_shortcutFeedback(): Bool {
        return native.get('shortcut_feedback');
    }
    function set_shortcutFeedback(value: Bool): Bool {
      native.set('shortcut_feedback', value);
        return value;
    }
    public var shortcutInTooltip(get, set): Bool;
    function get_shortcutInTooltip(): Bool {
        return native.get('shortcut_in_tooltip');
    }
    function set_shortcutInTooltip(value: Bool): Bool {
      native.set('shortcut_in_tooltip', value);
        return value;
    }
    public var toggleMode(get, set): Bool;
    function get_toggleMode(): Bool {
        return native.get('toggle_mode');
    }
    function set_toggleMode(value: Bool): Bool {
      native.set('toggle_mode', value);
        return value;
    }

	private var _buttonDown: Signal;
	public var buttonDown(get, default): Signal;
	function get_buttonDown(): Signal {
	    if (_buttonDown == null) {
	        _buttonDown = Signal.createFromObject(native, 'button_down');
	    }
	    return _buttonDown;
	}
	private var _buttonUp: Signal;
	public var buttonUp(get, default): Signal;
	function get_buttonUp(): Signal {
	    if (_buttonUp == null) {
	        _buttonUp = Signal.createFromObject(native, 'button_up');
	    }
	    return _buttonUp;
	}
	private var _pressed: Signal;
	public var pressed(get, default): Signal;
	function get_pressed(): Signal {
	    if (_pressed == null) {
	        _pressed = Signal.createFromObject(native, 'pressed');
	    }
	    return _pressed;
	}
	private var _toggled: Signal;
	public var toggled(get, default): Signal;
	function get_toggled(): Signal {
	    if (_toggled == null) {
	        _toggled = Signal.createFromObject(native, 'toggled');
	    }
	    return _toggled;
	}

  public function getDrawMode(): Int {
      var args = new ArrayList();
      return native.call('get_draw_mode', args);
  }
  public function isHovered(): Bool {
      var args = new ArrayList();
      return native.call('is_hovered', args);
  }
  public function setPressedNoSignal(pressed: Bool): Void {
      var args = new ArrayList();
      args.append(pressed);
      native.call('set_pressed_no_signal', args);
  }
}
