package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.Vector3;
import newhaven.core.ArrayList;
import newhaven.core.Vector3;
import newhaven.core.TypedArray;

class Curve3D extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Curve3D');
        }
        native = _native;
    }

    public var bakeInterval(get, set): Float;
    function get_bakeInterval(): Float {
        return native.get('bake_interval');
    }
    function set_bakeInterval(value: Float): Float {
      native.set('bake_interval', value);
        return value;
    }
    public var closed(get, set): Bool;
    function get_closed(): Bool {
        return native.get('closed');
    }
    function set_closed(value: Bool): Bool {
      native.set('closed', value);
        return value;
    }
    public var pointCount(get, set): Int;
    function get_pointCount(): Int {
        return native.get('point_count');
    }
    function set_pointCount(value: Int): Int {
      native.set('point_count', value);
        return value;
    }
    public var upVectorEnabled(get, set): Bool;
    function get_upVectorEnabled(): Bool {
        return native.get('up_vector_enabled');
    }
    function set_upVectorEnabled(value: Bool): Bool {
      native.set('up_vector_enabled', value);
        return value;
    }

  public function addPoint(position: Vector3, ?pIn: Vector3, ?out: Vector3, ?index: Int): Void {
      var args = new ArrayList();
      args.append(position);
      if (pIn != null) {
          args.append(pIn);
      }
      if (out != null) {
          args.append(out);
      }
      if (index != null) {
          args.append(index);
      }
      native.call('add_point', args);
  }
  public function clearPoints(): Void {
      var args = new ArrayList();
      native.call('clear_points', args);
  }
  public function getBakedLength(): Float {
      var args = new ArrayList();
      return native.call('get_baked_length', args);
  }
  public function getBakedPoints(): TypedArray<Vector3> {
      var args = new ArrayList();
      return native.call('get_baked_points', args);
  }
  public function getBakedTilts(): TypedArray<Float> {
      var args = new ArrayList();
      return native.call('get_baked_tilts', args);
  }
  public function getBakedUpVectors(): TypedArray<Vector3> {
      var args = new ArrayList();
      return native.call('get_baked_up_vectors', args);
  }
  public function getClosestOffset(toPoint: Vector3): Float {
      var args = new ArrayList();
      args.append(toPoint);
      return native.call('get_closest_offset', args);
  }
  public function getClosestPoint(toPoint: Vector3): Vector3 {
      var args = new ArrayList();
      args.append(toPoint);
      return native.call('get_closest_point', args);
  }
  public function getPointIn(idx: Int): Vector3 {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_point_in', args);
  }
  public function getPointOut(idx: Int): Vector3 {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_point_out', args);
  }
  public function getPointPosition(idx: Int): Vector3 {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_point_position', args);
  }
  public function getPointTilt(idx: Int): Float {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_point_tilt', args);
  }
  public function removePoint(idx: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      native.call('remove_point', args);
  }
  public function sample(idx: Int, t: Float): Vector3 {
      var args = new ArrayList();
      args.append(idx);
      args.append(t);
      return native.call('sample', args);
  }
  public function sampleBaked(?offset: Float, ?cubic: Bool): Vector3 {
      var args = new ArrayList();
      if (offset != null) {
          args.append(offset);
      }
      if (cubic != null) {
          args.append(cubic);
      }
      return native.call('sample_baked', args);
  }
  public function sampleBakedUpVector(offset: Float, ?applyTilt: Bool): Vector3 {
      var args = new ArrayList();
      args.append(offset);
      if (applyTilt != null) {
          args.append(applyTilt);
      }
      return native.call('sample_baked_up_vector', args);
  }
  public function samplef(fofs: Float): Vector3 {
      var args = new ArrayList();
      args.append(fofs);
      return native.call('samplef', args);
  }
  public function setPointIn(idx: Int, position: Vector3): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(position);
      native.call('set_point_in', args);
  }
  public function setPointOut(idx: Int, position: Vector3): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(position);
      native.call('set_point_out', args);
  }
  public function setPointPosition(idx: Int, position: Vector3): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(position);
      native.call('set_point_position', args);
  }
  public function setPointTilt(idx: Int, tilt: Float): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(tilt);
      native.call('set_point_tilt', args);
  }
  public function tessellate(?maxStages: Int, ?toleranceDegrees: Float): TypedArray<Vector3> {
      var args = new ArrayList();
      if (maxStages != null) {
          args.append(maxStages);
      }
      if (toleranceDegrees != null) {
          args.append(toleranceDegrees);
      }
      return native.call('tessellate', args);
  }
  public function tessellateEvenLength(?maxStages: Int, ?toleranceLength: Float): TypedArray<Vector3> {
      var args = new ArrayList();
      if (maxStages != null) {
          args.append(maxStages);
      }
      if (toleranceLength != null) {
          args.append(toleranceLength);
      }
      return native.call('tessellate_even_length', args);
  }
}
