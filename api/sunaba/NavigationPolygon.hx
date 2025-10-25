package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Rect2;
import sunaba.core.Vector2;
import sunaba.core.Signal;
import sunaba.core.Vector2;
import sunaba.core.TypedArray;
import sunaba.core.ArrayList;

class NavigationPolygon extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('NavigationPolygon');
        }
        native = _native;
    }

    public var agentRadius(get, set): Float;
    function get_agentRadius(): Float {
        return native.get('agent_radius');
    }
    function set_agentRadius(value: Float): Float {
      native.set('agent_radius', value);
        return value;
    }
    public var bakingRect(get, set): Rect2;
    function get_bakingRect(): Rect2 {
        return native.get('baking_rect');
    }
    function set_bakingRect(value: Rect2): Rect2 {
      native.set('baking_rect', value);
        return value;
    }
    public var bakingRectOffset(get, set): Vector2;
    function get_bakingRectOffset(): Vector2 {
        return native.get('baking_rect_offset');
    }
    function set_bakingRectOffset(value: Vector2): Vector2 {
      native.set('baking_rect_offset', value);
        return value;
    }
    public var borderSize(get, set): Float;
    function get_borderSize(): Float {
        return native.get('border_size');
    }
    function set_borderSize(value: Float): Float {
      native.set('border_size', value);
        return value;
    }
    public var cellSize(get, set): Float;
    function get_cellSize(): Float {
        return native.get('cell_size');
    }
    function set_cellSize(value: Float): Float {
      native.set('cell_size', value);
        return value;
    }
    public var parsedCollisionMask(get, set): Int;
    function get_parsedCollisionMask(): Int {
        return native.get('parsed_collision_mask');
    }
    function set_parsedCollisionMask(value: Int): Int {
      native.set('parsed_collision_mask', value);
        return value;
    }
    public var parsedGeometryType(get, set): Int;
    function get_parsedGeometryType(): Int {
        return native.get('parsed_geometry_type');
    }
    function set_parsedGeometryType(value: Int): Int {
      native.set('parsed_geometry_type', value);
        return value;
    }
    public var samplePartitionType(get, set): Int;
    function get_samplePartitionType(): Int {
        return native.get('sample_partition_type');
    }
    function set_samplePartitionType(value: Int): Int {
      native.set('sample_partition_type', value);
        return value;
    }
    public var sourceGeometryGroupName(get, set): String;
    function get_sourceGeometryGroupName(): String {
        return native.get('source_geometry_group_name');
    }
    function set_sourceGeometryGroupName(value: String): String {
      native.set('source_geometry_group_name', value);
        return value;
    }
    public var sourceGeometryMode(get, set): Int;
    function get_sourceGeometryMode(): Int {
        return native.get('source_geometry_mode');
    }
    function set_sourceGeometryMode(value: Int): Int {
      native.set('source_geometry_mode', value);
        return value;
    }


  public function addOutline(outline: TypedArray<Vector2>): Void {
      var args = new ArrayList();
      args.append(outline);
      native.call('add_outline', args);
  }
  public function addOutlineAtIndex(outline: TypedArray<Vector2>, index: Int): Void {
      var args = new ArrayList();
      args.append(outline);
      args.append(index);
      native.call('add_outline_at_index', args);
  }
  public function addPolygon(polygon: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(polygon);
      native.call('add_polygon', args);
  }
  public function clear(): Void {
      var args = new ArrayList();
      native.call('clear', args);
  }
  public function clearOutlines(): Void {
      var args = new ArrayList();
      native.call('clear_outlines', args);
  }
  public function clearPolygons(): Void {
      var args = new ArrayList();
      native.call('clear_polygons', args);
  }
  public function getOutline(idx: Int): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_outline', args);
  }
  public function getOutlineCount(): Int {
      var args = new ArrayList();
      return native.call('get_outline_count', args);
  }
  public function getParsedCollisionMaskValue(layerNumber: Int): Bool {
      var args = new ArrayList();
      args.append(layerNumber);
      return native.call('get_parsed_collision_mask_value', args);
  }
  public function getPolygon(idx: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_polygon', args);
  }
  public function getPolygonCount(): Int {
      var args = new ArrayList();
      return native.call('get_polygon_count', args);
  }
  public function getVertices(): TypedArray<Vector2> {
      var args = new ArrayList();
      return native.call('get_vertices', args);
  }
  public function makePolygonsFromOutlines(): Void {
      var args = new ArrayList();
      native.call('make_polygons_from_outlines', args);
  }
  public function removeOutline(idx: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      native.call('remove_outline', args);
  }
  public function setOutline(idx: Int, outline: TypedArray<Vector2>): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(outline);
      native.call('set_outline', args);
  }
  public function setParsedCollisionMaskValue(layerNumber: Int, value: Bool): Void {
      var args = new ArrayList();
      args.append(layerNumber);
      args.append(value);
      native.call('set_parsed_collision_mask_value', args);
  }
  public function setVertices(vertices: TypedArray<Vector2>): Void {
      var args = new ArrayList();
      args.append(vertices);
      native.call('set_vertices', args);
  }
}
