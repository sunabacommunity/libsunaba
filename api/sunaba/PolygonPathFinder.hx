package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.core.Vector2;
import sunaba.core.Vector2;
import sunaba.core.TypedArray;
import sunaba.core.Rect2;

class PolygonPathFinder extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('PolygonPathFinder');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['PolygonPathFinder', native];
        scriptLoader.call('loadScript', args);
    }



  public function findPath(from: Vector2, to: Vector2): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(from);
      args.append(to);
      return native.call('find_path', args);
  }
  public function getBounds(): Rect2 {
      var args = new ArrayList();
      return native.call('get_bounds', args);
  }
  public function getClosestPoint(point: Vector2): Vector2 {
      var args = new ArrayList();
      args.append(point);
      return native.call('get_closest_point', args);
  }
  public function getIntersections(from: Vector2, to: Vector2): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(from);
      args.append(to);
      return native.call('get_intersections', args);
  }
  public function getPointPenalty(idx: Int): Float {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_point_penalty', args);
  }
  public function isPointInside(point: Vector2): Bool {
      var args = new ArrayList();
      args.append(point);
      return native.call('is_point_inside', args);
  }
  public function setPointPenalty(idx: Int, penalty: Float): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(penalty);
      native.call('set_point_penalty', args);
  }
  public function setup(points: TypedArray<Vector2>, connections: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(points);
      args.append(connections);
      native.call('setup', args);
  }
}
