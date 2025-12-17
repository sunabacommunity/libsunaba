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
import sunaba.core.Dictionary;

class GLTFSkeleton extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFSkeleton');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFSkeleton', native];
        scriptLoader.call('loadScript', args);
    }

    public var joints(get, set): TypedArray<Int>;
    function get_joints(): TypedArray<Int> {
        return native.get('joints');
    }
    function set_joints(value: TypedArray<Int>): TypedArray<Int> {
      native.set('joints', value);
        return value;
    }
    public var roots(get, set): TypedArray<Int>;
    function get_roots(): TypedArray<Int> {
        return native.get('roots');
    }
    function set_roots(value: TypedArray<Int>): TypedArray<Int> {
      native.set('roots', value);
        return value;
    }


  public function getBoneAttachmentCount(): Int {
      var args = new ArrayList();
      return native.call('get_bone_attachment_count', args);
  }
  public function getGodotBoneNode(): Dictionary {
      var args = new ArrayList();
      return native.call('get_godot_bone_node', args);
  }
  public function setGodotBoneNode(godotBoneNode: Dictionary): Void {
      var args = new ArrayList();
      args.append(godotBoneNode);
      native.call('set_godot_bone_node', args);
  }
  public function setUniqueNames(uniqueNames: Variant): Void {
      var args = new ArrayList();
      args.append(uniqueNames);
      native.call('set_unique_names', args);
  }
}
