package newhaven.core.native;

import newhaven.BaseObject;
import newhaven.Variant;
import newhaven.ArrayList;

@:native("NativeReference")
extern class NativeReference extends NativeBase {
    public function new(classname: String, ?args: ArrayList, ?scriptType: ScriptType);
    public function isValid(): Bool;
}
