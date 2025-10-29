package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.Resource;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class BoneMap extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('BoneMap');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['BoneMap', native];
        scriptLoader.call('loadScript', args);
    }

    public var profile(get, set): SkeletonProfile;
    function get_profile(): SkeletonProfile {
        var ref: NativeReference = native.get('profile');
        return new SkeletonProfile(ref);
    }
    function set_profile(value: SkeletonProfile): SkeletonProfile {
      native.set('profile', value.native);
        return value;
    }

	private var _boneMapUpdated: Signal;
	public var boneMapUpdated(get, default): Signal;
	function get_boneMapUpdated(): Signal {
	    if (_boneMapUpdated == null) {
	        _boneMapUpdated = Signal.createFromReference(native, 'bone_map_updated');
	    }
	    return _boneMapUpdated;
	}
	private var _profileUpdated: Signal;
	public var profileUpdated(get, default): Signal;
	function get_profileUpdated(): Signal {
	    if (_profileUpdated == null) {
	        _profileUpdated = Signal.createFromReference(native, 'profile_updated');
	    }
	    return _profileUpdated;
	}

  public function findProfileBoneName(skeletonBoneName: String): String {
      var args = new ArrayList();
      args.append(skeletonBoneName);
      return native.call('find_profile_bone_name', args);
  }
  public function getSkeletonBoneName(profileBoneName: String): String {
      var args = new ArrayList();
      args.append(profileBoneName);
      return native.call('get_skeleton_bone_name', args);
  }
  public function setSkeletonBoneName(profileBoneName: String, skeletonBoneName: String): Void {
      var args = new ArrayList();
      args.append(profileBoneName);
      args.append(skeletonBoneName);
      native.call('set_skeleton_bone_name', args);
  }
}
