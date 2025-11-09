package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.ByteArray;

class MarshallsService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('MarshallsService');
        }
        return _native;
    }



  public static function base64ToRaw(base64Str: String): ByteArray {
      var args = new ArrayList();
      args.append(base64Str);
      return getNative().call('base64_to_raw', args);
  }
  public static function base64ToUtf8(base64Str: String): String {
      var args = new ArrayList();
      args.append(base64Str);
      return getNative().call('base64_to_utf8', args);
  }
  public static function base64ToVariant(base64Str: String, ?allowObjects: Bool): Variant {
      var args = new ArrayList();
      args.append(base64Str);
      if (allowObjects != null) {
          args.append(allowObjects);
      }
      return getNative().call('base64_to_variant', args);
  }
  public static function rawToBase64(array: ByteArray): String {
      var args = new ArrayList();
      args.append(array);
      return getNative().call('raw_to_base64', args);
  }
  public static function utf8ToBase64(utf8Str: String): String {
      var args = new ArrayList();
      args.append(utf8Str);
      return getNative().call('utf8_to_base64', args);
  }
  public static function variantToBase64(variant: Variant, ?fullObjects: Bool): String {
      var args = new ArrayList();
      args.append(variant);
      if (fullObjects != null) {
          args.append(fullObjects);
      }
      return getNative().call('variant_to_base64', args);
  }
}
