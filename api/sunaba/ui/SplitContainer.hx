package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class SplitContainer extends Container {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('SplitContainer');
        }
        native = _native;
    }

    public var collapsed(get, set): Bool;
    function get_collapsed(): Bool {
        return native.get('collapsed');
    }
    function set_collapsed(value: Bool): Bool {
      native.set('collapsed', value);
        return value;
    }
    public var dragAreaHighlightInEditor(get, set): Bool;
    function get_dragAreaHighlightInEditor(): Bool {
        return native.get('drag_area_highlight_in_editor');
    }
    function set_dragAreaHighlightInEditor(value: Bool): Bool {
      native.set('drag_area_highlight_in_editor', value);
        return value;
    }
    public var dragAreaMarginBegin(get, set): Int;
    function get_dragAreaMarginBegin(): Int {
        return native.get('drag_area_margin_begin');
    }
    function set_dragAreaMarginBegin(value: Int): Int {
      native.set('drag_area_margin_begin', value);
        return value;
    }
    public var dragAreaMarginEnd(get, set): Int;
    function get_dragAreaMarginEnd(): Int {
        return native.get('drag_area_margin_end');
    }
    function set_dragAreaMarginEnd(value: Int): Int {
      native.set('drag_area_margin_end', value);
        return value;
    }
    public var dragAreaOffset(get, set): Int;
    function get_dragAreaOffset(): Int {
        return native.get('drag_area_offset');
    }
    function set_dragAreaOffset(value: Int): Int {
      native.set('drag_area_offset', value);
        return value;
    }
    public var draggerVisibility(get, set): Int;
    function get_draggerVisibility(): Int {
        return native.get('dragger_visibility');
    }
    function set_draggerVisibility(value: Int): Int {
      native.set('dragger_visibility', value);
        return value;
    }
    public var draggingEnabled(get, set): Bool;
    function get_draggingEnabled(): Bool {
        return native.get('dragging_enabled');
    }
    function set_draggingEnabled(value: Bool): Bool {
      native.set('dragging_enabled', value);
        return value;
    }
    public var splitOffset(get, set): Int;
    function get_splitOffset(): Int {
        return native.get('split_offset');
    }
    function set_splitOffset(value: Int): Int {
      native.set('split_offset', value);
        return value;
    }
    public var touchDraggerEnabled(get, set): Bool;
    function get_touchDraggerEnabled(): Bool {
        return native.get('touch_dragger_enabled');
    }
    function set_touchDraggerEnabled(value: Bool): Bool {
      native.set('touch_dragger_enabled', value);
        return value;
    }
    public var vertical(get, set): Bool;
    function get_vertical(): Bool {
        return native.get('vertical');
    }
    function set_vertical(value: Bool): Bool {
      native.set('vertical', value);
        return value;
    }

	private var _dragEnded: Signal;
	public var dragEnded(get, default): Signal;
	function get_dragEnded(): Signal {
	    if (_dragEnded == null) {
	        _dragEnded = Signal.createFromObject(native, 'drag_ended');
	    }
	    return _dragEnded;
	}
	private var _dragStarted: Signal;
	public var dragStarted(get, default): Signal;
	function get_dragStarted(): Signal {
	    if (_dragStarted == null) {
	        _dragStarted = Signal.createFromObject(native, 'drag_started');
	    }
	    return _dragStarted;
	}
	private var _dragged: Signal;
	public var dragged(get, default): Signal;
	function get_dragged(): Signal {
	    if (_dragged == null) {
	        _dragged = Signal.createFromObject(native, 'dragged');
	    }
	    return _dragged;
	}

  public function clampSplitOffset(): Void {
      var args = new ArrayList();
      native.call('clamp_split_offset', args);
  }
  public function getDragAreaControl(): Control {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_drag_area_control', args);
      return new Control(ref);
  }
}
