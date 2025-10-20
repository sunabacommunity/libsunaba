package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;

class ScrollContainer extends Container {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('ScrollContainer');
        }
        native = _native;
    }

    public var drawFocusBorder(get, set): Bool;
    function get_drawFocusBorder(): Bool {
        return native.get('draw_focus_border');
    }
    function set_drawFocusBorder(value: Bool): Bool {
      native.set('draw_focus_border', value);
        return value;
    }
    public var followFocus(get, set): Bool;
    function get_followFocus(): Bool {
        return native.get('follow_focus');
    }
    function set_followFocus(value: Bool): Bool {
      native.set('follow_focus', value);
        return value;
    }
    public var horizontalScrollMode(get, set): Int;
    function get_horizontalScrollMode(): Int {
        return native.get('horizontal_scroll_mode');
    }
    function set_horizontalScrollMode(value: Int): Int {
      native.set('horizontal_scroll_mode', value);
        return value;
    }
    public var scrollDeadzone(get, set): Int;
    function get_scrollDeadzone(): Int {
        return native.get('scroll_deadzone');
    }
    function set_scrollDeadzone(value: Int): Int {
      native.set('scroll_deadzone', value);
        return value;
    }
    public var scrollHorizontal(get, set): Int;
    function get_scrollHorizontal(): Int {
        return native.get('scroll_horizontal');
    }
    function set_scrollHorizontal(value: Int): Int {
      native.set('scroll_horizontal', value);
        return value;
    }
    public var scrollHorizontalCustomStep(get, set): Float;
    function get_scrollHorizontalCustomStep(): Float {
        return native.get('scroll_horizontal_custom_step');
    }
    function set_scrollHorizontalCustomStep(value: Float): Float {
      native.set('scroll_horizontal_custom_step', value);
        return value;
    }
    public var scrollVertical(get, set): Int;
    function get_scrollVertical(): Int {
        return native.get('scroll_vertical');
    }
    function set_scrollVertical(value: Int): Int {
      native.set('scroll_vertical', value);
        return value;
    }
    public var scrollVerticalCustomStep(get, set): Float;
    function get_scrollVerticalCustomStep(): Float {
        return native.get('scroll_vertical_custom_step');
    }
    function set_scrollVerticalCustomStep(value: Float): Float {
      native.set('scroll_vertical_custom_step', value);
        return value;
    }
    public var verticalScrollMode(get, set): Int;
    function get_verticalScrollMode(): Int {
        return native.get('vertical_scroll_mode');
    }
    function set_verticalScrollMode(value: Int): Int {
      native.set('vertical_scroll_mode', value);
        return value;
    }

  public function ensureControlVisible(control: Control): Void {
      var args = new ArrayList();
      args.append(control.native);
      native.call('ensure_control_visible', args);
  }
  public function getHScrollBar(): HScrollBar {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_h_scroll_bar', args);
      return new HScrollBar(ref);
  }
  public function getVScrollBar(): VScrollBar {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_v_scroll_bar', args);
      return new VScrollBar(ref);
  }
}
