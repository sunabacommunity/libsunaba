package newhaven.networking;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class PacketPeerStream extends PacketPeer {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('PacketPeerStream');
        }
        native = _native;
    }

    public var inputBufferMaxSize(get, set): Int;
    function get_inputBufferMaxSize(): Int {
        return native.get('input_buffer_max_size');
    }
    function set_inputBufferMaxSize(value: Int): Int {
      native.set('input_buffer_max_size', value);
        return value;
    }
    public var outputBufferMaxSize(get, set): Int;
    function get_outputBufferMaxSize(): Int {
        return native.get('output_buffer_max_size');
    }
    function set_outputBufferMaxSize(value: Int): Int {
      native.set('output_buffer_max_size', value);
        return value;
    }

}
