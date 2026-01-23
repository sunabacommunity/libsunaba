package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class OccluderInstance3D extends VisualInstance3D {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('OccluderInstance3D');
        }
        this.native = _native;
    }

    public var bakeMask(get, set): Int;
    function get_bakeMask(): Int {
        return native.get('bake_mask');
    }
    function set_bakeMask(value: Int): Int {
      native.set('bake_mask', value);
        return value;
    }
    public var bakeSimplificationDistance(get, set): Float;
    function get_bakeSimplificationDistance(): Float {
        return native.get('bake_simplification_distance');
    }
    function set_bakeSimplificationDistance(value: Float): Float {
      native.set('bake_simplification_distance', value);
        return value;
    }
    public var occluder(get, set): Occluder3D;
    function get_occluder(): Occluder3D {
        var ref: NativeReference = native.get('occluder');
        return new Occluder3D(ref);
    }
    function set_occluder(value: Occluder3D): Occluder3D {
      native.set('occluder', value.native);
        return value;
    }


  public function getBakeMaskValue(layerNumber: Int): Bool {
      var args = new ArrayList();
      args.append(layerNumber);
      return native.call('get_bake_mask_value', args);
  }
  public function setBakeMaskValue(layerNumber: Int, value: Bool): Void {
      var args = new ArrayList();
      args.append(layerNumber);
      args.append(value);
      native.call('set_bake_mask_value', args);
  }
}
