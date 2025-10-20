package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class CameraTexture extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('CameraTexture');
        }
        native = _native;
    }

    public var cameraFeedId(get, set): Int;
    function get_cameraFeedId(): Int {
        return native.get('camera_feed_id');
    }
    function set_cameraFeedId(value: Int): Int {
      native.set('camera_feed_id', value);
        return value;
    }
    public var cameraIsActive(get, set): Bool;
    function get_cameraIsActive(): Bool {
        return native.get('camera_is_active');
    }
    function set_cameraIsActive(value: Bool): Bool {
      native.set('camera_is_active', value);
        return value;
    }
    public var whichFeed(get, set): Int;
    function get_whichFeed(): Int {
        return native.get('which_feed');
    }
    function set_whichFeed(value: Int): Int {
      native.set('which_feed', value);
        return value;
    }

}
