package newhaven.spatial.lighting;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.Vector3;
import newhaven.core.ByteArray;
import newhaven.core.TypedArray;
import newhaven.core.ArrayList;

class VoxelGIData extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('VoxelGIData');
        }
        native = _native;
    }

    public var bias(get, set): Float;
    function get_bias(): Float {
        return native.get('bias');
    }
    function set_bias(value: Float): Float {
      native.set('bias', value);
        return value;
    }
    public var dynamicRange(get, set): Float;
    function get_dynamicRange(): Float {
        return native.get('dynamic_range');
    }
    function set_dynamicRange(value: Float): Float {
      native.set('dynamic_range', value);
        return value;
    }
    public var energy(get, set): Float;
    function get_energy(): Float {
        return native.get('energy');
    }
    function set_energy(value: Float): Float {
      native.set('energy', value);
        return value;
    }
    public var interior(get, set): Bool;
    function get_interior(): Bool {
        return native.get('interior');
    }
    function set_interior(value: Bool): Bool {
      native.set('interior', value);
        return value;
    }
    public var normalBias(get, set): Float;
    function get_normalBias(): Float {
        return native.get('normal_bias');
    }
    function set_normalBias(value: Float): Float {
      native.set('normal_bias', value);
        return value;
    }
    public var propagation(get, set): Float;
    function get_propagation(): Float {
        return native.get('propagation');
    }
    function set_propagation(value: Float): Float {
      native.set('propagation', value);
        return value;
    }
    public var useTwoBounces(get, set): Bool;
    function get_useTwoBounces(): Bool {
        return native.get('use_two_bounces');
    }
    function set_useTwoBounces(value: Bool): Bool {
      native.set('use_two_bounces', value);
        return value;
    }

  public function allocate(toCellXform: Variant, aabb: Variant, octreeSize: Vector3, octreeCells: ByteArray, dataCells: ByteArray, distanceField: ByteArray, levelCounts: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(toCellXform);
      args.append(aabb);
      args.append(octreeSize);
      args.append(octreeCells);
      args.append(dataCells);
      args.append(distanceField);
      args.append(levelCounts);
      native.call('allocate', args);
  }
  public function getDataCells(): ByteArray {
      var args = new ArrayList();
      return native.call('get_data_cells', args);
  }
  public function getLevelCounts(): TypedArray<Int> {
      var args = new ArrayList();
      return native.call('get_level_counts', args);
  }
  public function getOctreeCells(): ByteArray {
      var args = new ArrayList();
      return native.call('get_octree_cells', args);
  }
  public function getOctreeSize(): Vector3 {
      var args = new ArrayList();
      return native.call('get_octree_size', args);
  }
}
