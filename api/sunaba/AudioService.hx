package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.audio.AudioEffect;
import sunaba.audio.AudioBusLayout;
import sunaba.audio.AudioEffectInstance;
import sunaba.core.TypedArray;
import sunaba.core.Vector2;
import sunaba.audio.AudioStream;

class AudioService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('AudioServer');
        }
        return _native;
    }

    public static var busCount(get, set): Int;
    static function get_busCount(): Int {
        return getNative().get('bus_count');
    }
    static function set_busCount(value: Int): Int {
      getNative().set('bus_count', value);
        return value;
    }
    public static var inputDevice(get, set): String;
    static function get_inputDevice(): String {
        return getNative().get('input_device');
    }
    static function set_inputDevice(value: String): String {
      getNative().set('input_device', value);
        return value;
    }
    public static var outputDevice(get, set): String;
    static function get_outputDevice(): String {
        return getNative().get('output_device');
    }
    static function set_outputDevice(value: String): String {
      getNative().set('output_device', value);
        return value;
    }
    public static var playbackSpeedScale(get, set): Float;
    static function get_playbackSpeedScale(): Float {
        return getNative().get('playback_speed_scale');
    }
    static function set_playbackSpeedScale(value: Float): Float {
      getNative().set('playback_speed_scale', value);
        return value;
    }

	private static var _busLayoutChanged: Signal;
	public static var busLayoutChanged(get, default): Signal;
	static function get_busLayoutChanged(): Signal {
	    if (_busLayoutChanged == null) {
	        _busLayoutChanged = Signal.createFromObject(getNative(), 'bus_layout_changed');
	    }
	    return _busLayoutChanged;
	}
	private static var _busRenamed: Signal;
	public static var busRenamed(get, default): Signal;
	static function get_busRenamed(): Signal {
	    if (_busRenamed == null) {
	        _busRenamed = Signal.createFromObject(getNative(), 'bus_renamed');
	    }
	    return _busRenamed;
	}

  public static function addBus(?atPosition: Int): Void {
      var args = new ArrayList();
      if (atPosition != null) {
          args.append(atPosition);
      }
      getNative().call('add_bus', args);
  }
  public static function addBusEffect(busIdx: Int, effect: AudioEffect, ?atPosition: Int): Void {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(effect.native);
      if (atPosition != null) {
          args.append(atPosition);
      }
      getNative().call('add_bus_effect', args);
  }
  public static function generateBusLayout(): AudioBusLayout {
      var args = new ArrayList();
      var ref: NativeReference = getNative().call('generate_bus_layout', args);
      return new AudioBusLayout(ref);
  }
  public static function getBusChannels(busIdx: Int): Int {
      var args = new ArrayList();
      args.append(busIdx);
      return getNative().call('get_bus_channels', args);
  }
  public static function getBusEffect(busIdx: Int, effectIdx: Int): AudioEffect {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(effectIdx);
      var ref: NativeReference = getNative().call('get_bus_effect', args);
      return new AudioEffect(ref);
  }
  public static function getBusEffectCount(busIdx: Int): Int {
      var args = new ArrayList();
      args.append(busIdx);
      return getNative().call('get_bus_effect_count', args);
  }
  public static function getBusEffectInstance(busIdx: Int, effectIdx: Int, ?channel: Int): AudioEffectInstance {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(effectIdx);
      if (channel != null) {
          args.append(channel);
      }
      var ref: NativeReference = getNative().call('get_bus_effect_instance', args);
      return new AudioEffectInstance(ref);
  }
  public static function getBusIndex(busName: String): Int {
      var args = new ArrayList();
      args.append(busName);
      return getNative().call('get_bus_index', args);
  }
  public static function getBusName(busIdx: Int): String {
      var args = new ArrayList();
      args.append(busIdx);
      return getNative().call('get_bus_name', args);
  }
  public static function getBusPeakVolumeLeftDb(busIdx: Int, channel: Int): Float {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(channel);
      return getNative().call('get_bus_peak_volume_left_db', args);
  }
  public static function getBusPeakVolumeRightDb(busIdx: Int, channel: Int): Float {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(channel);
      return getNative().call('get_bus_peak_volume_right_db', args);
  }
  public static function getBusSend(busIdx: Int): String {
      var args = new ArrayList();
      args.append(busIdx);
      return getNative().call('get_bus_send', args);
  }
  public static function getBusVolumeDb(busIdx: Int): Float {
      var args = new ArrayList();
      args.append(busIdx);
      return getNative().call('get_bus_volume_db', args);
  }
  public static function getBusVolumeLinear(busIdx: Int): Float {
      var args = new ArrayList();
      args.append(busIdx);
      return getNative().call('get_bus_volume_linear', args);
  }
  public static function getDriverName(): String {
      var args = new ArrayList();
      return getNative().call('get_driver_name', args);
  }
  public static function getInputBufferLengthFrames(): Int {
      var args = new ArrayList();
      return getNative().call('get_input_buffer_length_frames', args);
  }
  public static function getInputDeviceList(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_input_device_list', args);
  }
  public static function getInputFrames(frames: Int): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(frames);
      return getNative().call('get_input_frames', args);
  }
  public static function getInputFramesAvailable(): Int {
      var args = new ArrayList();
      return getNative().call('get_input_frames_available', args);
  }
  public static function getInputMixRate(): Float {
      var args = new ArrayList();
      return getNative().call('get_input_mix_rate', args);
  }
  public static function getMixRate(): Float {
      var args = new ArrayList();
      return getNative().call('get_mix_rate', args);
  }
  public static function getOutputDeviceList(): TypedArray<String> {
      var args = new ArrayList();
      return getNative().call('get_output_device_list', args);
  }
  public static function getOutputLatency(): Float {
      var args = new ArrayList();
      return getNative().call('get_output_latency', args);
  }
  public static function getSpeakerMode(): Int {
      var args = new ArrayList();
      return getNative().call('get_speaker_mode', args);
  }
  public static function getTimeSinceLastMix(): Float {
      var args = new ArrayList();
      return getNative().call('get_time_since_last_mix', args);
  }
  public static function getTimeToNextMix(): Float {
      var args = new ArrayList();
      return getNative().call('get_time_to_next_mix', args);
  }
  public static function isBusBypassingEffects(busIdx: Int): Bool {
      var args = new ArrayList();
      args.append(busIdx);
      return getNative().call('is_bus_bypassing_effects', args);
  }
  public static function isBusEffectEnabled(busIdx: Int, effectIdx: Int): Bool {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(effectIdx);
      return getNative().call('is_bus_effect_enabled', args);
  }
  public static function isBusMute(busIdx: Int): Bool {
      var args = new ArrayList();
      args.append(busIdx);
      return getNative().call('is_bus_mute', args);
  }
  public static function isBusSolo(busIdx: Int): Bool {
      var args = new ArrayList();
      args.append(busIdx);
      return getNative().call('is_bus_solo', args);
  }
  public static function isStreamRegisteredAsSample(stream: AudioStream): Bool {
      var args = new ArrayList();
      args.append(stream.native);
      return getNative().call('is_stream_registered_as_sample', args);
  }
  public static function lock(): Void {
      var args = new ArrayList();
      getNative().call('lock', args);
  }
  public static function moveBus(index: Int, toIndex: Int): Void {
      var args = new ArrayList();
      args.append(index);
      args.append(toIndex);
      getNative().call('move_bus', args);
  }
  public static function registerStreamAsSample(stream: AudioStream): Void {
      var args = new ArrayList();
      args.append(stream.native);
      getNative().call('register_stream_as_sample', args);
  }
  public static function removeBus(index: Int): Void {
      var args = new ArrayList();
      args.append(index);
      getNative().call('remove_bus', args);
  }
  public static function removeBusEffect(busIdx: Int, effectIdx: Int): Void {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(effectIdx);
      getNative().call('remove_bus_effect', args);
  }
  public static function setBusBypassEffects(busIdx: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(enable);
      getNative().call('set_bus_bypass_effects', args);
  }
  public static function setBusEffectEnabled(busIdx: Int, effectIdx: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(effectIdx);
      args.append(enabled);
      getNative().call('set_bus_effect_enabled', args);
  }
  public static function setBusLayout(busLayout: AudioBusLayout): Void {
      var args = new ArrayList();
      args.append(busLayout.native);
      getNative().call('set_bus_layout', args);
  }
  public static function setBusMute(busIdx: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(enable);
      getNative().call('set_bus_mute', args);
  }
  public static function setBusName(busIdx: Int, name: String): Void {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(name);
      getNative().call('set_bus_name', args);
  }
  public static function setBusSend(busIdx: Int, send: String): Void {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(send);
      getNative().call('set_bus_send', args);
  }
  public static function setBusSolo(busIdx: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(enable);
      getNative().call('set_bus_solo', args);
  }
  public static function setBusVolumeDb(busIdx: Int, volumeDb: Float): Void {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(volumeDb);
      getNative().call('set_bus_volume_db', args);
  }
  public static function setBusVolumeLinear(busIdx: Int, volumeLinear: Float): Void {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(volumeLinear);
      getNative().call('set_bus_volume_linear', args);
  }
  public static function setEnableTaggingUsedAudioStreams(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      getNative().call('set_enable_tagging_used_audio_streams', args);
  }
  public static function setInputDeviceActive(active: Bool): Int {
      var args = new ArrayList();
      args.append(active);
      return getNative().call('set_input_device_active', args);
  }
  public static function swapBusEffects(busIdx: Int, effectIdx: Int, byEffectIdx: Int): Void {
      var args = new ArrayList();
      args.append(busIdx);
      args.append(effectIdx);
      args.append(byEffectIdx);
      getNative().call('swap_bus_effects', args);
  }
  public static function unlock(): Void {
      var args = new ArrayList();
      getNative().call('unlock', args);
  }
}
