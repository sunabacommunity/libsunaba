package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Rect2;
import sunaba.core.Signal;

class AtlasTexture extends Texture2D {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AtlasTexture');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AtlasTexture', native];
        scriptLoader.call('loadScript', args);
    }

    public var atlas(get, set): Texture2D;
    function get_atlas(): Texture2D {
        var ref: NativeReference = native.get('atlas');
        return new Texture2D(ref);
    }
    function set_atlas(value: Texture2D): Texture2D {
      native.set('atlas', value.native);
        return value;
    }
    public var filterClip(get, set): Bool;
    function get_filterClip(): Bool {
        return native.get('filter_clip');
    }
    function set_filterClip(value: Bool): Bool {
      native.set('filter_clip', value);
        return value;
    }
    public var margin(get, set): Rect2;
    function get_margin(): Rect2 {
        return native.get('margin');
    }
    function set_margin(value: Rect2): Rect2 {
      native.set('margin', value);
        return value;
    }
    public var region(get, set): Rect2;
    function get_region(): Rect2 {
        return native.get('region');
    }
    function set_region(value: Rect2): Rect2 {
      native.set('region', value);
        return value;
    }


}
