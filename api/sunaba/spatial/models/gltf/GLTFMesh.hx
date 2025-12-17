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

class GLTFMesh extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFMesh');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFMesh', native];
        scriptLoader.call('loadScript', args);
    }

    public var blendWeights(get, set): TypedArray<Float>;
    function get_blendWeights(): TypedArray<Float> {
        return native.get('blend_weights');
    }
    function set_blendWeights(value: TypedArray<Float>): TypedArray<Float> {
      native.set('blend_weights', value);
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
