package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.TypedArray;

class Translation extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Translation');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Translation', native];
        scriptLoader.call('loadScript', args);
    }

    public var locale(get, set): String;
    function get_locale(): String {
        return native.get('locale');
    }
    function set_locale(value: String): String {
      native.set('locale', value);
        return value;
    }


  public function addMessage(srcMessage: String, xlatedMessage: String, ?context: String): Void {
      var args = new ArrayList();
      args.append(srcMessage);
      args.append(xlatedMessage);
      if (context != null) {
          args.append(context);
      }
      native.call('add_message', args);
  }
  public function addPluralMessage(srcMessage: String, xlatedMessages: TypedArray<String>, ?context: String): Void {
      var args = new ArrayList();
      args.append(srcMessage);
      args.append(xlatedMessages);
      if (context != null) {
          args.append(context);
      }
      native.call('add_plural_message', args);
  }
  public function eraseMessage(srcMessage: String, ?context: String): Void {
      var args = new ArrayList();
      args.append(srcMessage);
      if (context != null) {
          args.append(context);
      }
      native.call('erase_message', args);
  }
  public function getMessage(srcMessage: String, ?context: String): String {
      var args = new ArrayList();
      args.append(srcMessage);
      if (context != null) {
          args.append(context);
      }
      return native.call('get_message', args);
  }
  public function getMessageCount(): Int {
      var args = new ArrayList();
      return native.call('get_message_count', args);
  }
  public function getMessageList(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_message_list', args);
  }
  public function getPluralMessage(srcMessage: String, srcPluralMessage: String, n: Int, ?context: String): String {
      var args = new ArrayList();
      args.append(srcMessage);
      args.append(srcPluralMessage);
      args.append(n);
      if (context != null) {
          args.append(context);
      }
      return native.call('get_plural_message', args);
  }
  public function getTranslatedMessageList(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_translated_message_list', args);
  }
}
