package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.core.Dictionary;
import sunaba.core.Signal;
import sunaba.core.Vector2;
import sunaba.core.TypedArray;
import sunaba.core.Rect2;
import sunaba.Node;

class GraphEdit extends Control {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('GraphEdit');
        }
        this.native = _native;
    }

    public var connectionLinesAntialiased(get, set): Bool;
    function get_connectionLinesAntialiased(): Bool {
        return native.get('connection_lines_antialiased');
    }
    function set_connectionLinesAntialiased(value: Bool): Bool {
      native.set('connection_lines_antialiased', value);
        return value;
    }
    public var connectionLinesCurvature(get, set): Float;
    function get_connectionLinesCurvature(): Float {
        return native.get('connection_lines_curvature');
    }
    function set_connectionLinesCurvature(value: Float): Float {
      native.set('connection_lines_curvature', value);
        return value;
    }
    public var connectionLinesThickness(get, set): Float;
    function get_connectionLinesThickness(): Float {
        return native.get('connection_lines_thickness');
    }
    function set_connectionLinesThickness(value: Float): Float {
      native.set('connection_lines_thickness', value);
        return value;
    }
    public var connections(get, set): ArrayList;
    function get_connections(): ArrayList {
        return native.get('connections');
    }
    function set_connections(value: ArrayList): ArrayList {
      native.set('connections', value);
        return value;
    }
    public var gridPattern(get, set): Int;
    function get_gridPattern(): Int {
        return native.get('grid_pattern');
    }
    function set_gridPattern(value: Int): Int {
      native.set('grid_pattern', value);
        return value;
    }
    public var minimapEnabled(get, set): Bool;
    function get_minimapEnabled(): Bool {
        return native.get('minimap_enabled');
    }
    function set_minimapEnabled(value: Bool): Bool {
      native.set('minimap_enabled', value);
        return value;
    }
    public var minimapOpacity(get, set): Float;
    function get_minimapOpacity(): Float {
        return native.get('minimap_opacity');
    }
    function set_minimapOpacity(value: Float): Float {
      native.set('minimap_opacity', value);
        return value;
    }
    public var minimapSize(get, set): Vector2;
    function get_minimapSize(): Vector2 {
        return native.get('minimap_size');
    }
    function set_minimapSize(value: Vector2): Vector2 {
      native.set('minimap_size', value);
        return value;
    }
    public var panningScheme(get, set): Int;
    function get_panningScheme(): Int {
        return native.get('panning_scheme');
    }
    function set_panningScheme(value: Int): Int {
      native.set('panning_scheme', value);
        return value;
    }
    public var rightDisconnects(get, set): Bool;
    function get_rightDisconnects(): Bool {
        return native.get('right_disconnects');
    }
    function set_rightDisconnects(value: Bool): Bool {
      native.set('right_disconnects', value);
        return value;
    }
    public var scrollOffset(get, set): Vector2;
    function get_scrollOffset(): Vector2 {
        return native.get('scroll_offset');
    }
    function set_scrollOffset(value: Vector2): Vector2 {
      native.set('scroll_offset', value);
        return value;
    }
    public var showArrangeButton(get, set): Bool;
    function get_showArrangeButton(): Bool {
        return native.get('show_arrange_button');
    }
    function set_showArrangeButton(value: Bool): Bool {
      native.set('show_arrange_button', value);
        return value;
    }
    public var showGrid(get, set): Bool;
    function get_showGrid(): Bool {
        return native.get('show_grid');
    }
    function set_showGrid(value: Bool): Bool {
      native.set('show_grid', value);
        return value;
    }
    public var showGridButtons(get, set): Bool;
    function get_showGridButtons(): Bool {
        return native.get('show_grid_buttons');
    }
    function set_showGridButtons(value: Bool): Bool {
      native.set('show_grid_buttons', value);
        return value;
    }
    public var showMenu(get, set): Bool;
    function get_showMenu(): Bool {
        return native.get('show_menu');
    }
    function set_showMenu(value: Bool): Bool {
      native.set('show_menu', value);
        return value;
    }
    public var showMinimapButton(get, set): Bool;
    function get_showMinimapButton(): Bool {
        return native.get('show_minimap_button');
    }
    function set_showMinimapButton(value: Bool): Bool {
      native.set('show_minimap_button', value);
        return value;
    }
    public var showZoomButtons(get, set): Bool;
    function get_showZoomButtons(): Bool {
        return native.get('show_zoom_buttons');
    }
    function set_showZoomButtons(value: Bool): Bool {
      native.set('show_zoom_buttons', value);
        return value;
    }
    public var showZoomLabel(get, set): Bool;
    function get_showZoomLabel(): Bool {
        return native.get('show_zoom_label');
    }
    function set_showZoomLabel(value: Bool): Bool {
      native.set('show_zoom_label', value);
        return value;
    }
    public var snappingDistance(get, set): Int;
    function get_snappingDistance(): Int {
        return native.get('snapping_distance');
    }
    function set_snappingDistance(value: Int): Int {
      native.set('snapping_distance', value);
        return value;
    }
    public var snappingEnabled(get, set): Bool;
    function get_snappingEnabled(): Bool {
        return native.get('snapping_enabled');
    }
    function set_snappingEnabled(value: Bool): Bool {
      native.set('snapping_enabled', value);
        return value;
    }
    public var typeNames(get, set): Dictionary;
    function get_typeNames(): Dictionary {
        return native.get('type_names');
    }
    function set_typeNames(value: Dictionary): Dictionary {
      native.set('type_names', value);
        return value;
    }
    public var zoom(get, set): Float;
    function get_zoom(): Float {
        return native.get('zoom');
    }
    function set_zoom(value: Float): Float {
      native.set('zoom', value);
        return value;
    }
    public var zoomMax(get, set): Float;
    function get_zoomMax(): Float {
        return native.get('zoom_max');
    }
    function set_zoomMax(value: Float): Float {
      native.set('zoom_max', value);
        return value;
    }
    public var zoomMin(get, set): Float;
    function get_zoomMin(): Float {
        return native.get('zoom_min');
    }
    function set_zoomMin(value: Float): Float {
      native.set('zoom_min', value);
        return value;
    }
    public var zoomStep(get, set): Float;
    function get_zoomStep(): Float {
        return native.get('zoom_step');
    }
    function set_zoomStep(value: Float): Float {
      native.set('zoom_step', value);
        return value;
    }

	private var _beginNodeMove: Signal;
	public var beginNodeMove(get, default): Signal;
	function get_beginNodeMove(): Signal {
	    if (_beginNodeMove == null) {
	        _beginNodeMove = Signal.createFromObject(native, 'begin_node_move');
	    }
	    return _beginNodeMove;
	}
	private var _connectionDragEnded: Signal;
	public var connectionDragEnded(get, default): Signal;
	function get_connectionDragEnded(): Signal {
	    if (_connectionDragEnded == null) {
	        _connectionDragEnded = Signal.createFromObject(native, 'connection_drag_ended');
	    }
	    return _connectionDragEnded;
	}
	private var _connectionDragStarted: Signal;
	public var connectionDragStarted(get, default): Signal;
	function get_connectionDragStarted(): Signal {
	    if (_connectionDragStarted == null) {
	        _connectionDragStarted = Signal.createFromObject(native, 'connection_drag_started');
	    }
	    return _connectionDragStarted;
	}
	private var _connectionFromEmpty: Signal;
	public var connectionFromEmpty(get, default): Signal;
	function get_connectionFromEmpty(): Signal {
	    if (_connectionFromEmpty == null) {
	        _connectionFromEmpty = Signal.createFromObject(native, 'connection_from_empty');
	    }
	    return _connectionFromEmpty;
	}
	private var _connectionRequest: Signal;
	public var connectionRequest(get, default): Signal;
	function get_connectionRequest(): Signal {
	    if (_connectionRequest == null) {
	        _connectionRequest = Signal.createFromObject(native, 'connection_request');
	    }
	    return _connectionRequest;
	}
	private var _connectionToEmpty: Signal;
	public var connectionToEmpty(get, default): Signal;
	function get_connectionToEmpty(): Signal {
	    if (_connectionToEmpty == null) {
	        _connectionToEmpty = Signal.createFromObject(native, 'connection_to_empty');
	    }
	    return _connectionToEmpty;
	}
	private var _copyNodesRequest: Signal;
	public var copyNodesRequest(get, default): Signal;
	function get_copyNodesRequest(): Signal {
	    if (_copyNodesRequest == null) {
	        _copyNodesRequest = Signal.createFromObject(native, 'copy_nodes_request');
	    }
	    return _copyNodesRequest;
	}
	private var _cutNodesRequest: Signal;
	public var cutNodesRequest(get, default): Signal;
	function get_cutNodesRequest(): Signal {
	    if (_cutNodesRequest == null) {
	        _cutNodesRequest = Signal.createFromObject(native, 'cut_nodes_request');
	    }
	    return _cutNodesRequest;
	}
	private var _deleteNodesRequest: Signal;
	public var deleteNodesRequest(get, default): Signal;
	function get_deleteNodesRequest(): Signal {
	    if (_deleteNodesRequest == null) {
	        _deleteNodesRequest = Signal.createFromObject(native, 'delete_nodes_request');
	    }
	    return _deleteNodesRequest;
	}
	private var _disconnectionRequest: Signal;
	public var disconnectionRequest(get, default): Signal;
	function get_disconnectionRequest(): Signal {
	    if (_disconnectionRequest == null) {
	        _disconnectionRequest = Signal.createFromObject(native, 'disconnection_request');
	    }
	    return _disconnectionRequest;
	}
	private var _duplicateNodesRequest: Signal;
	public var duplicateNodesRequest(get, default): Signal;
	function get_duplicateNodesRequest(): Signal {
	    if (_duplicateNodesRequest == null) {
	        _duplicateNodesRequest = Signal.createFromObject(native, 'duplicate_nodes_request');
	    }
	    return _duplicateNodesRequest;
	}
	private var _endNodeMove: Signal;
	public var endNodeMove(get, default): Signal;
	function get_endNodeMove(): Signal {
	    if (_endNodeMove == null) {
	        _endNodeMove = Signal.createFromObject(native, 'end_node_move');
	    }
	    return _endNodeMove;
	}
	private var _frameRectChanged: Signal;
	public var frameRectChanged(get, default): Signal;
	function get_frameRectChanged(): Signal {
	    if (_frameRectChanged == null) {
	        _frameRectChanged = Signal.createFromObject(native, 'frame_rect_changed');
	    }
	    return _frameRectChanged;
	}
	private var _graphElementsLinkedToFrameRequest: Signal;
	public var graphElementsLinkedToFrameRequest(get, default): Signal;
	function get_graphElementsLinkedToFrameRequest(): Signal {
	    if (_graphElementsLinkedToFrameRequest == null) {
	        _graphElementsLinkedToFrameRequest = Signal.createFromObject(native, 'graph_elements_linked_to_frame_request');
	    }
	    return _graphElementsLinkedToFrameRequest;
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
	private var _pasteNodesRequest: Signal;
	public var pasteNodesRequest(get, default): Signal;
	function get_pasteNodesRequest(): Signal {
	    if (_pasteNodesRequest == null) {
	        _pasteNodesRequest = Signal.createFromObject(native, 'paste_nodes_request');
	    }
	    return _pasteNodesRequest;
	}
	private var _popupRequest: Signal;
	public var popupRequest(get, default): Signal;
	function get_popupRequest(): Signal {
	    if (_popupRequest == null) {
	        _popupRequest = Signal.createFromObject(native, 'popup_request');
	    }
	    return _popupRequest;
	}
	private var _scrollOffsetChanged: Signal;
	public var scrollOffsetChanged(get, default): Signal;
	function get_scrollOffsetChanged(): Signal {
	    if (_scrollOffsetChanged == null) {
	        _scrollOffsetChanged = Signal.createFromObject(native, 'scroll_offset_changed');
	    }
	    return _scrollOffsetChanged;
	}

  public function addValidConnectionType(fromType: Int, toType: Int): Void {
      var args = new ArrayList();
      args.append(fromType);
      args.append(toType);
      native.call('add_valid_connection_type', args);
  }
  public function addValidLeftDisconnectType(type: Int): Void {
      var args = new ArrayList();
      args.append(type);
      native.call('add_valid_left_disconnect_type', args);
  }
  public function addValidRightDisconnectType(type: Int): Void {
      var args = new ArrayList();
      args.append(type);
      native.call('add_valid_right_disconnect_type', args);
  }
  public function arrangeNodes(): Void {
      var args = new ArrayList();
      native.call('arrange_nodes', args);
  }
  public function attachGraphElementToFrame(element: String, frame: String): Void {
      var args = new ArrayList();
      args.append(element);
      args.append(frame);
      native.call('attach_graph_element_to_frame', args);
  }
  public function clearConnections(): Void {
      var args = new ArrayList();
      native.call('clear_connections', args);
  }
  public function connectNode(fromNode: String, fromPort: Int, toNode: String, toPort: Int, ?keepAlive: Bool): Int {
      var args = new ArrayList();
      args.append(fromNode);
      args.append(fromPort);
      args.append(toNode);
      args.append(toPort);
      if (keepAlive != null) {
          args.append(keepAlive);
      }
      return native.call('connect_node', args);
  }
  public function detachGraphElementFromFrame(element: String): Void {
      var args = new ArrayList();
      args.append(element);
      native.call('detach_graph_element_from_frame', args);
  }
  public function disconnectNode(fromNode: String, fromPort: Int, toNode: String, toPort: Int): Void {
      var args = new ArrayList();
      args.append(fromNode);
      args.append(fromPort);
      args.append(toNode);
      args.append(toPort);
      native.call('disconnect_node', args);
  }
  public function forceConnectionDragEnd(): Void {
      var args = new ArrayList();
      native.call('force_connection_drag_end', args);
  }
  public function getAttachedNodesOfFrame(frame: String): ArrayList {
      var args = new ArrayList();
      args.append(frame);
      return native.call('get_attached_nodes_of_frame', args);
  }
  public function getClosestConnectionAtPoint(point: Vector2, ?maxDistance: Float): Dictionary {
      var args = new ArrayList();
      args.append(point);
      if (maxDistance != null) {
          args.append(maxDistance);
      }
      return native.call('get_closest_connection_at_point', args);
  }
  public function getConnectionCount(fromNode: String, fromPort: Int): Int {
      var args = new ArrayList();
      args.append(fromNode);
      args.append(fromPort);
      return native.call('get_connection_count', args);
  }
  public function getConnectionLine(fromNode: Vector2, toNode: Vector2): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(fromNode);
      args.append(toNode);
      return native.call('get_connection_line', args);
  }
  public function getConnectionListFromNode(node: String): ArrayList {
      var args = new ArrayList();
      args.append(node);
      return native.call('get_connection_list_from_node', args);
  }
  public function getConnectionsIntersectingWithRect(rect: Rect2): ArrayList {
      var args = new ArrayList();
      args.append(rect);
      return native.call('get_connections_intersecting_with_rect', args);
  }
  public function getElementFrame(element: String): GraphFrame {
      var args = new ArrayList();
      args.append(element);
      var ref: NativeObject = native.call('get_element_frame', args);
      return new GraphFrame(ref);
  }
  public function getMenuHbox(): HBoxContainer {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_menu_hbox', args);
      return new HBoxContainer(ref);
  }
  public function isNodeConnected(fromNode: String, fromPort: Int, toNode: String, toPort: Int): Bool {
      var args = new ArrayList();
      args.append(fromNode);
      args.append(fromPort);
      args.append(toNode);
      args.append(toPort);
      return native.call('is_node_connected', args);
  }
  public function isValidConnectionType(fromType: Int, toType: Int): Bool {
      var args = new ArrayList();
      args.append(fromType);
      args.append(toType);
      return native.call('is_valid_connection_type', args);
  }
  public function removeValidConnectionType(fromType: Int, toType: Int): Void {
      var args = new ArrayList();
      args.append(fromType);
      args.append(toType);
      native.call('remove_valid_connection_type', args);
  }
  public function removeValidLeftDisconnectType(type: Int): Void {
      var args = new ArrayList();
      args.append(type);
      native.call('remove_valid_left_disconnect_type', args);
  }
  public function removeValidRightDisconnectType(type: Int): Void {
      var args = new ArrayList();
      args.append(type);
      native.call('remove_valid_right_disconnect_type', args);
  }
  public function setConnectionActivity(fromNode: String, fromPort: Int, toNode: String, toPort: Int, amount: Float): Void {
      var args = new ArrayList();
      args.append(fromNode);
      args.append(fromPort);
      args.append(toNode);
      args.append(toPort);
      args.append(amount);
      native.call('set_connection_activity', args);
  }
  public function setSelected(node: Node): Void {
      var args = new ArrayList();
      args.append(node.native);
      native.call('set_selected', args);
  }
}
