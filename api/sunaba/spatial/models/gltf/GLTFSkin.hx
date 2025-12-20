package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.spatial.Skin;
import sunaba.core.TypedArray;
import sunaba.core.Signal;
import sunaba.core.Dictionary;

class GLTFSkin extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFSkin');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFSkin', native];
        scriptLoader.call('loadScript', args);
    }

    public var godotSkin(get, set): Skin;
    function get_godotSkin(): Skin {
        var ref: NativeReference = native.get('godot_skin');
        return new Skin(ref);
    }
    function set_godotSkin(value: Skin): Skin {
      native.set('godot_skin', value.native);
        return value;
    }
    public var joints(get, set): TypedArray<Int>;
    function get_joints(): TypedArray<Int> {
        return native.get('joints');
    }
    function set_joints(value: TypedArray<Int>): TypedArray<Int> {
      native.set('joints', value);
        return value;
    }
    public var jointsOriginal(get, set): TypedArray<Int>;
    function get_jointsOriginal(): TypedArray<Int> {
        return native.get('joints_original');
    }
    function set_jointsOriginal(value: TypedArray<Int>): TypedArray<Int> {
      native.set('joints_original', value);
        return value;
    }
    public var nonJoints(get, set): TypedArray<Int>;
    function get_nonJoints(): TypedArray<Int> {
        return native.get('non_joints');
    }
    function set_nonJoints(value: TypedArray<Int>): TypedArray<Int> {
      native.set('non_joints', value);
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
    public var skeleton(get, set): Int;
    function get_skeleton(): Int {
        return native.get('skeleton');
    }
    function set_skeleton(value: Int): Int {
      native.set('skeleton', value);
        return value;
    }
    public var skinRoot(get, set): Int;
    function get_skinRoot(): Int {
        return native.get('skin_root');
    }
    function set_skinRoot(value: Int): Int {
      native.set('skin_root', value);
        return value;
    }


  public function getInverseBinds(): ArrayList {
      var args = new ArrayList();
      return native.call('get_inverse_binds', args);
  }
  public function getJointIToBoneI(): Dictionary {
      var args = new ArrayList();
      return native.call('get_joint_i_to_bone_i', args);
  }
  public function getJointIToName(): Dictionary {
      var args = new ArrayList();
      return native.call('get_joint_i_to_name', args);
  }
  public function setInverseBinds(inverseBinds: ArrayList): Void {
      var args = new ArrayList();
      args.append(inverseBinds);
      native.call('set_inverse_binds', args);
  }
  public function setJointIToBoneI(jointIToBoneI: Dictionary): Void {
      var args = new ArrayList();
      args.append(jointIToBoneI);
      native.call('set_joint_i_to_bone_i', args);
  }
  public function setJointIToName(jointIToName: Dictionary): Void {
      var args = new ArrayList();
      args.append(jointIToName);
      native.call('set_joint_i_to_name', args);
  }
}
