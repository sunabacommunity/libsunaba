package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.core.Vector2;

class Curve extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('Curve');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Curve', native];
        scriptLoader.call('loadScript', args);
    }

    public var bakeResolution(get, set): Int;
    function get_bakeResolution(): Int {
        return native.get('bake_resolution');
    }
    function set_bakeResolution(value: Int): Int {
      native.set('bake_resolution', value);
        return value;
    }
    public var maxDomain(get, set): Float;
    function get_maxDomain(): Float {
        return native.get('max_domain');
    }
    function set_maxDomain(value: Float): Float {
      native.set('max_domain', value);
        return value;
    }
    public var maxValue(get, set): Float;
    function get_maxValue(): Float {
        return native.get('max_value');
    }
    function set_maxValue(value: Float): Float {
      native.set('max_value', value);
        return value;
    }
    public var minDomain(get, set): Float;
    function get_minDomain(): Float {
        return native.get('min_domain');
    }
    function set_minDomain(value: Float): Float {
      native.set('min_domain', value);
        return value;
    }
    public var minValue(get, set): Float;
    function get_minValue(): Float {
        return native.get('min_value');
    }
    function set_minValue(value: Float): Float {
      native.set('min_value', value);
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

	private var _domainChanged: Signal;
	public var domainChanged(get, default): Signal;
	function get_domainChanged(): Signal {
	    if (_domainChanged == null) {
	        _domainChanged = Signal.createFromReference(native, 'domain_changed');
	    }
	    return _domainChanged;
	}
	private var _rangeChanged: Signal;
	public var rangeChanged(get, default): Signal;
	function get_rangeChanged(): Signal {
	    if (_rangeChanged == null) {
	        _rangeChanged = Signal.createFromReference(native, 'range_changed');
	    }
	    return _rangeChanged;
	}

  public function addPoint(position: Vector2, ?leftTangent: Float, ?rightTangent: Float, ?leftMode: Int, ?rightMode: Int): Int {
      var args = new ArrayList();
      args.append(position);
      if (leftTangent != null) {
          args.append(leftTangent);
      }
      if (rightTangent != null) {
          args.append(rightTangent);
      }
      if (leftMode != null) {
          args.append(leftMode);
      }
      if (rightMode != null) {
          args.append(rightMode);
      }
      return native.call('add_point', args);
  }
  public function bake(): Void {
      var args = new ArrayList();
      native.call('bake', args);
  }
  public function cleanDupes(): Void {
      var args = new ArrayList();
      native.call('clean_dupes', args);
  }
  public function clearPoints(): Void {
      var args = new ArrayList();
      native.call('clear_points', args);
  }
  public function getDomainRange(): Float {
      var args = new ArrayList();
      return native.call('get_domain_range', args);
  }
  public function getPointLeftMode(index: Int): Int {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_point_left_mode', args);
  }
  public function getPointLeftTangent(index: Int): Float {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_point_left_tangent', args);
  }
  public function getPointPosition(index: Int): Vector2 {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_point_position', args);
  }
  public function getPointRightMode(index: Int): Int {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_point_right_mode', args);
  }
  public function getPointRightTangent(index: Int): Float {
      var args = new ArrayList();
      args.append(index);
      return native.call('get_point_right_tangent', args);
  }
  public function getValueRange(): Float {
      var args = new ArrayList();
      return native.call('get_value_range', args);
  }
  public function removePoint(index: Int): Void {
      var args = new ArrayList();
      args.append(index);
      native.call('remove_point', args);
  }
  public function sample(offset: Float): Float {
      var args = new ArrayList();
      args.append(offset);
      return native.call('sample', args);
  }
  public function sampleBaked(offset: Float): Float {
      var args = new ArrayList();
      args.append(offset);
      return native.call('sample_baked', args);
  }
  public function setPointLeftMode(index: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(mode);
      native.call('set_point_left_mode', args);
  }
  public function setPointLeftTangent(index: Int, tangent: Float): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(tangent);
      native.call('set_point_left_tangent', args);
  }
  public function setPointOffset(index: Int, offset: Float): Int {
      var args = new ArrayList();
      args.append(index);
      args.append(offset);
      return native.call('set_point_offset', args);
  }
  public function setPointRightMode(index: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(mode);
      native.call('set_point_right_mode', args);
  }
  public function setPointRightTangent(index: Int, tangent: Float): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(tangent);
      native.call('set_point_right_tangent', args);
  }
  public function setPointValue(index: Int, y: Float): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(y);
      native.call('set_point_value', args);
  }
}
