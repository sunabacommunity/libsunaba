package sunaba.core;

import sunaba.core.native.NativeObject;
import sunaba.core.native.NativeReference;
import lua.Table;
import haxe.Int32;
import haxe.Int64;
import haxe.Constraints.Function;
import sunaba.core.Callable.CallableNative;

@:native("Variant")
extern class VariantNative {
    public function new();
    @:native("new")
    public static function fromInt32(value:Int32):VariantNative;
    @:native("new")
    public static function fromInt64(value:Int64):VariantNative;
    @:native("new")
    public static function fromInt(value:Int):VariantNative;
    @:native("new")
    public static function fromFloat32(vale:Float):VariantNative;
    @:native("new")
    public static function fromFloat64(value:Float):VariantNative;
    public static function fromString(value:String):VariantNative;
    @:native("new")
    public static function fromBool(value:Bool):VariantNative;
    @:native("new")
    public static function fromVector2(value:Vector2):VariantNative;
    @:native("new")
    public static function fromVector3(value:Vector3):VariantNative;
    @:native("new")
    public static function fromVector4(value:Vector4):VariantNative;
    @:native("new")
    public static function fromVector2i(value:Vector2i):VariantNative;
    @:native("new")
    public static function fromVector3i(value:Vector3i):VariantNative;
    @:native("new")
    public static function fromVector4i(value:Vector4i):VariantNative;
    @:native("new")
    public static function fromColor(value:Color):VariantNative;
    @:native("new")
    public static function fromRect2(value:Rect2):VariantNative;
    @:native("new")
    public static function fromRect2i(value:Rect2i):VariantNative;
    @:native("new")
    public static function fromBasis(value:Basis):VariantNative;
    @:native("new")
    public static function fromTransform2D(value:Transform2D):VariantNative;
    @:native("new")
    public static function fromTransform3D(value:Transform3D):VariantNative;
    //@:native("new")
    //public static function fromPlane(value:Plane):Variant;
    @:native("new")
    public static function fromQuatrernion(value:Quaternion):VariantNative;
    @:native("new")
    public static function fromDictionary(value:Dictionary):Variant;
    @:native("new")
    public static function fromArrayList(value:ArrayList):Variant;
    @:native("new")
    public static function fromAABB(aabb: AABB): AABB;
    @:native("new")
    public static function fromPlane(plane: Plane): Plane;
    @:native("new")
    public static function fromProjection(proj: Projection): Projection;
	@:native("new")
	public static function fromCallable(value: CallableNative): VariantNative;
    public static function fromByteArray(value:ByteArray):VariantNative;
    public static function fromIntArray(value:TypedArray<Int>): VariantNative;
    public static function fromIntArray64(value:TypedArray<Int>): VariantNative;
    public static function fromFloatArray(value:TypedArray<Float>): VariantNative;
    public static function fromFloatArray64(value:TypedArray<Float>): VariantNative;
    public static function fromStringArray(value:TypedArray<String>): VariantNative;
    public static function fromVector2Array(value:TypedArray<Vector2>): VariantNative;
    public static function fromVector3Array(value:TypedArray<Vector3>): VariantNative;
    public static function fromVector4Array(value:TypedArray<Vector4>): VariantNative;
    public static function fromColorArray(value:TypedArray<Color>): VariantNative;
    public static function fromObject(value:NativeObject):VariantNative;
    public static function fromReference(value:NativeReference):VariantNative;
	public static function fromFunction(value: Function):VariantNative;
    @:native("fromTable")
    public static function fromAny(value:Any):VariantNative;
    @:native("fromTable")
    public static function fromBaseClass(value:BaseClass):VariantNative;
    public function getType():VariantType;
    public static function getTypeName(type: VariantType):String;
    public function asString():String;
    public function asInt32():Int32;
    public function asInt():Int;
    public function asFloat():Float;
    public function asBool():Bool;
    public function asVector2():Vector2;
    public function asVector3():Vector3;
    public function asVector4():Vector4;
    public function asVector2i():Vector2i;
    public function asVector3i():Vector3i;
    public function asVector4i():Vector4i;
    public function asColor():Color;
    public function asRect2():Rect2;
    public function asRect2i():Rect2i;
    public function asBasis():Basis;
    public function asTransform2D():Transform2D;
    public function asTransform3D():Transform3D;
    public function asPlane():Plane;
    public function asAABB(): AABB;
    public function asProjection(): Projection;
    public function asQuaternion():Quaternion;
    public function asDictionary():Dictionary;
    public function asArrayList():ArrayList;
    public function asByteArray():ByteArray;
    public function asIntArray():TypedArray<Int>;
    public function asIntArray64():TypedArray<Int>;
    public function asFloatArray():TypedArray<Float>;
    public function asFloatArray64():TypedArray<Float>;
    public function asStringArray():TypedArray<String>;
    public function asVector2Array():TypedArray<Vector2>;
    public function asVector3Array():TypedArray<Vector3>;
    public function asVector4Array():TypedArray<Vector4>;
    public function asColorArray():TypedArray<Color>;
    public function asObject(): NativeObject;
    public function asReference(): NativeReference;
	public function asFunction(): Function;
    @:native("asTable")
    public function asAny(): Any;
    @:native("asTable")
    public function asBaseClass(): BaseClass;
	public function asCallable(): Callable;
    @:native("tostring")
    public function toString():String;
}
