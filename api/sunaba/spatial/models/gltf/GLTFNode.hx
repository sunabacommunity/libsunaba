package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.TypedArray;
import sunaba.core.Vector3;
import sunaba.core.Quaternion;
import sunaba.core.Signal;

class GLTFNode extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFNode');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFNode', native];
        scriptLoader.call('loadScript', args);
    }

    public var camera(get, set): Int;
    function get_camera(): Int {
        return native.get('camera');
    }
    function set_camera(value: Int): Int {
      native.set('camera', value);
        return value;
    }
    public var children(get, set): TypedArray<Int>;
    function get_children(): TypedArray<Int> {
        return native.get('children');
    }
    function set_children(value: TypedArray<Int>): TypedArray<Int> {
      native.set('children', value);
        return value;
    }
    public var height(get, set): Int;
    function get_height(): Int {
        return native.get('height');
    }
    function set_height(value: Int): Int {
      native.set('height', value);
        return value;
    }
    public var light(get, set): Int;
    function get_light(): Int {
        return native.get('light');
    }
    function set_light(value: Int): Int {
      native.set('light', value);
        return value;
    }
    public var mesh(get, set): Int;
    function get_mesh(): Int {
        return native.get('mesh');
    }
    function set_mesh(value: Int): Int {
      native.set('mesh', value);
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
    public var parent(get, set): Int;
    function get_parent(): Int {
        return native.get('parent');
    }
    function set_parent(value: Int): Int {
      native.set('parent', value);
        return value;
    }
    public var position(get, set): Vector3;
    function get_position(): Vector3 {
        return native.get('position');
    }
    function set_position(value: Vector3): Vector3 {
      native.set('position', value);
        return value;
    }
    public var rotation(get, set): Quaternion;
    function get_rotation(): Quaternion {
        return native.get('rotation');
    }
    function set_rotation(value: Quaternion): Quaternion {
      native.set('rotation', value);
        return value;
    }
    public var scale(get, set): Vector3;
    function get_scale(): Vector3 {
        return native.get('scale');
    }
    function set_scale(value: Vector3): Vector3 {
      native.set('scale', value);
        return value;
    }
    public var skeleton(get, set): Int;
    function get_skeleton(): Int {
        return native.get('skeleton');
    }
    function set_skeleton(value: Int): Int {
      native.set('skeleton', value);
        return value;
    }
    public var skin(get, set): Int;
    function get_skin(): Int {
        return native.get('skin');
    }
    function set_skin(value: Int): Int {
      native.set('skin', value);
        return value;
    }
    public var visible(get, set): Bool;
    function get_visible(): Bool {
        return native.get('visible');
    }
    function set_visible(value: Bool): Bool {
      native.set('visible', value);
        return value;
    }


  public function appendChildIndex(childIndex: Int): Void {
      var args = new ArrayList();
      args.append(childIndex);
      native.call('append_child_index', args);
  }
  public function getAdditionalData(extensionName: String): Variant {
      var args = new ArrayList();
      args.append(extensionName);
      return native.call('get_additional_data', args);
  }
  public function getSceneNodePath(gltfState: GLTFState, ?handleSkeletons: Bool): String {
      var args = new ArrayList();
      args.append(gltfState.native);
      if (handleSkeletons != null) {
          args.append(handleSkeletons);
      }
      return native.call('get_scene_node_path', args);
  }
  public function setAdditionalData(extensionName: String, additionalData: Variant): Void {
      var args = new ArrayList();
      args.append(extensionName);
      args.append(additionalData);
      native.call('set_additional_data', args);
  }
}
