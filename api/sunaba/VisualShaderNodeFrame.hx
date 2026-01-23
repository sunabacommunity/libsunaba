package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.TypedArray;
import sunaba.core.Color;
import sunaba.core.Signal;

class VisualShaderNodeFrame extends VisualShaderNodeResizableBase {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShaderNodeFrame');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShaderNodeFrame', native];
        scriptLoader.call('loadScript', args);
    }

    public var attachedNodes(get, set): TypedArray<Int>;
    function get_attachedNodes(): TypedArray<Int> {
        return native.get('attached_nodes');
    }
    function set_attachedNodes(value: TypedArray<Int>): TypedArray<Int> {
      native.set('attached_nodes', value);
        return value;
    }
    public var autoshrink(get, set): Bool;
    function get_autoshrink(): Bool {
        return native.get('autoshrink');
    }
    function set_autoshrink(value: Bool): Bool {
      native.set('autoshrink', value);
        return value;
    }
    public var tintColor(get, set): Color;
    function get_tintColor(): Color {
        return native.get('tint_color');
    }
    function set_tintColor(value: Color): Color {
      native.set('tint_color', value);
        return value;
    }
    public var tintColorEnabled(get, set): Bool;
    function get_tintColorEnabled(): Bool {
        return native.get('tint_color_enabled');
    }
    function set_tintColorEnabled(value: Bool): Bool {
      native.set('tint_color_enabled', value);
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


  public function addAttachedNode(node: Int): Void {
      var args = new ArrayList();
      args.append(node);
      native.call('add_attached_node', args);
  }
  public function removeAttachedNode(node: Int): Void {
      var args = new ArrayList();
      args.append(node);
      native.call('remove_attached_node', args);
  }
}
