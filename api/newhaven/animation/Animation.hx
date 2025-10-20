package newhaven.animation;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.ArrayList;
import newhaven.core.Vector2;
import newhaven.core.Color;
import newhaven.core.TypedArray;
import newhaven.core.Vector3;
import newhaven.core.Quaternion;

class Animation extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Animation');
        }
        native = _native;
    }

    public var captureIncluded(get, set): Bool;
    function get_captureIncluded(): Bool {
        return native.get('capture_included');
    }
    function set_captureIncluded(value: Bool): Bool {
      native.set('capture_included', value);
        return value;
    }
    public var length(get, set): Float;
    function get_length(): Float {
        return native.get('length');
    }
    function set_length(value: Float): Float {
      native.set('length', value);
        return value;
    }
    public var loopMode(get, set): Int;
    function get_loopMode(): Int {
        return native.get('loop_mode');
    }
    function set_loopMode(value: Int): Int {
      native.set('loop_mode', value);
        return value;
    }
    public var step(get, set): Float;
    function get_step(): Float {
        return native.get('step');
    }
    function set_step(value: Float): Float {
      native.set('step', value);
        return value;
    }

  public function addMarker(name: String, time: Float): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(time);
      native.call('add_marker', args);
  }
  public function addTrack(type: Int, ?atPosition: Int): Int {
      var args = new ArrayList();
      args.append(type);
      if (atPosition != null) {
          args.append(atPosition);
      }
      return native.call('add_track', args);
  }
  public function animationTrackGetKeyAnimation(trackIdx: Int, keyIdx: Int): String {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      return native.call('animation_track_get_key_animation', args);
  }
  public function animationTrackInsertKey(trackIdx: Int, time: Float, animation: String): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(time);
      args.append(animation);
      return native.call('animation_track_insert_key', args);
  }
  public function animationTrackSetKeyAnimation(trackIdx: Int, keyIdx: Int, animation: String): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      args.append(animation);
      native.call('animation_track_set_key_animation', args);
  }
  public function audioTrackGetKeyEndOffset(trackIdx: Int, keyIdx: Int): Float {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      return native.call('audio_track_get_key_end_offset', args);
  }
  public function audioTrackGetKeyStartOffset(trackIdx: Int, keyIdx: Int): Float {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      return native.call('audio_track_get_key_start_offset', args);
  }
  public function audioTrackGetKeyStream(trackIdx: Int, keyIdx: Int): Resource {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      var ref: NativeReference = native.call('audio_track_get_key_stream', args);
      return new Resource(ref);
  }
  public function audioTrackInsertKey(trackIdx: Int, time: Float, stream: Resource, ?startOffset: Float, ?endOffset: Float): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(time);
      args.append(stream.native);
      if (startOffset != null) {
          args.append(startOffset);
      }
      if (endOffset != null) {
          args.append(endOffset);
      }
      return native.call('audio_track_insert_key', args);
  }
  public function audioTrackIsUseBlend(trackIdx: Int): Bool {
      var args = new ArrayList();
      args.append(trackIdx);
      return native.call('audio_track_is_use_blend', args);
  }
  public function audioTrackSetKeyEndOffset(trackIdx: Int, keyIdx: Int, offset: Float): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      args.append(offset);
      native.call('audio_track_set_key_end_offset', args);
  }
  public function audioTrackSetKeyStartOffset(trackIdx: Int, keyIdx: Int, offset: Float): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      args.append(offset);
      native.call('audio_track_set_key_start_offset', args);
  }
  public function audioTrackSetKeyStream(trackIdx: Int, keyIdx: Int, stream: Resource): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      args.append(stream.native);
      native.call('audio_track_set_key_stream', args);
  }
  public function audioTrackSetUseBlend(trackIdx: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(enable);
      native.call('audio_track_set_use_blend', args);
  }
  public function bezierTrackGetKeyInHandle(trackIdx: Int, keyIdx: Int): Vector2 {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      return native.call('bezier_track_get_key_in_handle', args);
  }
  public function bezierTrackGetKeyOutHandle(trackIdx: Int, keyIdx: Int): Vector2 {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      return native.call('bezier_track_get_key_out_handle', args);
  }
  public function bezierTrackGetKeyValue(trackIdx: Int, keyIdx: Int): Float {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      return native.call('bezier_track_get_key_value', args);
  }
  public function bezierTrackInsertKey(trackIdx: Int, time: Float, value: Float, ?inHandle: Vector2, ?outHandle: Vector2): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(time);
      args.append(value);
      if (inHandle != null) {
          args.append(inHandle);
      }
      if (outHandle != null) {
          args.append(outHandle);
      }
      return native.call('bezier_track_insert_key', args);
  }
  public function bezierTrackInterpolate(trackIdx: Int, time: Float): Float {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(time);
      return native.call('bezier_track_interpolate', args);
  }
  public function bezierTrackSetKeyInHandle(trackIdx: Int, keyIdx: Int, inHandle: Vector2, ?balancedValueTimeRatio: Float): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      args.append(inHandle);
      if (balancedValueTimeRatio != null) {
          args.append(balancedValueTimeRatio);
      }
      native.call('bezier_track_set_key_in_handle', args);
  }
  public function bezierTrackSetKeyOutHandle(trackIdx: Int, keyIdx: Int, outHandle: Vector2, ?balancedValueTimeRatio: Float): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      args.append(outHandle);
      if (balancedValueTimeRatio != null) {
          args.append(balancedValueTimeRatio);
      }
      native.call('bezier_track_set_key_out_handle', args);
  }
  public function bezierTrackSetKeyValue(trackIdx: Int, keyIdx: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      args.append(value);
      native.call('bezier_track_set_key_value', args);
  }
  public function blendShapeTrackInsertKey(trackIdx: Int, time: Float, amount: Float): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(time);
      args.append(amount);
      return native.call('blend_shape_track_insert_key', args);
  }
  public function blendShapeTrackInterpolate(trackIdx: Int, timeSec: Float, ?backward: Bool): Float {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(timeSec);
      if (backward != null) {
          args.append(backward);
      }
      return native.call('blend_shape_track_interpolate', args);
  }
  public function clear(): Void {
      var args = new ArrayList();
      native.call('clear', args);
  }
  public function compress(?pageSize: Int, ?fps: Int, ?splitTolerance: Float): Void {
      var args = new ArrayList();
      if (pageSize != null) {
          args.append(pageSize);
      }
      if (fps != null) {
          args.append(fps);
      }
      if (splitTolerance != null) {
          args.append(splitTolerance);
      }
      native.call('compress', args);
  }
  public function copyTrack(trackIdx: Int, toAnimation: Animation): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(toAnimation.native);
      native.call('copy_track', args);
  }
  public function findTrack(path: String, type: Int): Int {
      var args = new ArrayList();
      args.append(path);
      args.append(type);
      return native.call('find_track', args);
  }
  public function getMarkerAtTime(time: Float): String {
      var args = new ArrayList();
      args.append(time);
      return native.call('get_marker_at_time', args);
  }
  public function getMarkerColor(name: String): Color {
      var args = new ArrayList();
      args.append(name);
      return native.call('get_marker_color', args);
  }
  public function getMarkerNames(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_marker_names', args);
  }
  public function getMarkerTime(name: String): Float {
      var args = new ArrayList();
      args.append(name);
      return native.call('get_marker_time', args);
  }
  public function getNextMarker(time: Float): String {
      var args = new ArrayList();
      args.append(time);
      return native.call('get_next_marker', args);
  }
  public function getPrevMarker(time: Float): String {
      var args = new ArrayList();
      args.append(time);
      return native.call('get_prev_marker', args);
  }
  public function getTrackCount(): Int {
      var args = new ArrayList();
      return native.call('get_track_count', args);
  }
  public function hasMarker(name: String): Bool {
      var args = new ArrayList();
      args.append(name);
      return native.call('has_marker', args);
  }
  public function methodTrackGetName(trackIdx: Int, keyIdx: Int): String {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      return native.call('method_track_get_name', args);
  }
  public function methodTrackGetParams(trackIdx: Int, keyIdx: Int): ArrayList {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      return native.call('method_track_get_params', args);
  }
  public function optimize(?allowedVelocityErr: Float, ?allowedAngularErr: Float, ?precision: Int): Void {
      var args = new ArrayList();
      if (allowedVelocityErr != null) {
          args.append(allowedVelocityErr);
      }
      if (allowedAngularErr != null) {
          args.append(allowedAngularErr);
      }
      if (precision != null) {
          args.append(precision);
      }
      native.call('optimize', args);
  }
  public function positionTrackInsertKey(trackIdx: Int, time: Float, position: Vector3): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(time);
      args.append(position);
      return native.call('position_track_insert_key', args);
  }
  public function positionTrackInterpolate(trackIdx: Int, timeSec: Float, ?backward: Bool): Vector3 {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(timeSec);
      if (backward != null) {
          args.append(backward);
      }
      return native.call('position_track_interpolate', args);
  }
  public function removeMarker(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      native.call('remove_marker', args);
  }
  public function removeTrack(trackIdx: Int): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      native.call('remove_track', args);
  }
  public function rotationTrackInsertKey(trackIdx: Int, time: Float, rotation: Quaternion): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(time);
      args.append(rotation);
      return native.call('rotation_track_insert_key', args);
  }
  public function rotationTrackInterpolate(trackIdx: Int, timeSec: Float, ?backward: Bool): Quaternion {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(timeSec);
      if (backward != null) {
          args.append(backward);
      }
      return native.call('rotation_track_interpolate', args);
  }
  public function scaleTrackInsertKey(trackIdx: Int, time: Float, scale: Vector3): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(time);
      args.append(scale);
      return native.call('scale_track_insert_key', args);
  }
  public function scaleTrackInterpolate(trackIdx: Int, timeSec: Float, ?backward: Bool): Vector3 {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(timeSec);
      if (backward != null) {
          args.append(backward);
      }
      return native.call('scale_track_interpolate', args);
  }
  public function setMarkerColor(name: String, color: Color): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(color);
      native.call('set_marker_color', args);
  }
  public function trackFindKey(trackIdx: Int, time: Float, ?findMode: Int, ?limit: Bool, ?backward: Bool): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(time);
      if (findMode != null) {
          args.append(findMode);
      }
      if (limit != null) {
          args.append(limit);
      }
      if (backward != null) {
          args.append(backward);
      }
      return native.call('track_find_key', args);
  }
  public function trackGetInterpolationLoopWrap(trackIdx: Int): Bool {
      var args = new ArrayList();
      args.append(trackIdx);
      return native.call('track_get_interpolation_loop_wrap', args);
  }
  public function trackGetInterpolationType(trackIdx: Int): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      return native.call('track_get_interpolation_type', args);
  }
  public function trackGetKeyCount(trackIdx: Int): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      return native.call('track_get_key_count', args);
  }
  public function trackGetKeyTime(trackIdx: Int, keyIdx: Int): Float {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      return native.call('track_get_key_time', args);
  }
  public function trackGetKeyTransition(trackIdx: Int, keyIdx: Int): Float {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      return native.call('track_get_key_transition', args);
  }
  public function trackGetKeyValue(trackIdx: Int, keyIdx: Int): Variant {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      return native.call('track_get_key_value', args);
  }
  public function trackGetPath(trackIdx: Int): String {
      var args = new ArrayList();
      args.append(trackIdx);
      return native.call('track_get_path', args);
  }
  public function trackGetType(trackIdx: Int): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      return native.call('track_get_type', args);
  }
  public function trackInsertKey(trackIdx: Int, time: Float, key: Variant, ?transition: Float): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(time);
      args.append(key);
      if (transition != null) {
          args.append(transition);
      }
      return native.call('track_insert_key', args);
  }
  public function trackIsCompressed(trackIdx: Int): Bool {
      var args = new ArrayList();
      args.append(trackIdx);
      return native.call('track_is_compressed', args);
  }
  public function trackIsEnabled(trackIdx: Int): Bool {
      var args = new ArrayList();
      args.append(trackIdx);
      return native.call('track_is_enabled', args);
  }
  public function trackIsImported(trackIdx: Int): Bool {
      var args = new ArrayList();
      args.append(trackIdx);
      return native.call('track_is_imported', args);
  }
  public function trackMoveDown(trackIdx: Int): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      native.call('track_move_down', args);
  }
  public function trackMoveTo(trackIdx: Int, toIdx: Int): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(toIdx);
      native.call('track_move_to', args);
  }
  public function trackMoveUp(trackIdx: Int): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      native.call('track_move_up', args);
  }
  public function trackRemoveKey(trackIdx: Int, keyIdx: Int): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      native.call('track_remove_key', args);
  }
  public function trackRemoveKeyAtTime(trackIdx: Int, time: Float): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(time);
      native.call('track_remove_key_at_time', args);
  }
  public function trackSetEnabled(trackIdx: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(enabled);
      native.call('track_set_enabled', args);
  }
  public function trackSetImported(trackIdx: Int, imported: Bool): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(imported);
      native.call('track_set_imported', args);
  }
  public function trackSetInterpolationLoopWrap(trackIdx: Int, interpolation: Bool): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(interpolation);
      native.call('track_set_interpolation_loop_wrap', args);
  }
  public function trackSetInterpolationType(trackIdx: Int, interpolation: Int): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(interpolation);
      native.call('track_set_interpolation_type', args);
  }
  public function trackSetKeyTime(trackIdx: Int, keyIdx: Int, time: Float): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      args.append(time);
      native.call('track_set_key_time', args);
  }
  public function trackSetKeyTransition(trackIdx: Int, keyIdx: Int, transition: Float): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(keyIdx);
      args.append(transition);
      native.call('track_set_key_transition', args);
  }
  public function trackSetKeyValue(trackIdx: Int, key: Int, value: Variant): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(key);
      args.append(value);
      native.call('track_set_key_value', args);
  }
  public function trackSetPath(trackIdx: Int, path: String): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(path);
      native.call('track_set_path', args);
  }
  public function trackSwap(trackIdx: Int, withIdx: Int): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(withIdx);
      native.call('track_swap', args);
  }
  public function valueTrackGetUpdateMode(trackIdx: Int): Int {
      var args = new ArrayList();
      args.append(trackIdx);
      return native.call('value_track_get_update_mode', args);
  }
  public function valueTrackInterpolate(trackIdx: Int, timeSec: Float, ?backward: Bool): Variant {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(timeSec);
      if (backward != null) {
          args.append(backward);
      }
      return native.call('value_track_interpolate', args);
  }
  public function valueTrackSetUpdateMode(trackIdx: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(trackIdx);
      args.append(mode);
      native.call('value_track_set_update_mode', args);
  }
}
