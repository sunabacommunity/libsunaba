package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

class Slider extends Range {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('Slider');
        }
        native = _native;
    }

    public var editable(get, set): Bool;
    function get_editable(): Bool {
        return native.get('editable');
    }
    function set_editable(value: Bool): Bool {
      native.set('editable', value);
        return value;
    }
    public var scrollable(get, set): Bool;
    function get_scrollable(): Bool {
        return native.get('scrollable');
    }
    function set_scrollable(value: Bool): Bool {
      native.set('scrollable', value);
        return value;
    }
    public var tickCount(get, set): Int;
    function get_tickCount(): Int {
        return native.get('tick_count');
    }
    function set_tickCount(value: Int): Int {
      native.set('tick_count', value);
        return value;
    }
    public var ticksOnBorders(get, set): Bool;
    function get_ticksOnBorders(): Bool {
        return native.get('ticks_on_borders');
    }
    function set_ticksOnBorders(value: Bool): Bool {
      native.set('ticks_on_borders', value);
        return value;
    }
    public var ticksPosition(get, set): Int;
    function get_ticksPosition(): Int {
        return native.get('ticks_position');
    }
    function set_ticksPosition(value: Int): Int {
      native.set('ticks_position', value);
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

}
