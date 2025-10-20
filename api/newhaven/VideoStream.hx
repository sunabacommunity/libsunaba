package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;

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
