package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Signal;

class GLTFAnimation extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFAnimation');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFAnimation', native];
        scriptLoader.call('loadScript', args);
    }

    public var loop(get, set): Bool;
    function get_loop(): Bool {
        return native.get('loop');
    }
    function set_loop(value: Bool): Bool {
      native.set('loop', value);
        return value;
    }
    public var originalName(get, set): String;
    function get_originalName(): String {
        return native.get('original_name');
    }
    function set_originalName(value: String): String {
      native.set('original_name', value);
        return value;
    }


  public function getAdditionalData(extensionName: String): Variant {
      var args = new ArrayList();
      args.append(extensionName);
      return native.call('get_additional_data', args);
  }
  public function setAdditionalData(extensionName: String, additionalData: Variant): Void {
      var args = new ArrayList();
      args.append(extensionName);
      args.append(additionalData);
      native.call('set_additional_data', args);
  }
}
