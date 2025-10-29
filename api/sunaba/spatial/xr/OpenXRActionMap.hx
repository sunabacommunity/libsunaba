package sunaba.spatial.xr;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.Resource;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class OpenXRActionMap extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('OpenXRActionMap');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['OpenXRActionMap', native];
        scriptLoader.call('loadScript', args);
    }

    public var actionSets(get, set): ArrayList;
    function get_actionSets(): ArrayList {
        return native.get('action_sets');
    }
    function set_actionSets(value: ArrayList): ArrayList {
      native.set('action_sets', value);
        return value;
    }
    public var interactionProfiles(get, set): ArrayList;
    function get_interactionProfiles(): ArrayList {
        return native.get('interaction_profiles');
    }
    function set_interactionProfiles(value: ArrayList): ArrayList {
      native.set('interaction_profiles', value);
        return value;
    }


  public function addActionSet(actionSet: OpenXRActionSet): Void {
      var args = new ArrayList();
      args.append(actionSet.native);
      native.call('add_action_set', args);
  }
  public function addInteractionProfile(interactionProfile: Variant): Void {
      var args = new ArrayList();
      args.append(interactionProfile);
      native.call('add_interaction_profile', args);
  }
  public function createDefaultActionSets(): Void {
      var args = new ArrayList();
      native.call('create_default_action_sets', args);
  }
  public function findActionSet(name: String): OpenXRActionSet {
      var args = new ArrayList();
      args.append(name);
      var ref: NativeReference = native.call('find_action_set', args);
      return new OpenXRActionSet(ref);
  }
  public function getActionSet(idx: Int): OpenXRActionSet {
      var args = new ArrayList();
      args.append(idx);
      var ref: NativeReference = native.call('get_action_set', args);
      return new OpenXRActionSet(ref);
  }
  public function getActionSetCount(): Int {
      var args = new ArrayList();
      return native.call('get_action_set_count', args);
  }
  public function getInteractionProfileCount(): Int {
      var args = new ArrayList();
      return native.call('get_interaction_profile_count', args);
  }
  public function removeActionSet(actionSet: OpenXRActionSet): Void {
      var args = new ArrayList();
      args.append(actionSet.native);
      native.call('remove_action_set', args);
  }
  public function removeInteractionProfile(interactionProfile: Variant): Void {
      var args = new ArrayList();
      args.append(interactionProfile);
      native.call('remove_interaction_profile', args);
  }
}
