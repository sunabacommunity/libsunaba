package sunaba.input;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.Vector3;
import sunaba.core.Dictionary;
import sunaba.core.Vector2;
import sunaba.Resource;

class InputService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('InputService');
        }
        return _native;
    }

    public static var emulateMouseFromTouch(get, set): Bool;
    static function get_emulateMouseFromTouch(): Bool {
        return getNative().get('emulate_mouse_from_touch');
    }
    static function set_emulateMouseFromTouch(value: Bool): Bool {
      getNative().set('emulate_mouse_from_touch', value);
        return value;
    }
    public static var emulateTouchFromMouse(get, set): Bool;
    static function get_emulateTouchFromMouse(): Bool {
        return getNative().get('emulate_touch_from_mouse');
    }
    static function set_emulateTouchFromMouse(value: Bool): Bool {
      getNative().set('emulate_touch_from_mouse', value);
        return value;
    }
    public static var mouseMode(get, set): Int;
    static function get_mouseMode(): Int {
        return getNative().get('mouse_mode');
    }
    static function set_mouseMode(value: Int): Int {
      getNative().set('mouse_mode', value);
        return value;
    }
    public static var useAccumulatedInput(get, set): Bool;
    static function get_useAccumulatedInput(): Bool {
        return getNative().get('use_accumulated_input');
    }
    static function set_useAccumulatedInput(value: Bool): Bool {
      getNative().set('use_accumulated_input', value);
        return value;
    }

	private static var _joyConnectionChanged: Signal;
	public static var joyConnectionChanged(get, default): Signal;
	static function get_joyConnectionChanged(): Signal {
	    if (_joyConnectionChanged == null) {
	        _joyConnectionChanged = Signal.createFromObject(getNative(), 'joy_connection_changed');
	    }
	    return _joyConnectionChanged;
	}

  public function actionPress(action: String, ?strength: Float): Void {
      var args = new ArrayList();
      args.append(action);
      if (strength != null) {
          args.append(strength);
      }
      getNative().call('action_press', args);
  }
  public function actionRelease(action: String): Void {
      var args = new ArrayList();
      args.append(action);
      getNative().call('action_release', args);
  }
  public function addJoyMapping(mapping: String, ?updateExisting: Bool): Void {
      var args = new ArrayList();
      args.append(mapping);
      if (updateExisting != null) {
          args.append(updateExisting);
      }
      getNative().call('add_joy_mapping', args);
  }
  public function flushBufferedEvents(): Void {
      var args = new ArrayList();
      getNative().call('flush_buffered_events', args);
  }
  public function getAccelerometer(): Vector3 {
      var args = new ArrayList();
      return getNative().call('get_accelerometer', args);
  }
  public function getActionRawStrength(action: String, ?exactMatch: Bool): Float {
      var args = new ArrayList();
      args.append(action);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return getNative().call('get_action_raw_strength', args);
  }
  public function getActionStrength(action: String, ?exactMatch: Bool): Float {
      var args = new ArrayList();
      args.append(action);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return getNative().call('get_action_strength', args);
  }
  public function getAxis(negativeAction: String, positiveAction: String): Float {
      var args = new ArrayList();
      args.append(negativeAction);
      args.append(positiveAction);
      return getNative().call('get_axis', args);
  }
  public function getCurrentCursorShape(): Int {
      var args = new ArrayList();
      return getNative().call('get_current_cursor_shape', args);
  }
  public function getGravity(): Vector3 {
      var args = new ArrayList();
      return getNative().call('get_gravity', args);
  }
  public function getGyroscope(): Vector3 {
      var args = new ArrayList();
      return getNative().call('get_gyroscope', args);
  }
  public function getJoyAxis(device: Int, axis: Int): Float {
      var args = new ArrayList();
      args.append(device);
      args.append(axis);
      return getNative().call('get_joy_axis', args);
  }
  public function getJoyGuid(device: Int): String {
      var args = new ArrayList();
      args.append(device);
      return getNative().call('get_joy_guid', args);
  }
  public function getJoyInfo(device: Int): Dictionary {
      var args = new ArrayList();
      args.append(device);
      return getNative().call('get_joy_info', args);
  }
  public function getJoyName(device: Int): String {
      var args = new ArrayList();
      args.append(device);
      return getNative().call('get_joy_name', args);
  }
  public function getJoyVibrationDuration(device: Int): Float {
      var args = new ArrayList();
      args.append(device);
      return getNative().call('get_joy_vibration_duration', args);
  }
  public function getJoyVibrationStrength(device: Int): Vector2 {
      var args = new ArrayList();
      args.append(device);
      return getNative().call('get_joy_vibration_strength', args);
  }
  public function getLastMouseScreenVelocity(): Vector2 {
      var args = new ArrayList();
      return getNative().call('get_last_mouse_screen_velocity', args);
  }
  public function getLastMouseVelocity(): Vector2 {
      var args = new ArrayList();
      return getNative().call('get_last_mouse_velocity', args);
  }
  public function getMagnetometer(): Vector3 {
      var args = new ArrayList();
      return getNative().call('get_magnetometer', args);
  }
  public function getMouseButtonMask(): Int {
      var args = new ArrayList();
      return getNative().call('get_mouse_button_mask', args);
  }
  public function getVector(negativeX: String, positiveX: String, negativeY: String, positiveY: String, ?deadzone: Float): Vector2 {
      var args = new ArrayList();
      args.append(negativeX);
      args.append(positiveX);
      args.append(negativeY);
      args.append(positiveY);
      if (deadzone != null) {
          args.append(deadzone);
      }
      return getNative().call('get_vector', args);
  }
  public function isActionJustPressed(action: String, ?exactMatch: Bool): Bool {
      var args = new ArrayList();
      args.append(action);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return getNative().call('is_action_just_pressed', args);
  }
  public function isActionJustPressedByEvent(action: String, event: InputEvent, ?exactMatch: Bool): Bool {
      var args = new ArrayList();
      args.append(action);
      args.append(event.native);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return getNative().call('is_action_just_pressed_by_event', args);
  }
  public function isActionJustReleased(action: String, ?exactMatch: Bool): Bool {
      var args = new ArrayList();
      args.append(action);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return getNative().call('is_action_just_released', args);
  }
  public function isActionJustReleasedByEvent(action: String, event: InputEvent, ?exactMatch: Bool): Bool {
      var args = new ArrayList();
      args.append(action);
      args.append(event.native);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return getNative().call('is_action_just_released_by_event', args);
  }
  public function isActionPressed(action: String, ?exactMatch: Bool): Bool {
      var args = new ArrayList();
      args.append(action);
      if (exactMatch != null) {
          args.append(exactMatch);
      }
      return getNative().call('is_action_pressed', args);
  }
  public function isAnythingPressed(): Bool {
      var args = new ArrayList();
      return getNative().call('is_anything_pressed', args);
  }
  public function isJoyButtonPressed(device: Int, button: Int): Bool {
      var args = new ArrayList();
      args.append(device);
      args.append(button);
      return getNative().call('is_joy_button_pressed', args);
  }
  public function isJoyKnown(device: Int): Bool {
      var args = new ArrayList();
      args.append(device);
      return getNative().call('is_joy_known', args);
  }
  public function isKeyLabelPressed(keycode: Int): Bool {
      var args = new ArrayList();
      args.append(keycode);
      return getNative().call('is_key_label_pressed', args);
  }
  public function isKeyPressed(keycode: Int): Bool {
      var args = new ArrayList();
      args.append(keycode);
      return getNative().call('is_key_pressed', args);
  }
  public function isMouseButtonPressed(button: Int): Bool {
      var args = new ArrayList();
      args.append(button);
      return getNative().call('is_mouse_button_pressed', args);
  }
  public function isPhysicalKeyPressed(keycode: Int): Bool {
      var args = new ArrayList();
      args.append(keycode);
      return getNative().call('is_physical_key_pressed', args);
  }
  public function parseInputEvent(event: InputEvent): Void {
      var args = new ArrayList();
      args.append(event.native);
      getNative().call('parse_input_event', args);
  }
  public function removeJoyMapping(guid: String): Void {
      var args = new ArrayList();
      args.append(guid);
      getNative().call('remove_joy_mapping', args);
  }
  public function setAccelerometer(value: Vector3): Void {
      var args = new ArrayList();
      args.append(value);
      getNative().call('set_accelerometer', args);
  }
  public function setCustomMouseCursor(image: Resource, ?shape: Int, ?hotspot: Vector2): Void {
      var args = new ArrayList();
      args.append(image.native);
      if (shape != null) {
          args.append(shape);
      }
      if (hotspot != null) {
          args.append(hotspot);
      }
      getNative().call('set_custom_mouse_cursor', args);
  }
  public function setDefaultCursorShape(?shape: Int): Void {
      var args = new ArrayList();
      if (shape != null) {
          args.append(shape);
      }
      getNative().call('set_default_cursor_shape', args);
  }
  public function setGravity(value: Vector3): Void {
      var args = new ArrayList();
      args.append(value);
      getNative().call('set_gravity', args);
  }
  public function setGyroscope(value: Vector3): Void {
      var args = new ArrayList();
      args.append(value);
      getNative().call('set_gyroscope', args);
  }
  public function setMagnetometer(value: Vector3): Void {
      var args = new ArrayList();
      args.append(value);
      getNative().call('set_magnetometer', args);
  }
  public function shouldIgnoreDevice(vendorId: Int, productId: Int): Bool {
      var args = new ArrayList();
      args.append(vendorId);
      args.append(productId);
      return getNative().call('should_ignore_device', args);
  }
  public function startJoyVibration(device: Int, weakMagnitude: Float, strongMagnitude: Float, ?duration: Float): Void {
      var args = new ArrayList();
      args.append(device);
      args.append(weakMagnitude);
      args.append(strongMagnitude);
      if (duration != null) {
          args.append(duration);
      }
      getNative().call('start_joy_vibration', args);
  }
  public function stopJoyVibration(device: Int): Void {
      var args = new ArrayList();
      args.append(device);
      getNative().call('stop_joy_vibration', args);
  }
  public function vibrateHandheld(?durationMs: Int, ?amplitude: Float): Void {
      var args = new ArrayList();
      if (durationMs != null) {
          args.append(durationMs);
      }
      if (amplitude != null) {
          args.append(amplitude);
      }
      getNative().call('vibrate_handheld', args);
  }
  public function warpMouse(position: Vector2): Void {
      var args = new ArrayList();
      args.append(position);
      getNative().call('warp_mouse', args);
  }
}
