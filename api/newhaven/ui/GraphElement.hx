package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector2;
import newhaven.core.Signal;

class GraphElement extends Container {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('GraphElement');
        }
        native = _native;
    }

    public var draggable(get, set): Bool;
    function get_draggable(): Bool {
        return native.get('draggable');
    }
    function set_draggable(value: Bool): Bool {
      native.set('draggable', value);
        return value;
    }
    public var positionOffset(get, set): Vector2;
    function get_positionOffset(): Vector2 {
        return native.get('position_offset');
    }
    function set_positionOffset(value: Vector2): Vector2 {
      native.set('position_offset', value);
        return value;
    }
    public var resizable(get, set): Bool;
    function get_resizable(): Bool {
        return native.get('resizable');
    }
    function set_resizable(value: Bool): Bool {
      native.set('resizable', value);
        return value;
    }
    public var selectable(get, set): Bool;
    function get_selectable(): Bool {
        return native.get('selectable');
    }
    function set_selectable(value: Bool): Bool {
      native.set('selectable', value);
        return value;
    }
    public var selected(get, set): Bool;
    function get_selected(): Bool {
        return native.get('selected');
    }
    function set_selected(value: Bool): Bool {
      native.set('selected', value);
        return value;
    }

	private var _deleteRequest: Signal;
	public var deleteRequest(get, default): Signal;
	function get_deleteRequest(): Signal {
	    if (_deleteRequest == null) {
	        _deleteRequest = Signal.createFromObject(native, 'delete_request');
	    }
	    return _deleteRequest;
	}
	private var _dragged: Signal;
	public var dragged(get, default): Signal;
	function get_dragged(): Signal {
	    if (_dragged == null) {
	        _dragged = Signal.createFromObject(native, 'dragged');
	    }
	    return _dragged;
	}
	private var _nodeDeselected: Signal;
	public var nodeDeselected(get, default): Signal;
	function get_nodeDeselected(): Signal {
	    if (_nodeDeselected == null) {
	        _nodeDeselected = Signal.createFromObject(native, 'node_deselected');
	    }
	    return _nodeDeselected;
	}
	private var _nodeSelected: Signal;
	public var nodeSelected(get, default): Signal;
	function get_nodeSelected(): Signal {
	    if (_nodeSelected == null) {
	        _nodeSelected = Signal.createFromObject(native, 'node_selected');
	    }
	    return _nodeSelected;
	}
	private var _positionOffsetChanged: Signal;
	public var positionOffsetChanged(get, default): Signal;
	function get_positionOffsetChanged(): Signal {
	    if (_positionOffsetChanged == null) {
	        _positionOffsetChanged = Signal.createFromObject(native, 'position_offset_changed');
	    }
	    return _positionOffsetChanged;
	}
	private var _raiseRequest: Signal;
	public var raiseRequest(get, default): Signal;
	function get_raiseRequest(): Signal {
	    if (_raiseRequest == null) {
	        _raiseRequest = Signal.createFromObject(native, 'raise_request');
	    }
	    return _raiseRequest;
	}
	private var _resizeEnd: Signal;
	public var resizeEnd(get, default): Signal;
	function get_resizeEnd(): Signal {
	    if (_resizeEnd == null) {
	        _resizeEnd = Signal.createFromObject(native, 'resize_end');
	    }
	    return _resizeEnd;
	}
	private var _resizeRequest: Signal;
	public var resizeRequest(get, default): Signal;
	function get_resizeRequest(): Signal {
	    if (_resizeRequest == null) {
	        _resizeRequest = Signal.createFromObject(native, 'resize_request');
	    }
	    return _resizeRequest;
	}

}
