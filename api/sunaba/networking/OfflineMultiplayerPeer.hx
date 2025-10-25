package sunaba.networking;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

class OfflineMultiplayerPeer extends MultiplayerPeer {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('OfflineMultiplayerPeer');
        }
        native = _native;
    }



}
