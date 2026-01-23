package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.TypedArray;
import sunaba.core.Signal;
import sunaba.core.Dictionary;

class GLTFAccessor extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFAccessor');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFAccessor', native];
        scriptLoader.call('loadScript', args);
    }

    public var accessorType(get, set): Int;
    function get_accessorType(): Int {
        return native.get('accessor_type');
    }
    function set_accessorType(value: Int): Int {
      native.set('accessor_type', value);
        return value;
    }
    public var bufferView(get, set): Int;
    function get_bufferView(): Int {
        return native.get('buffer_view');
    }
    function set_bufferView(value: Int): Int {
      native.set('buffer_view', value);
        return value;
    }
    public var byteOffset(get, set): Int;
    function get_byteOffset(): Int {
        return native.get('byte_offset');
    }
    function set_byteOffset(value: Int): Int {
      native.set('byte_offset', value);
        return value;
    }
    public var componentType(get, set): Int;
    function get_componentType(): Int {
        return native.get('component_type');
    }
    function set_componentType(value: Int): Int {
      native.set('component_type', value);
        return value;
    }
    public var count(get, set): Int;
    function get_count(): Int {
        return native.get('count');
    }
    function set_count(value: Int): Int {
      native.set('count', value);
        return value;
    }
    public var max(get, set): TypedArray<Float>;
    function get_max(): TypedArray<Float> {
        return native.get('max');
    }
    function set_max(value: TypedArray<Float>): TypedArray<Float> {
      native.set('max', value);
        return value;
    }
    public var min(get, set): TypedArray<Float>;
    function get_min(): TypedArray<Float> {
        return native.get('min');
    }
    function set_min(value: TypedArray<Float>): TypedArray<Float> {
      native.set('min', value);
        return value;
    }
    public var normalized(get, set): Bool;
    function get_normalized(): Bool {
        return native.get('normalized');
    }
    function set_normalized(value: Bool): Bool {
      native.set('normalized', value);
        return value;
    }
    public var sparseCount(get, set): Int;
    function get_sparseCount(): Int {
        return native.get('sparse_count');
    }
    function set_sparseCount(value: Int): Int {
      native.set('sparse_count', value);
        return value;
    }
    public var sparseIndicesBufferView(get, set): Int;
    function get_sparseIndicesBufferView(): Int {
        return native.get('sparse_indices_buffer_view');
    }
    function set_sparseIndicesBufferView(value: Int): Int {
      native.set('sparse_indices_buffer_view', value);
        return value;
    }
    public var sparseIndicesByteOffset(get, set): Int;
    function get_sparseIndicesByteOffset(): Int {
        return native.get('sparse_indices_byte_offset');
    }
    function set_sparseIndicesByteOffset(value: Int): Int {
      native.set('sparse_indices_byte_offset', value);
        return value;
    }
    public var sparseIndicesComponentType(get, set): Int;
    function get_sparseIndicesComponentType(): Int {
        return native.get('sparse_indices_component_type');
    }
    function set_sparseIndicesComponentType(value: Int): Int {
      native.set('sparse_indices_component_type', value);
        return value;
    }
    public var sparseValuesBufferView(get, set): Int;
    function get_sparseValuesBufferView(): Int {
        return native.get('sparse_values_buffer_view');
    }
    function set_sparseValuesBufferView(value: Int): Int {
      native.set('sparse_values_buffer_view', value);
        return value;
    }
    public var sparseValuesByteOffset(get, set): Int;
    function get_sparseValuesByteOffset(): Int {
        return native.get('sparse_values_byte_offset');
    }
    function set_sparseValuesByteOffset(value: Int): Int {
      native.set('sparse_values_byte_offset', value);
        return value;
    }
    public var type(get, set): Int;
    function get_type(): Int {
        return native.get('type');
    }
    function set_type(value: Int): Int {
      native.set('type', value);
        return value;
    }


  public static function fromDictionary(dictionary: Dictionary): GLTFAccessor {
      var args = new ArrayList();
      args.append(dictionary);
      var ref: NativeReference = NativeObject.callStatic('GLTFAccessor', 'from_dictionary', args);
      return new GLTFAccessor(ref);
  }
  public function toDictionary(): Dictionary {
      var args = new ArrayList();
      return native.call('to_dictionary', args);
  }
}
