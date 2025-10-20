package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class Material extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Material');
        }
        native = _native;
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
