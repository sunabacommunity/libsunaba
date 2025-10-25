package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class Shader extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Shader');
        }
        native = _native;
    }

    public var code(get, set): String;
    function get_code(): String {
        return native.get('code');
    }
    function set_code(value: String): String {
      native.set('code', value);
        return value;
    }


  public function getDefaultTextureParameter(name: String, ?index: Int): Texture {
      var args = new ArrayList();
      args.append(name);
      if (index != null) {
          args.append(index);
      }
      var ref: NativeReference = native.call('get_default_texture_parameter', args);
      return new Texture(ref);
  }
  public function getMode(): Int {
      var args = new ArrayList();
      return native.call('get_mode', args);
  }
  public function getShaderUniformList(?getGroups: Bool): ArrayList {
      var args = new ArrayList();
      if (getGroups != null) {
          args.append(getGroups);
      }
      return native.call('get_shader_uniform_list', args);
  }
  public function inspectNativeShaderCode(): Void {
      var args = new ArrayList();
      native.call('inspect_native_shader_code', args);
  }
  public function setDefaultTextureParameter(name: String, texture: Texture, ?index: Int): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(texture.native);
      if (index != null) {
          args.append(index);
      }
      native.call('set_default_texture_parameter', args);
  }
}
