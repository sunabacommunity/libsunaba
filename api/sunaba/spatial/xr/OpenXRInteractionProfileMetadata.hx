package sunaba.spatial.xr;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class OpenXRInteractionProfileMetadata extends Object {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('OpenXRInteractionProfileMetadata');
        }
        native = _native;
    }



  public function registerInteractionProfile(displayName: String, openxrPath: String, openxrExtensionName: String): Void {
      var args = new ArrayList();
      args.append(displayName);
      args.append(openxrPath);
      args.append(openxrExtensionName);
      native.call('register_interaction_profile', args);
  }
  public function registerIoPath(interactionProfile: String, displayName: String, toplevelPath: String, openxrPath: String, openxrExtensionName: String, actionType: Int): Void {
      var args = new ArrayList();
      args.append(interactionProfile);
      args.append(displayName);
      args.append(toplevelPath);
      args.append(openxrPath);
      args.append(openxrExtensionName);
      args.append(actionType);
      native.call('register_io_path', args);
  }
  public function registerProfileRename(oldName: String, newName: String): Void {
      var args = new ArrayList();
      args.append(oldName);
      args.append(newName);
      native.call('register_profile_rename', args);
  }
  public function registerTopLevelPath(displayName: String, openxrPath: String, openxrExtensionName: String): Void {
      var args = new ArrayList();
      args.append(displayName);
      args.append(openxrPath);
      args.append(openxrExtensionName);
      native.call('register_top_level_path', args);
  }
}
