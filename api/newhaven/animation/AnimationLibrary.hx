package newhaven.animation;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.ArrayList;

class AnimationLibrary extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AnimationLibrary');
        }
        native = _native;
    }


  public function addAnimation(name: String, animation: Animation): Int {
      var args = new ArrayList();
      args.append(name);
      args.append(animation.native);
      return native.call('add_animation', args);
  }
  public function getAnimation(name: String): Animation {
      var args = new ArrayList();
      args.append(name);
      var ref: NativeReference = native.call('get_animation', args);
      return new Animation(ref);
  }
  public function getAnimationListSize(): Int {
      var args = new ArrayList();
      return native.call('get_animation_list_size', args);
  }
  public function hasAnimation(name: String): Bool {
      var args = new ArrayList();
      args.append(name);
      return native.call('has_animation', args);
  }
  public function removeAnimation(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      native.call('remove_animation', args);
  }
  public function renameAnimation(name: String, newname: String): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(newname);
      native.call('rename_animation', args);
  }
}
