package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector2;
import newhaven.core.Dictionary;
import newhaven.core.ArrayList;
import newhaven.core.Vector2;
import newhaven.core.TypedArray;
import newhaven.core.Rect2;
import newhaven.Node;

class GraphEdit extends Control {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('GraphEdit');
        }
        native = _native;
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
