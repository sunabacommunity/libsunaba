package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.Vector3;
import sunaba.core.ArrayList;
import sunaba.core.Vector3;
import sunaba.core.TypedArray;

class Geometry3DService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('Geometry3D');
        }
        return _native;
    }



  public static function clipPolygon(points: TypedArray<Vector3>, plane: Variant): TypedArray<Vector3> {
      var args = new ArrayList();
      args.append(points);
      args.append(plane);
      return getNative().call('clip_polygon', args);
  }
  public static function computeConvexMeshPoints(planes: Variant): TypedArray<Vector3> {
      var args = new ArrayList();
      args.append(planes);
      return getNative().call('compute_convex_mesh_points', args);
  }
  public static function getClosestPointToSegment(point: Vector3, s1: Vector3, s2: Vector3): Vector3 {
      var args = new ArrayList();
      args.append(point);
      args.append(s1);
      args.append(s2);
      return getNative().call('get_closest_point_to_segment', args);
  }
  public static function getClosestPointToSegmentUncapped(point: Vector3, s1: Vector3, s2: Vector3): Vector3 {
      var args = new ArrayList();
      args.append(point);
      args.append(s1);
      args.append(s2);
      return getNative().call('get_closest_point_to_segment_uncapped', args);
  }
  public static function getClosestPointsBetweenSegments(p1: Vector3, p2: Vector3, q1: Vector3, q2: Vector3): TypedArray<Vector3> {
      var args = new ArrayList();
      args.append(p1);
      args.append(p2);
      args.append(q1);
      args.append(q2);
      return getNative().call('get_closest_points_between_segments', args);
  }
  public static function getTriangleBarycentricCoords(point: Vector3, a: Vector3, b: Vector3, c: Vector3): Vector3 {
      var args = new ArrayList();
      args.append(point);
      args.append(a);
      args.append(b);
      args.append(c);
      return getNative().call('get_triangle_barycentric_coords', args);
  }
  public static function rayIntersectsTriangle(from: Vector3, dir: Vector3, a: Vector3, b: Vector3, c: Vector3): Variant {
      var args = new ArrayList();
      args.append(from);
      args.append(dir);
      args.append(a);
      args.append(b);
      args.append(c);
      return getNative().call('ray_intersects_triangle', args);
  }
  public static function segmentIntersectsConvex(from: Vector3, to: Vector3, planes: Variant): TypedArray<Vector3> {
      var args = new ArrayList();
      args.append(from);
      args.append(to);
      args.append(planes);
      return getNative().call('segment_intersects_convex', args);
  }
  public static function segmentIntersectsCylinder(from: Vector3, to: Vector3, height: Float, radius: Float): TypedArray<Vector3> {
      var args = new ArrayList();
      args.append(from);
      args.append(to);
      args.append(height);
      args.append(radius);
      return getNative().call('segment_intersects_cylinder', args);
  }
  public static function segmentIntersectsSphere(from: Vector3, to: Vector3, spherePosition: Vector3, sphereRadius: Float): TypedArray<Vector3> {
      var args = new ArrayList();
      args.append(from);
      args.append(to);
      args.append(spherePosition);
      args.append(sphereRadius);
      return getNative().call('segment_intersects_sphere', args);
  }
  public static function segmentIntersectsTriangle(from: Vector3, to: Vector3, a: Vector3, b: Vector3, c: Vector3): Variant {
      var args = new ArrayList();
      args.append(from);
      args.append(to);
      args.append(a);
      args.append(b);
      args.append(c);
      return getNative().call('segment_intersects_triangle', args);
  }
  public static function tetrahedralizeDelaunay(points: TypedArray<Vector3>): TypedArray<Int> {
      var args = new ArrayList();
      args.append(points);
      return getNative().call('tetrahedralize_delaunay', args);
  }
}
