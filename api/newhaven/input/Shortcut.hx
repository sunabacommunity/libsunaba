package newhaven.input;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.ArrayList;

class Shortcut extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Shortcut');
        }
        native = _native;
    }

    public var events(get, set): ArrayList;
    function get_events(): ArrayList {
        return native.get('events');
    }
    function set_events(value: ArrayList): ArrayList {
      native.set('events', value);
        return value;
    }

  public function getAsText(): String {
      var args = new ArrayList();
      return native.call('get_as_text', args);
  }
  public function hasValidEvent(): Bool {
      var args = new ArrayList();
      return native.call('has_valid_event', args);
  }
  public function matchesEvent(event: InputEvent): Bool {
      var args = new ArrayList();
      args.append(event.native);
      return native.call('matches_event', args);
  }
}
