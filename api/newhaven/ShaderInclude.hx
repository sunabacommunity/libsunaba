package newhaven;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;

class ShaderInclude extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('ShaderInclude');
        }
        native = _native;
    }

    public var code(get, set): String;
    function get_code(): String {
        return native.get('code');
    }
    function set_code(value: String): String {
      native.set('code', value);
        return value;
    }

}
