package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class VisualShaderNode extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNode');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNode', native];
        scriptLoader.call('loadScript', args);
    }

    public var linkedParentGraphFrame(get, set): Int;
    function get_linkedParentGraphFrame(): Int {
        return native.get('linked_parent_graph_frame');
    }
    function set_linkedParentGraphFrame(value: Int): Int {
      native.set('linked_parent_graph_frame', value);
        return value;
    }
    public var outputPortForPreview(get, set): Int;
    function get_outputPortForPreview(): Int {
        return native.get('output_port_for_preview');
    }
    function set_outputPortForPreview(value: Int): Int {
      native.set('output_port_for_preview', value);
        return value;
    }


  public function clearDefaultInputValues(): Void {
      var args = new ArrayList();
      native.call('clear_default_input_values', args);
  }
  public function getDefaultInputPort(type: Int): Int {
      var args = new ArrayList();
      args.append(type);
      return native.call('get_default_input_port', args);
  }
  public function getDefaultInputValues(): ArrayList {
      var args = new ArrayList();
      return native.call('get_default_input_values', args);
  }
  public function getInputPortDefaultValue(port: Int): Variant {
      var args = new ArrayList();
      args.append(port);
      return native.call('get_input_port_default_value', args);
  }
  public function removeInputPortDefaultValue(port: Int): Void {
      var args = new ArrayList();
      args.append(port);
      native.call('remove_input_port_default_value', args);
  }
  public function setDefaultInputValues(values: ArrayList): Void {
      var args = new ArrayList();
      args.append(values);
      native.call('set_default_input_values', args);
  }
  public function setInputPortDefaultValue(port: Int, value: Variant, ?prevValue: Variant): Void {
      var args = new ArrayList();
      args.append(port);
      args.append(value);
      if (prevValue != null) {
          args.append(prevValue);
      }
      native.call('set_input_port_default_value', args);
  }
}
