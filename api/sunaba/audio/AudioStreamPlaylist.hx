package sunaba.audio;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;

class AudioStreamPlaylist extends AudioStream {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamPlaylist');
        }
        native = _native;
    }

    public var fadeTime(get, set): Float;
    function get_fadeTime(): Float {
        return native.get('fade_time');
    }
    function set_fadeTime(value: Float): Float {
      native.set('fade_time', value);
        return value;
    }
    public var loop(get, set): Bool;
    function get_loop(): Bool {
        return native.get('loop');
    }
    function set_loop(value: Bool): Bool {
      native.set('loop', value);
        return value;
    }
    public var shuffle(get, set): Bool;
    function get_shuffle(): Bool {
        return native.get('shuffle');
    }
    function set_shuffle(value: Bool): Bool {
      native.set('shuffle', value);
        return value;
    }
    public var streamCount(get, set): Int;
    function get_streamCount(): Int {
        return native.get('stream_count');
    }
    function set_streamCount(value: Int): Int {
      native.set('stream_count', value);
        return value;
    }


  public function getBpm(): Float {
      var args = new ArrayList();
      return native.call('get_bpm', args);
  }
  public function getListStream(streamIndex: Int): AudioStream {
      var args = new ArrayList();
      args.append(streamIndex);
      var ref: NativeReference = native.call('get_list_stream', args);
      return new AudioStream(ref);
  }
  public function setListStream(streamIndex: Int, audioStream: AudioStream): Void {
      var args = new ArrayList();
      args.append(streamIndex);
      args.append(audioStream.native);
      native.call('set_list_stream', args);
  }
}
