package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Signal;
import sunaba.core.ByteArray;

class GLTFBufferView extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFBufferView');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFBufferView', native];
        scriptLoader.call('loadScript', args);
    }

    public var buffer(get, set): Int;
    function get_buffer(): Int {
        return native.get('buffer');
    }
    function set_buffer(value: Int): Int {
      native.set('buffer', value);
        return value;
    }
    public var byteLength(get, set): Int;
    function get_byteLength(): Int {
        return native.get('byte_length');
    }
    function set_byteLength(value: Int): Int {
      native.set('byte_length', value);
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
    public var byteStride(get, set): Int;
    function get_byteStride(): Int {
        return native.get('byte_stride');
    }
    function set_byteStride(value: Int): Int {
      native.set('byte_stride', value);
        return value;
    }
    public var indices(get, set): Bool;
    function get_indices(): Bool {
        return native.get('indices');
    }
    function set_indices(value: Bool): Bool {
      native.set('indices', value);
        return value;
    }
    public var vertexAttributes(get, set): Bool;
    function get_vertexAttributes(): Bool {
        return native.get('vertex_attributes');
    }
    function set_vertexAttributes(value: Bool): Bool {
      native.set('vertex_attributes', value);
        return value;
    }


  public function loadBufferViewData(state: GLTFState): ByteArray {
      var args = new ArrayList();
      args.append(state.native);
      return native.call('load_buffer_view_data', args);
  }
}
