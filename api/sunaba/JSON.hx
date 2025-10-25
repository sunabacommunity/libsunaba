package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class JSON extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('JSON');
        }
        native = _native;
    }

    public var data(get, set): Variant;
    function get_data(): Variant {
        return native.get('data');
    }
    function set_data(value: Variant): Variant {
      native.set('data', value);
        return value;
    }


  public static function fromNative(variant: Variant, ?fullObjects: Bool): Variant {
      var args = new ArrayList();
      args.append(variant);
      if (fullObjects != null) {
          args.append(fullObjects);
      }
      return NativeObject.callStatic('JSON', 'from_native', args);
  }
  public function getErrorLine(): Int {
      var args = new ArrayList();
      return native.call('get_error_line', args);
  }
  public function getErrorMessage(): String {
      var args = new ArrayList();
      return native.call('get_error_message', args);
  }
  public function getParsedText(): String {
      var args = new ArrayList();
      return native.call('get_parsed_text', args);
  }
  public function parse(jsonText: String, ?keepText: Bool): Int {
      var args = new ArrayList();
      args.append(jsonText);
      if (keepText != null) {
          args.append(keepText);
      }
      return native.call('parse', args);
  }
  public static function parseString(jsonString: String): Variant {
      var args = new ArrayList();
      args.append(jsonString);
      return NativeObject.callStatic('JSON', 'parse_string', args);
  }
  public static function stringify(data: Variant, ?indent: String, ?sortKeys: Bool, ?fullPrecision: Bool): String {
      var args = new ArrayList();
      args.append(data);
      if (indent != null) {
          args.append(indent);
      }
      if (sortKeys != null) {
          args.append(sortKeys);
      }
      if (fullPrecision != null) {
          args.append(fullPrecision);
      }
      return NativeObject.callStatic('JSON', 'stringify', args);
  }
  public static function toNative(json: Variant, ?allowObjects: Bool): Variant {
      var args = new ArrayList();
      args.append(json);
      if (allowObjects != null) {
          args.append(allowObjects);
      }
      return NativeObject.callStatic('JSON', 'to_native', args);
  }
}
