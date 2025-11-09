package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Signal;

class Shortcut extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('Shortcut');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Shortcut', native];
        scriptLoader.call('loadScript', args);
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
