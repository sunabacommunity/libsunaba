package sunaba.core;

@:native("Byte")
extern class ByteObject  {
    public function new();

    @:native("new")
    public static function fromInt(value:Int):ByteObject;

    @:native("new")
    public static function fromFloat(value:Float):ByteObject;

    @:native("getInt64")
    public function getInt() :Int;

    public function getFloat() :Float;

    @:native("setInt64")
    public function setInt(value:Int):Void;

    public function setFloat(value:Float):Void;
}
