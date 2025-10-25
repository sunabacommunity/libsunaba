package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.Signal;

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
