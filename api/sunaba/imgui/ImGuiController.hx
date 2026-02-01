package sunaba.imgui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Node;
import sunaba.core.Signal;
import sunaba.input.InputEvent;

class ImGuiController extends Node {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('ImGuiController');
        }
        this.native = _native;
    }


	private var _imguiLayout: Signal;
	public var imguiLayout(get, default): Signal;
	function get_imguiLayout(): Signal {
	    if (_imguiLayout == null) {
	        _imguiLayout = Signal.createFromObject(native, 'imgui_layout');
	    }
	    return _imguiLayout;
	}

  public function onLayerExiting(): Void {
      var args = new ArrayList();
      native.call('OnLayerExiting', args);
  }
  public function onFramePreDraw(): Void {
      var args = new ArrayList();
      native.call('on_frame_pre_draw', args);
  }
  public function windowInputCallback(unnamedArg0: InputEvent): Void {
      var args = new ArrayList();
      args.append(unnamedArg0.native);
      native.call('window_input_callback', args);
  }
}
