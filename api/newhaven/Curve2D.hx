package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Vector2;
import newhaven.core.ArrayList;
import newhaven.core.Vector2;
import newhaven.core.TypedArray;

class Curve2D extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Curve2D');
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
    public var pointCount(get, set): Int;
    function get_pointCount(): Int {
        return native.get('point_count');
    }
    function set_pointCount(value: Int): Int {
      native.set('point_count', value);
        return value;
    }

  public function addPoint(position: Vector2, ?pIn: Vector2, ?out: Vector2, ?index: Int): Void {
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
  public function getBakedPoints(): TypedArray<Vector2> {
      var args = new ArrayList();
      return native.call('get_baked_points', args);
  }
  public function getClosestOffset(toPoint: Vector2): Float {
      var args = new ArrayList();
      args.append(toPoint);
      return native.call('get_closest_offset', args);
  }
  public function getClosestPoint(toPoint: Vector2): Vector2 {
      var args = new ArrayList();
      args.append(toPoint);
      return native.call('get_closest_point', args);
  }
  public function getPointIn(idx: Int): Vector2 {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_point_in', args);
  }
  public function getPointOut(idx: Int): Vector2 {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_point_out', args);
  }
  public function getPointPosition(idx: Int): Vector2 {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_point_position', args);
  }
  public function removePoint(idx: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      native.call('remove_point', args);
  }
  public function sample(idx: Int, t: Float): Vector2 {
      var args = new ArrayList();
      args.append(idx);
      args.append(t);
      return native.call('sample', args);
  }
  public function sampleBaked(?offset: Float, ?cubic: Bool): Vector2 {
      var args = new ArrayList();
      if (offset != null) {
          args.append(offset);
      }
      if (cubic != null) {
          args.append(cubic);
      }
      return native.call('sample_baked', args);
  }
  public function samplef(fofs: Float): Vector2 {
      var args = new ArrayList();
      args.append(fofs);
      return native.call('samplef', args);
  }
  public function setPointIn(idx: Int, position: Vector2): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(position);
      native.call('set_point_in', args);
  }
  public function setPointOut(idx: Int, position: Vector2): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(position);
      native.call('set_point_out', args);
  }
  public function setPointPosition(idx: Int, position: Vector2): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(position);
      native.call('set_point_position', args);
  }
  public function tessellate(?maxStages: Int, ?toleranceDegrees: Float): TypedArray<Vector2> {
      var args = new ArrayList();
      if (maxStages != null) {
          args.append(maxStages);
      }
      if (toleranceDegrees != null) {
          args.append(toleranceDegrees);
      }
      return native.call('tessellate', args);
  }
  public function tessellateEvenLength(?maxStages: Int, ?toleranceLength: Float): TypedArray<Vector2> {
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
