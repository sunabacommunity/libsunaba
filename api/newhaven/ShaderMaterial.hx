package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class ShaderMaterial extends Material {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ShaderMaterial');
        }
        native = _native;
    }

    public var shader(get, set): Shader;
    function get_shader(): Shader {
        var ref: NativeReference = native.get('shader');
        return new Shader(ref);
    }
    function set_shader(value: Shader): Shader {
      native.set('shader', value.native);
        return value;
    }


  public function getShaderParameter(param: String): Variant {
      var args = new ArrayList();
      args.append(param);
      return native.call('get_shader_parameter', args);
  }
  public function setShaderParameter(param: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(param);
      args.append(value);
      native.call('set_shader_parameter', args);
  }
}
