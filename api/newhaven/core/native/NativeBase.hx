package newhaven.core.native;

import newhaven.core.Variant;
import newhaven.core.ArrayList;

extern class NativeBase {
    public function call(funcname: String, args: ArrayList): Variant;
    public function get(propname: String): Variant;
    public function set(propname: String, value: Variant): Void;
    public function getClass(): String;
    public function isClass(classname: String): Bool;
    public function getMeta(name: String, ?_default: Variant): Variant;
    public function getMetaList(): ArrayList;
    public function getMethodArgumentCount(method: String): Int;
    public function getMethodList(): ArrayList;
    public function getPropertyList(): ArrayList;
    public function hasMeta(name: String): Bool;
    public function hasMethod(name: String): Bool;
    public function setMeta(name: String, value: Variant): Void;
    public function isNull(): Bool;
    public static function callStatic(classname: String, methodname: String, args: ArrayList): Variant;
}
