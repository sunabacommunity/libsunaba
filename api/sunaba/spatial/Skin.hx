package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.Resource;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class Skin extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Skin');
        }
        native = _native;
    }



  public function addBind(bone: Int, pose: Variant): Void {
      var args = new ArrayList();
      args.append(bone);
      args.append(pose);
      native.call('add_bind', args);
  }
  public function addNamedBind(name: String, pose: Variant): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(pose);
      native.call('add_named_bind', args);
  }
  public function clearBinds(): Void {
      var args = new ArrayList();
      native.call('clear_binds', args);
  }
  public function getBindBone(bindIndex: Int): Int {
      var args = new ArrayList();
      args.append(bindIndex);
      return native.call('get_bind_bone', args);
  }
  public function getBindCount(): Int {
      var args = new ArrayList();
      return native.call('get_bind_count', args);
  }
  public function getBindName(bindIndex: Int): String {
      var args = new ArrayList();
      args.append(bindIndex);
      return native.call('get_bind_name', args);
  }
  public function setBindBone(bindIndex: Int, bone: Int): Void {
      var args = new ArrayList();
      args.append(bindIndex);
      args.append(bone);
      native.call('set_bind_bone', args);
  }
  public function setBindCount(bindCount: Int): Void {
      var args = new ArrayList();
      args.append(bindCount);
      native.call('set_bind_count', args);
  }
  public function setBindName(bindIndex: Int, name: String): Void {
      var args = new ArrayList();
      args.append(bindIndex);
      args.append(name);
      native.call('set_bind_name', args);
  }
  public function setBindPose(bindIndex: Int, pose: Variant): Void {
      var args = new ArrayList();
      args.append(bindIndex);
      args.append(pose);
      native.call('set_bind_pose', args);
  }
}
