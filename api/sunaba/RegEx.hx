package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.core.TypedArray;

class RegEx extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('RegEx');
        }
        this.native = _native;
    }



  public function clear(): Void {
      var args = new ArrayList();
      native.call('clear', args);
  }
  public function compile(pattern: String, ?showError: Bool): Int {
      var args = new ArrayList();
      args.append(pattern);
      if (showError != null) {
          args.append(showError);
      }
      return native.call('compile', args);
  }
  public static function createFromString(pattern: String, ?showError: Bool): RegEx {
      var args = new ArrayList();
      args.append(pattern);
      if (showError != null) {
          args.append(showError);
      }
      var ref: NativeReference = NativeObject.callStatic('RegEx', 'create_from_string', args);
      return new RegEx(ref);
  }
  public function getGroupCount(): Int {
      var args = new ArrayList();
      return native.call('get_group_count', args);
  }
  public function getNames(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_names', args);
  }
  public function getPattern(): String {
      var args = new ArrayList();
      return native.call('get_pattern', args);
  }
  public function isValid(): Bool {
      var args = new ArrayList();
      return native.call('is_valid', args);
  }
  public function search(subject: String, ?offset: Int, ?end: Int): RegExMatch {
      var args = new ArrayList();
      args.append(subject);
      if (offset != null) {
          args.append(offset);
      }
      if (end != null) {
          args.append(end);
      }
      var ref: NativeReference = native.call('search', args);
      return new RegExMatch(ref);
  }
  public function searchAll(subject: String, ?offset: Int, ?end: Int): ArrayList {
      var args = new ArrayList();
      args.append(subject);
      if (offset != null) {
          args.append(offset);
      }
      if (end != null) {
          args.append(end);
      }
      return native.call('search_all', args);
  }
  public function sub(subject: String, replacement: String, ?all: Bool, ?offset: Int, ?end: Int): String {
      var args = new ArrayList();
      args.append(subject);
      args.append(replacement);
      if (all != null) {
          args.append(all);
      }
      if (offset != null) {
          args.append(offset);
      }
      if (end != null) {
          args.append(end);
      }
      return native.call('sub', args);
  }
}
