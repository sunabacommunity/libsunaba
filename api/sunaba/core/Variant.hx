package sunaba.core;

import lua.Table;
import haxe.Int32;
import haxe.Int64;
import sunaba.core.native.NativeObject;
import sunaba.core.native.NativeReference;
import haxe.Constraints.Function;

@:forward(getType, getTypeName)
abstract Variant(VariantNative) from VariantNative to VariantNative {
    @:from
    public static function fromString(value:String):Variant {
        return VariantNative.fromString(value);
    }
    @:to
    public inline function toString():String {
        return this.asString();
    }
    @:from
    public static function fromInt(value:Int):Variant {
        return VariantNative.fromInt(value);
    }
    @:to
    public inline function toInt():Int {
        return this.asInt();
    }
    @:from
    public static function fromInt64(value:Int64):Variant {
        return VariantNative.fromInt64(value);
    }
    @:to
    public inline function toInt64():Int64 {
        return this.asInt();
    }
    @:from
    public static function fromInt32(value:Int32):Variant {
        return VariantNative.fromInt32(value);
    }
    @:to
    public inline function toInt32():Int32 {
        return this.asInt32();
    }
    @:from
    public static function fromFloat(value:Float):Variant {
        return VariantNative.fromFloat32(value);
    }
    @:to
    public inline function toFloat():Float {
        return this.asFloat();
    }
    @:from
    public static function fromBool(value:Bool):Variant {
        return VariantNative.fromBool(value);
    }
    @:to
    public inline function toBool():Bool {
        return this.asBool();
    }
    @:from
    public static function fromVector2(value:Vector2):Variant {
        return VariantNative.fromVector2(value);
    }
    @:to
    public inline function toVector2():Vector2 {
        return this.asVector2();
    }
    @:from
    public static function fromVector3(value:Vector3):Variant {
        return VariantNative.fromVector3(value);
    }
    @:to
    public inline function toVector3():Vector3 {
        return this.asVector3();
    }
    @:from
    public static function fromVector4(value:Vector4):Variant {
        return VariantNative.fromVector4(value);
    }
    @:to
    public inline function toVector4():Vector4 {
        return this.asVector4();
    }
    @:from
    public static function fromVector2i(value:Vector2i):Variant {
        return VariantNative.fromVector2i(value);
    }
    @:to
    public inline function toVector2i():Vector2i {
        return this.asVector2i();
    }
    @:from
    public static function fromVector3i(value:Vector3i):Variant {
        return VariantNative.fromVector3i(value);
    }
    @:to
    public inline function toVector3i():Vector3i {
        return this.asVector3i();
    }
    @:from
    public static function fromVector4i(value:Vector4i):Variant {
        return VariantNative.fromVector4i(value);
    }
    @:to
    public inline function toVector4i():Vector4i {
        return this.asVector4i();
    }
    @:from
    public static function fromColor(value:Color):Variant {
        return VariantNative.fromColor(value);
    }
    @:to
    public inline function toColor():Color {
        return this.asColor();
    }
    @:from
    public static function fromRect2(value:Rect2):Variant {
        return VariantNative.fromRect2(value);
    }
    @:to
    public inline function toRect2():Rect2 {
        return this.asRect2();
    }
    @:from
    public static function fromRect2i(value:Rect2i):Variant {
        return VariantNative.fromRect2i(value);
    }
    @:to
    public inline function toRect2i():Rect2i {
        return this.asRect2i();
    }
    @:from
    public static function fromBasis(value:Basis):Variant {
        return VariantNative.fromBasis(value);
    }
    @:to
    public inline function toBasis():Basis {
        return this.asBasis();
    }
    @:from
    public static function fromTransform2D(value:Transform2D):Variant {
        return VariantNative.fromTransform2D(value);
    }
    @:to
    public inline function toTransform2D():Transform2D {
        return this.asTransform2D();
    }
    @:from
    public static function fromTransform3D(value:Transform3D):Variant {
        return VariantNative.fromTransform3D(value);
    }
    @:to
    public inline function toTransform3D():Transform3D {
        return this.asTransform3D();
    }
    /*@:from
    public static function fromPlane(value:Plane):VariantAbstract {
        return Variant.fromPlane(value);
    }
    @:to
    public static function toPlane(value:VariantAbstract):Plane {
        return value.asPlane();
    }*/
    @:from
    public static function fromQuaternion(value:Quaternion):Variant {
        return VariantNative.fromQuatrernion(value);
    }
    @:to
    public inline function toQuaternion():Quaternion {
        return this.asQuaternion();
    }
    @:from
    public static function fromByteArray(value:ByteArray):Variant {
        return VariantNative.fromByteArray(value);
    }
    @:to
    public inline function toByteArray():ByteArray {
        return this.asByteArray();
    }
    /*@:from
    public static function fromIntArray(value:TypedArray<Int>):VariantAbstract {
        return Variant.fromIntArray(value);
    }
    @:to
    public static function toIntArray(value:VariantAbstract):TypedArray<Int> {
        return value.asIntArray();
    }
    */

    @:from
    public static function fromArray(value:ArrayList):Variant {
        return VariantNative.fromArrayList(value);
    }
    @:to
    public inline function toArray():ArrayList {
        return this.asArrayList();
    }

    @:from
    public static function fromDictionary(value:Dictionary):Variant {
        return VariantNative.fromDictionary(value);
    }
    @:to
    public inline function toDictionary():Dictionary {
        return this.asDictionary();
    }

    @:from
    public static function fromIntArray64(value:TypedArray<Int>):Variant {
        return VariantNative.fromIntArray64(value);
    }
    @:to
    public inline function toIntArray64():TypedArray<Int> {
        return this.asIntArray64();
    }
    /*@:from
    public static function fromFloatArray(value:TypedArray<Float>):VariantAbstract {
        return Variant.fromFloatArray(value);
    }
    @:to
    public static function toFloatArray(value:VariantAbstract):TypedArray<Float> {
        return value.asFloatArray();
    }*/
    @:from
    public static function fromFloatArray64(value:TypedArray<Float>):Variant {
        return VariantNative.fromFloatArray64(value);
    }
    @:to
    public inline function toFloatArray64():TypedArray<Float> {
        return this.asFloatArray64();
    }
    @:from
    public static function fromStringArray(value:TypedArray<String>):Variant {
        return VariantNative.fromStringArray(value);
    }
    @:to
    public inline function toStringArray():TypedArray<String> {
        return this.asStringArray();
    }
    @:from
    public static function fromVector2Array(value:TypedArray<Vector2>):Variant {
        return VariantNative.fromVector2Array(value);
    }
    @:to
    public inline function toVector2Array():TypedArray<Vector2> {
        return this.asVector2Array();
    }
    @:from
    public static function fromVector3Array(value:TypedArray<Vector3>):Variant {
        return VariantNative.fromVector3Array(value);
    }
    @:to
    public inline function toVector3Array():TypedArray<Vector3> {
        return this.asVector3Array();
    }

    @:from
    public static function fromVector4Array(value:TypedArray<Vector4>):Variant {
        return VariantNative.fromVector4Array(value);
    }
    @:to
    public inline function toVector4Array():TypedArray<Vector4> {
        return this.asVector4Array();
    }

    @:from
    public static function fromColorArray(value:TypedArray<Color>):Variant {
        return VariantNative.fromColorArray(value);
    }
    @:to
    public inline function toColorArray():TypedArray<Color> {
        return this.asColorArray();
    }

    @:from
    public static function fromNativeObject(value:NativeObject):Variant {
        return VariantNative.fromObject(value);
    }
    @:to
    public inline function asNativeObject(): NativeObject {
        return this.asObject();
    }

    @:from
    public static function fromNativeReference(value: NativeReference): Variant {
        return VariantNative.fromReference(value);
    }
    @:to
    public inline function toNativeReference(): NativeReference {
        return this.asReference();
    }

	@:from
	public static function fromFunction(value: Function): Variant {
		return VariantNative.fromFunction(value);
	}
	@:to
	public inline function toFunction(): Function {
		return this.asFunction();
	}

    @:from
    public static function fromObject(value: Object): Variant {
        return VariantNative.fromObject(value.native);
    }

    @:from
    public static function fromReference(value: Reference): Variant {
        return VariantNative.fromReference(value.native);
    }

	@:from
	public static function fromCallable(value: Callable): Variant {
		return VariantNative.fromCallable(value);
	}
	@:to
	public inline function toCallable(): Callable {
		return this.asCallable();
	}

    @:from
    public static function fromBaseClass(value: BaseClass): Variant {
        return VariantNative.fromBaseClass(value);
    }
    @:to
    public inline function toBaseClass(): BaseClass {
        return this.asBaseClass();
    }
}
