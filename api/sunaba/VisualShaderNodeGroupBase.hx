package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNodeGroupBase extends VisualShaderNodeResizableBase {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeGroupBase');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeGroupBase', native];
        scriptLoader.call('loadScript', args);
    }



  public function addInputPort(id: Int, type: Int, name: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(type);
      args.append(name);
      native.call('add_input_port', args);
  }
  public function addOutputPort(id: Int, type: Int, name: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(type);
      args.append(name);
      native.call('add_output_port', args);
  }
  public function clearInputPorts(): Void {
      var args = new ArrayList();
      native.call('clear_input_ports', args);
  }
  public function clearOutputPorts(): Void {
      var args = new ArrayList();
      native.call('clear_output_ports', args);
  }
  public function getFreeInputPortId(): Int {
      var args = new ArrayList();
      return native.call('get_free_input_port_id', args);
  }
  public function getFreeOutputPortId(): Int {
      var args = new ArrayList();
      return native.call('get_free_output_port_id', args);
  }
  public function getInputPortCount(): Int {
      var args = new ArrayList();
      return native.call('get_input_port_count', args);
  }
  public function getInputs(): String {
      var args = new ArrayList();
      return native.call('get_inputs', args);
  }
  public function getOutputPortCount(): Int {
      var args = new ArrayList();
      return native.call('get_output_port_count', args);
  }
  public function getOutputs(): String {
      var args = new ArrayList();
      return native.call('get_outputs', args);
  }
  public function hasInputPort(id: Int): Bool {
      var args = new ArrayList();
      args.append(id);
      return native.call('has_input_port', args);
  }
  public function hasOutputPort(id: Int): Bool {
      var args = new ArrayList();
      args.append(id);
      return native.call('has_output_port', args);
  }
  public function isValidPortName(name: String): Bool {
      var args = new ArrayList();
      args.append(name);
      return native.call('is_valid_port_name', args);
  }
  public function removeInputPort(id: Int): Void {
      var args = new ArrayList();
      args.append(id);
      native.call('remove_input_port', args);
  }
  public function removeOutputPort(id: Int): Void {
      var args = new ArrayList();
      args.append(id);
      native.call('remove_output_port', args);
  }
  public function setInputPortName(id: Int, name: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(name);
      native.call('set_input_port_name', args);
  }
  public function setInputPortType(id: Int, type: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(type);
      native.call('set_input_port_type', args);
  }
  public function setInputs(inputs: String): Void {
      var args = new ArrayList();
      args.append(inputs);
      native.call('set_inputs', args);
  }
  public function setOutputPortName(id: Int, name: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(name);
      native.call('set_output_port_name', args);
  }
  public function setOutputPortType(id: Int, type: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(type);
      native.call('set_output_port_type', args);
  }
  public function setOutputs(outputs: String): Void {
      var args = new ArrayList();
      args.append(outputs);
      native.call('set_outputs', args);
  }
}
