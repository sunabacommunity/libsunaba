package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class Material extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Material');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Material', native];
        scriptLoader.call('loadScript', args);
    }

    public var nextPass(get, set): Material;
    function get_nextPass(): Material {
        var ref: NativeReference = native.get('next_pass');
        return new Material(ref);
    }
    function set_nextPass(value: Material): Material {
      native.set('next_pass', value.native);
        return value;
    }
    public var renderPriority(get, set): Int;
    function get_renderPriority(): Int {
        return native.get('render_priority');
    }
    function set_renderPriority(value: Int): Int {
      native.set('render_priority', value);
        return value;
    }


  public function createPlaceholder(): Resource {
      var args = new ArrayList();
      var ref: NativeReference = native.call('create_placeholder', args);
      return new Resource(ref);
  }
  public function inspectNativeShaderCode(): Void {
      var args = new ArrayList();
      native.call('inspect_native_shader_code', args);
  }
}
