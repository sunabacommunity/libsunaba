package newhaven.audio;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.core.ArrayList;
import newhaven.core.TypedArray;

class AudioStreamInteractive extends AudioStream {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('AudioStreamInteractive');
        }
        native = _native;
    }

    public var clipCount(get, set): Int;
    function get_clipCount(): Int {
        return native.get('clip_count');
    }
    function set_clipCount(value: Int): Int {
      native.set('clip_count', value);
        return value;
    }
    public var initialClip(get, set): Int;
    function get_initialClip(): Int {
        return native.get('initial_clip');
    }
    function set_initialClip(value: Int): Int {
      native.set('initial_clip', value);
        return value;
    }

  public function addTransition(fromClip: Int, toClip: Int, fromTime: Int, toTime: Int, fadeMode: Int, fadeBeats: Float, ?useFillerClip: Bool, ?fillerClip: Int, ?holdPrevious: Bool): Void {
      var args = new ArrayList();
      args.append(fromClip);
      args.append(toClip);
      args.append(fromTime);
      args.append(toTime);
      args.append(fadeMode);
      args.append(fadeBeats);
      if (useFillerClip != null) {
          args.append(useFillerClip);
      }
      if (fillerClip != null) {
          args.append(fillerClip);
      }
      if (holdPrevious != null) {
          args.append(holdPrevious);
      }
      native.call('add_transition', args);
  }
  public function eraseTransition(fromClip: Int, toClip: Int): Void {
      var args = new ArrayList();
      args.append(fromClip);
      args.append(toClip);
      native.call('erase_transition', args);
  }
  public function getClipAutoAdvance(clipIndex: Int): Int {
      var args = new ArrayList();
      args.append(clipIndex);
      return native.call('get_clip_auto_advance', args);
  }
  public function getClipAutoAdvanceNextClip(clipIndex: Int): Int {
      var args = new ArrayList();
      args.append(clipIndex);
      return native.call('get_clip_auto_advance_next_clip', args);
  }
  public function getClipName(clipIndex: Int): String {
      var args = new ArrayList();
      args.append(clipIndex);
      return native.call('get_clip_name', args);
  }
  public function getClipStream(clipIndex: Int): AudioStream {
      var args = new ArrayList();
      args.append(clipIndex);
      var ref: NativeReference = native.call('get_clip_stream', args);
      return new AudioStream(ref);
  }
  public function getTransitionFadeBeats(fromClip: Int, toClip: Int): Float {
      var args = new ArrayList();
      args.append(fromClip);
      args.append(toClip);
      return native.call('get_transition_fade_beats', args);
  }
  public function getTransitionFadeMode(fromClip: Int, toClip: Int): Int {
      var args = new ArrayList();
      args.append(fromClip);
      args.append(toClip);
      return native.call('get_transition_fade_mode', args);
  }
  public function getTransitionFillerClip(fromClip: Int, toClip: Int): Int {
      var args = new ArrayList();
      args.append(fromClip);
      args.append(toClip);
      return native.call('get_transition_filler_clip', args);
  }
  public function getTransitionFromTime(fromClip: Int, toClip: Int): Int {
      var args = new ArrayList();
      args.append(fromClip);
      args.append(toClip);
      return native.call('get_transition_from_time', args);
  }
  public function getTransitionList(): TypedArray<Int> {
      var args = new ArrayList();
      return native.call('get_transition_list', args);
  }
  public function getTransitionToTime(fromClip: Int, toClip: Int): Int {
      var args = new ArrayList();
      args.append(fromClip);
      args.append(toClip);
      return native.call('get_transition_to_time', args);
  }
  public function hasTransition(fromClip: Int, toClip: Int): Bool {
      var args = new ArrayList();
      args.append(fromClip);
      args.append(toClip);
      return native.call('has_transition', args);
  }
  public function isTransitionHoldingPrevious(fromClip: Int, toClip: Int): Bool {
      var args = new ArrayList();
      args.append(fromClip);
      args.append(toClip);
      return native.call('is_transition_holding_previous', args);
  }
  public function isTransitionUsingFillerClip(fromClip: Int, toClip: Int): Bool {
      var args = new ArrayList();
      args.append(fromClip);
      args.append(toClip);
      return native.call('is_transition_using_filler_clip', args);
  }
  public function setClipAutoAdvance(clipIndex: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(clipIndex);
      args.append(mode);
      native.call('set_clip_auto_advance', args);
  }
  public function setClipAutoAdvanceNextClip(clipIndex: Int, autoAdvanceNextClip: Int): Void {
      var args = new ArrayList();
      args.append(clipIndex);
      args.append(autoAdvanceNextClip);
      native.call('set_clip_auto_advance_next_clip', args);
  }
  public function setClipName(clipIndex: Int, name: String): Void {
      var args = new ArrayList();
      args.append(clipIndex);
      args.append(name);
      native.call('set_clip_name', args);
  }
  public function setClipStream(clipIndex: Int, stream: AudioStream): Void {
      var args = new ArrayList();
      args.append(clipIndex);
      args.append(stream.native);
      native.call('set_clip_stream', args);
  }
}
