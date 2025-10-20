package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.OggPacketSequence;
import newhaven.core.ByteArray;
import newhaven.core.ArrayList;

class AudioStreamOggVorbis extends AudioStream {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamOggVorbis');
        }
        native = _native;
    }

    public var barBeats(get, set): Int;
    function get_barBeats(): Int {
        return native.get('bar_beats');
    }
    function set_barBeats(value: Int): Int {
      native.set('bar_beats', value);
        return value;
    }
    public var beatCount(get, set): Int;
    function get_beatCount(): Int {
        return native.get('beat_count');
    }
    function set_beatCount(value: Int): Int {
      native.set('beat_count', value);
        return value;
    }
    public var bpm(get, set): Float;
    function get_bpm(): Float {
        return native.get('bpm');
    }
    function set_bpm(value: Float): Float {
      native.set('bpm', value);
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
    public var loopOffset(get, set): Float;
    function get_loopOffset(): Float {
        return native.get('loop_offset');
    }
    function set_loopOffset(value: Float): Float {
      native.set('loop_offset', value);
        return value;
    }
    public var packetSequence(get, set): OggPacketSequence;
    function get_packetSequence(): OggPacketSequence {
        var ref: NativeReference = native.get('packet_sequence');
        return new OggPacketSequence(ref);
    }
    function set_packetSequence(value: OggPacketSequence): OggPacketSequence {
      native.set('packet_sequence', value.native);
        return value;
    }

  public static function loadFromBuffer(streamData: ByteArray): AudioStreamOggVorbis {
      var args = new ArrayList();
      args.append(streamData);
      var ref: NativeReference = NativeObject.callStatic('AudioStreamOggVorbis', 'load_from_buffer', args);
      return new AudioStreamOggVorbis(ref);
  }
  public static function loadFromFile(path: String): AudioStreamOggVorbis {
      var args = new ArrayList();
      args.append(path);
      var ref: NativeReference = NativeObject.callStatic('AudioStreamOggVorbis', 'load_from_file', args);
      return new AudioStreamOggVorbis(ref);
  }
}
