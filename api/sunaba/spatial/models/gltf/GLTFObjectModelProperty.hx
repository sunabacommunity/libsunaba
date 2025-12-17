package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class GLTFObjectModelProperty extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFObjectModelProperty');
        }
        this.native = _native;
    }

    public var objectModelType(get, set): Int;
    function get_objectModelType(): Int {
        return native.get('object_model_type');
    }
    function set_objectModelType(value: Int): Int {
      native.set('object_model_type', value);
        return value;
    }
    public var variantType(get, set): Int;
    function get_variantType(): Int {
        return native.get('variant_type');
    }
    function set_variantType(value: Int): Int {
      native.set('variant_type', value);
        return value;
    }


  public function appendNodePath(nodePath: String): Void {
      var args = new ArrayList();
      args.append(nodePath);
      native.call('append_node_path', args);
  }
  public function appendPathToProperty(nodePath: String, propName: String): Void {
      var args = new ArrayList();
      args.append(nodePath);
      args.append(propName);
      native.call('append_path_to_property', args);
  }
  public function getAccessorType(): Int {
      var args = new ArrayList();
      return native.call('get_accessor_type', args);
  }
  public function hasJsonPointers(): Bool {
      var args = new ArrayList();
      return native.call('has_json_pointers', args);
  }
  public function hasNodePaths(): Bool {
      var args = new ArrayList();
      return native.call('has_node_paths', args);
  }
  public function setTypes(variantType: Int, objModelType: Int): Void {
      var args = new ArrayList();
      args.append(variantType);
      args.append(objModelType);
      native.call('set_types', args);
  }
}
