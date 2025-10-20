package newhaven.spatial;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.ArrayList;

class BoneMap extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('BoneMap');
        }
        native = _native;
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
