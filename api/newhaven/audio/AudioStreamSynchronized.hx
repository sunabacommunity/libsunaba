package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.Signal;
import newhaven.core.ArrayList;

class AudioStreamSynchronized extends AudioStream {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamSynchronized');
        }
        native = _native;
    }

    public var streamCount(get, set): Int;
    function get_streamCount(): Int {
        return native.get('stream_count');
    }
    function set_streamCount(value: Int): Int {
      native.set('stream_count', value);
        return value;
    }


  public function getSyncStream(streamIndex: Int): AudioStream {
      var args = new ArrayList();
      args.append(streamIndex);
      var ref: NativeReference = native.call('get_sync_stream', args);
      return new AudioStream(ref);
  }
  public function getSyncStreamVolume(streamIndex: Int): Float {
      var args = new ArrayList();
      args.append(streamIndex);
      return native.call('get_sync_stream_volume', args);
  }
  public function setSyncStream(streamIndex: Int, audioStream: AudioStream): Void {
      var args = new ArrayList();
      args.append(streamIndex);
      args.append(audioStream.native);
      native.call('set_sync_stream', args);
  }
  public function setSyncStreamVolume(streamIndex: Int, volumeDb: Float): Void {
      var args = new ArrayList();
      args.append(streamIndex);
      args.append(volumeDb);
      native.call('set_sync_stream_volume', args);
  }
}
