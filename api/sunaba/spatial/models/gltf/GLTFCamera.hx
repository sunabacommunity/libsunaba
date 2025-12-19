package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Signal;
import sunaba.core.Dictionary;

class GLTFCamera extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFCamera');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFCamera', native];
        scriptLoader.call('loadScript', args);
    }

    public var depthFar(get, set): Float;
    function get_depthFar(): Float {
        return native.get('depth_far');
    }
    function set_depthFar(value: Float): Float {
      native.set('depth_far', value);
        return value;
    }
    public var depthNear(get, set): Float;
    function get_depthNear(): Float {
        return native.get('depth_near');
    }
    function set_depthNear(value: Float): Float {
      native.set('depth_near', value);
        return value;
    }
    public var fov(get, set): Float;
    function get_fov(): Float {
        return native.get('fov');
    }
    function set_fov(value: Float): Float {
      native.set('fov', value);
        return value;
    }
    public var perspective(get, set): Bool;
    function get_perspective(): Bool {
        return native.get('perspective');
    }
    function set_perspective(value: Bool): Bool {
      native.set('perspective', value);
        return value;
    }
    public var sizeMag(get, set): Float;
    function get_sizeMag(): Float {
        return native.get('size_mag');
    }
    function set_sizeMag(value: Float): Float {
      native.set('size_mag', value);
        return value;
    }


  public static function fromDictionary(dictionary: Dictionary): GLTFCamera {
      var args = new ArrayList();
      args.append(dictionary);
      var ref: NativeReference = NativeObject.callStatic('GLTFCamera', 'from_dictionary', args);
      return new GLTFCamera(ref);
  }
  public static function fromNode(cameraNode: Variant): GLTFCamera {
      var args = new ArrayList();
      args.append(cameraNode);
      var ref: NativeReference = NativeObject.callStatic('GLTFCamera', 'from_node', args);
      return new GLTFCamera(ref);
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
