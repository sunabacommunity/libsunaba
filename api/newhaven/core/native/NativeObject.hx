package newhaven.core.native;

import newhaven.core.Variant;
import newhaven.core.ArrayList;

@:native("NativeObject")
extern class NativeObject extends NativeBase {
    public function new(classname: String, ?args: ArrayList, ?scriptType: ScriptType);
    public function free(): Void;
    public static function getService(classname: String): NativeObject;
    public static function callStatic(classname: String, methodname: String, args: ArrayList): Variant;
}
