package newhaven.core.native;

import newhaven.core.Variant;
import newhaven.core.ArrayList;

@:native("NativeReference")
extern class NativeReference extends NativeBase {
    public function new(classname: String, ?args: ArrayList, ?scriptType: ScriptType);
    public function isValid(): Bool;
}
