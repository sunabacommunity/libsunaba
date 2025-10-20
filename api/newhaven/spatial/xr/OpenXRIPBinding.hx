package newhaven.spatial.xr;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.core.ArrayList;
import newhaven.core.TypedArray;
import newhaven.core.Signal;

class OpenXRIPBinding extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('OpenXRIPBinding');
        }
        native = _native;
    }

    public var action(get, set): OpenXRAction;
    function get_action(): OpenXRAction {
        var ref: NativeReference = native.get('action');
        return new OpenXRAction(ref);
    }
    function set_action(value: OpenXRAction): OpenXRAction {
      native.set('action', value.native);
        return value;
    }
    public var bindingModifiers(get, set): ArrayList;
    function get_bindingModifiers(): ArrayList {
        return native.get('binding_modifiers');
    }
    function set_bindingModifiers(value: ArrayList): ArrayList {
      native.set('binding_modifiers', value);
        return value;
    }
    public var bindingPath(get, set): String;
    function get_bindingPath(): String {
        return native.get('binding_path');
    }
    function set_bindingPath(value: String): String {
      native.set('binding_path', value);
        return value;
    }
    public var paths(get, set): TypedArray<String>;
    function get_paths(): TypedArray<String> {
        return native.get('paths');
    }
    function set_paths(value: TypedArray<String>): TypedArray<String> {
      native.set('paths', value);
        return value;
    }


  public function addPath(path: String): Void {
      var args = new ArrayList();
      args.append(path);
      native.call('add_path', args);
  }
  public function getBindingModifierCount(): Int {
      var args = new ArrayList();
      return native.call('get_binding_modifier_count', args);
  }
  public function getPathCount(): Int {
      var args = new ArrayList();
      return native.call('get_path_count', args);
  }
  public function hasPath(path: String): Bool {
      var args = new ArrayList();
      args.append(path);
      return native.call('has_path', args);
  }
  public function removePath(path: String): Void {
      var args = new ArrayList();
      args.append(path);
      native.call('remove_path', args);
  }
}
