package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.ArrayList;
import newhaven.core.Vector2;
import newhaven.Texture2D;

class SkeletonProfile extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('SkeletonProfile');
        }
        native = _native;
    }

    public var boneSize(get, set): Int;
    function get_boneSize(): Int {
        return native.get('bone_size');
    }
    function set_boneSize(value: Int): Int {
      native.set('bone_size', value);
        return value;
    }
    public var groupSize(get, set): Int;
    function get_groupSize(): Int {
        return native.get('group_size');
    }
    function set_groupSize(value: Int): Int {
      native.set('group_size', value);
        return value;
    }
    public var rootBone(get, set): String;
    function get_rootBone(): String {
        return native.get('root_bone');
    }
    function set_rootBone(value: String): String {
      native.set('root_bone', value);
        return value;
    }
    public var scaleBaseBone(get, set): String;
    function get_scaleBaseBone(): String {
        return native.get('scale_base_bone');
    }
    function set_scaleBaseBone(value: String): String {
      native.set('scale_base_bone', value);
        return value;
    }

  public function findBone(boneName: String): Int {
      var args = new ArrayList();
      args.append(boneName);
      return native.call('find_bone', args);
  }
  public function getBoneName(boneIdx: Int): String {
      var args = new ArrayList();
      args.append(boneIdx);
      return native.call('get_bone_name', args);
  }
  public function getBoneParent(boneIdx: Int): String {
      var args = new ArrayList();
      args.append(boneIdx);
      return native.call('get_bone_parent', args);
  }
  public function getBoneTail(boneIdx: Int): String {
      var args = new ArrayList();
      args.append(boneIdx);
      return native.call('get_bone_tail', args);
  }
  public function getGroup(boneIdx: Int): String {
      var args = new ArrayList();
      args.append(boneIdx);
      return native.call('get_group', args);
  }
  public function getGroupName(groupIdx: Int): String {
      var args = new ArrayList();
      args.append(groupIdx);
      return native.call('get_group_name', args);
  }
  public function getHandleOffset(boneIdx: Int): Vector2 {
      var args = new ArrayList();
      args.append(boneIdx);
      return native.call('get_handle_offset', args);
  }
  public function getTailDirection(boneIdx: Int): Int {
      var args = new ArrayList();
      args.append(boneIdx);
      return native.call('get_tail_direction', args);
  }
  public function getTexture(groupIdx: Int): Texture2D {
      var args = new ArrayList();
      args.append(groupIdx);
      var ref: NativeReference = native.call('get_texture', args);
      return new Texture2D(ref);
  }
  public function isRequired(boneIdx: Int): Bool {
      var args = new ArrayList();
      args.append(boneIdx);
      return native.call('is_required', args);
  }
  public function setBoneName(boneIdx: Int, boneName: String): Void {
      var args = new ArrayList();
      args.append(boneIdx);
      args.append(boneName);
      native.call('set_bone_name', args);
  }
  public function setBoneParent(boneIdx: Int, boneParent: String): Void {
      var args = new ArrayList();
      args.append(boneIdx);
      args.append(boneParent);
      native.call('set_bone_parent', args);
  }
  public function setBoneTail(boneIdx: Int, boneTail: String): Void {
      var args = new ArrayList();
      args.append(boneIdx);
      args.append(boneTail);
      native.call('set_bone_tail', args);
  }
  public function setGroup(boneIdx: Int, group: String): Void {
      var args = new ArrayList();
      args.append(boneIdx);
      args.append(group);
      native.call('set_group', args);
  }
  public function setGroupName(groupIdx: Int, groupName: String): Void {
      var args = new ArrayList();
      args.append(groupIdx);
      args.append(groupName);
      native.call('set_group_name', args);
  }
  public function setHandleOffset(boneIdx: Int, handleOffset: Vector2): Void {
      var args = new ArrayList();
      args.append(boneIdx);
      args.append(handleOffset);
      native.call('set_handle_offset', args);
  }
  public function setReferencePose(boneIdx: Int, boneName: Variant): Void {
      var args = new ArrayList();
      args.append(boneIdx);
      args.append(boneName);
      native.call('set_reference_pose', args);
  }
  public function setRequired(boneIdx: Int, required: Bool): Void {
      var args = new ArrayList();
      args.append(boneIdx);
      args.append(required);
      native.call('set_required', args);
  }
  public function setTailDirection(boneIdx: Int, tailDirection: Int): Void {
      var args = new ArrayList();
      args.append(boneIdx);
      args.append(tailDirection);
      native.call('set_tail_direction', args);
  }
  public function setTexture(groupIdx: Int, texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(groupIdx);
      args.append(texture.native);
      native.call('set_texture', args);
  }
}
