package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class VideoStream extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('VideoStream');
        }
        native = _native;
    }

    public var file(get, set): String;
    function get_file(): String {
        return native.get('file');
    }
    function set_file(value: String): String {
      native.set('file', value);
        return value;
    }


}
