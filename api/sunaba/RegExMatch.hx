package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Dictionary;
import sunaba.core.TypedArray;
import sunaba.core.Signal;

class RegExMatch extends Reference {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('RegExMatch');
        }
        native = _native;
    }

    public var names(get, set): Dictionary;
    function get_names(): Dictionary {
        return native.get('names');
    }
    function set_names(value: Dictionary): Dictionary {
      native.set('names', value);
        return value;
    }
    public var strings(get, set): TypedArray<String>;
    function get_strings(): TypedArray<String> {
        return native.get('strings');
    }
    function set_strings(value: TypedArray<String>): TypedArray<String> {
      native.set('strings', value);
        return value;
    }
    public var subject(get, set): String;
    function get_subject(): String {
        return native.get('subject');
    }
    function set_subject(value: String): String {
      native.set('subject', value);
        return value;
    }


  public function getEnd(?name: Variant): Int {
      var args = new ArrayList();
      if (name != null) {
          args.append(name);
      }
      return native.call('get_end', args);
  }
  public function getGroupCount(): Int {
      var args = new ArrayList();
      return native.call('get_group_count', args);
  }
  public function getStart(?name: Variant): Int {
      var args = new ArrayList();
      if (name != null) {
          args.append(name);
      }
      return native.call('get_start', args);
  }
  public function getString(?name: Variant): String {
      var args = new ArrayList();
      if (name != null) {
          args.append(name);
      }
      return native.call('get_string', args);
  }
}
