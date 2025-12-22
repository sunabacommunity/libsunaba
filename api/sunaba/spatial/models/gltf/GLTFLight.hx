package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Color;
import sunaba.core.Signal;
import sunaba.core.Dictionary;

class GLTFLight extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFLight');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFLight', native];
        scriptLoader.call('loadScript', args);
    }

    public var color(get, set): Color;
    function get_color(): Color {
        return native.get('color');
    }
    function set_color(value: Color): Color {
      native.set('color', value);
        return value;
    }
    public var innerConeAngle(get, set): Float;
    function get_innerConeAngle(): Float {
        return native.get('inner_cone_angle');
    }
    function set_innerConeAngle(value: Float): Float {
      native.set('inner_cone_angle', value);
        return value;
    }
    public var intensity(get, set): Float;
    function get_intensity(): Float {
        return native.get('intensity');
    }
    function set_intensity(value: Float): Float {
      native.set('intensity', value);
        return value;
    }
    public var lightType(get, set): String;
    function get_lightType(): String {
        return native.get('light_type');
    }
    function set_lightType(value: String): String {
      native.set('light_type', value);
        return value;
    }
    public var outerConeAngle(get, set): Float;
    function get_outerConeAngle(): Float {
        return native.get('outer_cone_angle');
    }
    function set_outerConeAngle(value: Float): Float {
      native.set('outer_cone_angle', value);
        return value;
    }
    public var range(get, set): Float;
    function get_range(): Float {
        return native.get('range');
    }
    function set_range(value: Float): Float {
      native.set('range', value);
        return value;
    }


  public static function fromDictionary(dictionary: Dictionary): GLTFLight {
      var args = new ArrayList();
      args.append(dictionary);
      var ref: NativeReference = NativeObject.callStatic('GLTFLight', 'from_dictionary', args);
      return new GLTFLight(ref);
  }
  public static function fromNode(lightNode: Variant): GLTFLight {
      var args = new ArrayList();
      args.append(lightNode);
      var ref: NativeReference = NativeObject.callStatic('GLTFLight', 'from_node', args);
      return new GLTFLight(ref);
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
  public function toDictionary(): Dictionary {
      var args = new ArrayList();
      return native.call('to_dictionary', args);
  }

  public function toNode(): Node {
	  var args = new ArrayList();
	  return new Node(native.call('to_node', args));
  }
}
