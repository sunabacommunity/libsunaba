package sunaba.core.native;

import sunaba.core.Variant;
import sunaba.core.ArrayList;

@:native("NativeReference")
extern class NativeReference extends NativeBase {
    public function new(classname: String, ?args: ArrayList, ?scriptType: ScriptType);
    public function isValid(): Bool;
}
