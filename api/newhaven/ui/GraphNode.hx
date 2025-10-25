package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.Color;
import sunaba.core.Vector2;
import sunaba.Texture2D;

class GraphNode extends GraphElement {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('GraphNode');
        }
        native = _native;
    }

    public var ignoreInvalidConnectionType(get, set): Bool;
    function get_ignoreInvalidConnectionType(): Bool {
        return native.get('ignore_invalid_connection_type');
    }
    function set_ignoreInvalidConnectionType(value: Bool): Bool {
      native.set('ignore_invalid_connection_type', value);
        return value;
    }
    public var slotsFocusMode(get, set): Int;
    function get_slotsFocusMode(): Int {
        return native.get('slots_focus_mode');
    }
    function set_slotsFocusMode(value: Int): Int {
      native.set('slots_focus_mode', value);
        return value;
    }
    public var title(get, set): String;
    function get_title(): String {
        return native.get('title');
    }
    function set_title(value: String): String {
      native.set('title', value);
        return value;
    }

	private var _slotSizesChanged: Signal;
	public var slotSizesChanged(get, default): Signal;
	function get_slotSizesChanged(): Signal {
	    if (_slotSizesChanged == null) {
	        _slotSizesChanged = Signal.createFromObject(native, 'slot_sizes_changed');
	    }
	    return _slotSizesChanged;
	}
	private var _slotUpdated: Signal;
	public var slotUpdated(get, default): Signal;
	function get_slotUpdated(): Signal {
	    if (_slotUpdated == null) {
	        _slotUpdated = Signal.createFromObject(native, 'slot_updated');
	    }
	    return _slotUpdated;
	}

  public function clearAllSlots(): Void {
      var args = new ArrayList();
      native.call('clear_all_slots', args);
  }
  public function clearSlot(slotIndex: Int): Void {
      var args = new ArrayList();
      args.append(slotIndex);
      native.call('clear_slot', args);
  }
  public function getInputPortColor(portIdx: Int): Color {
      var args = new ArrayList();
      args.append(portIdx);
      return native.call('get_input_port_color', args);
  }
  public function getInputPortCount(): Int {
      var args = new ArrayList();
      return native.call('get_input_port_count', args);
  }
  public function getInputPortPosition(portIdx: Int): Vector2 {
      var args = new ArrayList();
      args.append(portIdx);
      return native.call('get_input_port_position', args);
  }
  public function getInputPortSlot(portIdx: Int): Int {
      var args = new ArrayList();
      args.append(portIdx);
      return native.call('get_input_port_slot', args);
  }
  public function getInputPortType(portIdx: Int): Int {
      var args = new ArrayList();
      args.append(portIdx);
      return native.call('get_input_port_type', args);
  }
  public function getOutputPortColor(portIdx: Int): Color {
      var args = new ArrayList();
      args.append(portIdx);
      return native.call('get_output_port_color', args);
  }
  public function getOutputPortCount(): Int {
      var args = new ArrayList();
      return native.call('get_output_port_count', args);
  }
  public function getOutputPortPosition(portIdx: Int): Vector2 {
      var args = new ArrayList();
      args.append(portIdx);
      return native.call('get_output_port_position', args);
  }
  public function getOutputPortSlot(portIdx: Int): Int {
      var args = new ArrayList();
      args.append(portIdx);
      return native.call('get_output_port_slot', args);
  }
  public function getOutputPortType(portIdx: Int): Int {
      var args = new ArrayList();
      args.append(portIdx);
      return native.call('get_output_port_type', args);
  }
  public function getSlotColorLeft(slotIndex: Int): Color {
      var args = new ArrayList();
      args.append(slotIndex);
      return native.call('get_slot_color_left', args);
  }
  public function getSlotColorRight(slotIndex: Int): Color {
      var args = new ArrayList();
      args.append(slotIndex);
      return native.call('get_slot_color_right', args);
  }
  public function getSlotCustomIconLeft(slotIndex: Int): Texture2D {
      var args = new ArrayList();
      args.append(slotIndex);
      var ref: NativeReference = native.call('get_slot_custom_icon_left', args);
      return new Texture2D(ref);
  }
  public function getSlotCustomIconRight(slotIndex: Int): Texture2D {
      var args = new ArrayList();
      args.append(slotIndex);
      var ref: NativeReference = native.call('get_slot_custom_icon_right', args);
      return new Texture2D(ref);
  }
  public function getSlotTypeLeft(slotIndex: Int): Int {
      var args = new ArrayList();
      args.append(slotIndex);
      return native.call('get_slot_type_left', args);
  }
  public function getSlotTypeRight(slotIndex: Int): Int {
      var args = new ArrayList();
      args.append(slotIndex);
      return native.call('get_slot_type_right', args);
  }
  public function getTitlebarHbox(): HBoxContainer {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_titlebar_hbox', args);
      return new HBoxContainer(ref);
  }
  public function isSlotDrawStylebox(slotIndex: Int): Bool {
      var args = new ArrayList();
      args.append(slotIndex);
      return native.call('is_slot_draw_stylebox', args);
  }
  public function isSlotEnabledLeft(slotIndex: Int): Bool {
      var args = new ArrayList();
      args.append(slotIndex);
      return native.call('is_slot_enabled_left', args);
  }
  public function isSlotEnabledRight(slotIndex: Int): Bool {
      var args = new ArrayList();
      args.append(slotIndex);
      return native.call('is_slot_enabled_right', args);
  }
  public function setSlot(slotIndex: Int, enableLeftPort: Bool, typeLeft: Int, colorLeft: Color, enableRightPort: Bool, typeRight: Int, colorRight: Color, ?customIconLeft: Texture2D, ?customIconRight: Texture2D, ?drawStylebox: Bool): Void {
      var args = new ArrayList();
      args.append(slotIndex);
      args.append(enableLeftPort);
      args.append(typeLeft);
      args.append(colorLeft);
      args.append(enableRightPort);
      args.append(typeRight);
      args.append(colorRight);
      if (customIconLeft != null) {
          args.append(customIconLeft.native);
      }
      if (customIconRight != null) {
          args.append(customIconRight.native);
      }
      if (drawStylebox != null) {
          args.append(drawStylebox);
      }
      native.call('set_slot', args);
  }
  public function setSlotColorLeft(slotIndex: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(slotIndex);
      args.append(color);
      native.call('set_slot_color_left', args);
  }
  public function setSlotColorRight(slotIndex: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(slotIndex);
      args.append(color);
      native.call('set_slot_color_right', args);
  }
  public function setSlotCustomIconLeft(slotIndex: Int, customIcon: Texture2D): Void {
      var args = new ArrayList();
      args.append(slotIndex);
      args.append(customIcon.native);
      native.call('set_slot_custom_icon_left', args);
  }
  public function setSlotCustomIconRight(slotIndex: Int, customIcon: Texture2D): Void {
      var args = new ArrayList();
      args.append(slotIndex);
      args.append(customIcon.native);
      native.call('set_slot_custom_icon_right', args);
  }
  public function setSlotDrawStylebox(slotIndex: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(slotIndex);
      args.append(enable);
      native.call('set_slot_draw_stylebox', args);
  }
  public function setSlotEnabledLeft(slotIndex: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(slotIndex);
      args.append(enable);
      native.call('set_slot_enabled_left', args);
  }
  public function setSlotEnabledRight(slotIndex: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(slotIndex);
      args.append(enable);
      native.call('set_slot_enabled_right', args);
  }
  public function setSlotTypeLeft(slotIndex: Int, type: Int): Void {
      var args = new ArrayList();
      args.append(slotIndex);
      args.append(type);
      native.call('set_slot_type_left', args);
  }
  public function setSlotTypeRight(slotIndex: Int, type: Int): Void {
      var args = new ArrayList();
      args.append(slotIndex);
      args.append(type);
      native.call('set_slot_type_right', args);
  }
}
