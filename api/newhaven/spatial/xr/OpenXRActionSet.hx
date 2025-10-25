package sunaba.spatial.xr;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.Resource;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class OpenXRActionSet extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('OpenXRActionSet');
        }
        native = _native;
    }

    public var actions(get, set): ArrayList;
    function get_actions(): ArrayList {
        return native.get('actions');
    }
    function set_actions(value: ArrayList): ArrayList {
      native.set('actions', value);
        return value;
    }
    public var localizedName(get, set): String;
    function get_localizedName(): String {
        return native.get('localized_name');
    }
    function set_localizedName(value: String): String {
      native.set('localized_name', value);
        return value;
    }
    public var priority(get, set): Int;
    function get_priority(): Int {
        return native.get('priority');
    }
    function set_priority(value: Int): Int {
      native.set('priority', value);
        return value;
    }


  public function addAction(action: OpenXRAction): Void {
      var args = new ArrayList();
      args.append(action.native);
      native.call('add_action', args);
  }
  public function getActionCount(): Int {
      var args = new ArrayList();
      return native.call('get_action_count', args);
  }
  public function removeAction(action: OpenXRAction): Void {
      var args = new ArrayList();
      args.append(action.native);
      native.call('remove_action', args);
  }
}
