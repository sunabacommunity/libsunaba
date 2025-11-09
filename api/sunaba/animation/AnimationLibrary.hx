package sunaba.animation;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Signal;

class AnimationLibrary extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('AnimationLibrary');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AnimationLibrary', native];
        scriptLoader.call('loadScript', args);
    }


	private var _animationAdded: Signal;
	public var animationAdded(get, default): Signal;
	function get_animationAdded(): Signal {
	    if (_animationAdded == null) {
	        _animationAdded = Signal.createFromReference(native, 'animation_added');
	    }
	    return _animationAdded;
	}
	private var _animationChanged: Signal;
	public var animationChanged(get, default): Signal;
	function get_animationChanged(): Signal {
	    if (_animationChanged == null) {
	        _animationChanged = Signal.createFromReference(native, 'animation_changed');
	    }
	    return _animationChanged;
	}
	private var _animationRemoved: Signal;
	public var animationRemoved(get, default): Signal;
	function get_animationRemoved(): Signal {
	    if (_animationRemoved == null) {
	        _animationRemoved = Signal.createFromReference(native, 'animation_removed');
	    }
	    return _animationRemoved;
	}
	private var _animationRenamed: Signal;
	public var animationRenamed(get, default): Signal;
	function get_animationRenamed(): Signal {
	    if (_animationRenamed == null) {
	        _animationRenamed = Signal.createFromReference(native, 'animation_renamed');
	    }
	    return _animationRenamed;
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
