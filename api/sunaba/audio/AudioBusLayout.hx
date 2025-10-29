package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.Resource;
import sunaba.core.Signal;

class AudioBusLayout extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioBusLayout');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['AudioBusLayout', native];
        scriptLoader.call('loadScript', args);
    }



}
