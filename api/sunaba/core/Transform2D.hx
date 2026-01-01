package sunaba.core;
import sunaba.core.native.NativeReference;
import sunaba.core.native.ScriptType;

@:native("Transform2D")
extern class Transform2DNative {
    public var origin : Vector2;
    public var x : Vector2;
    public var y : Vector2;
    public function new(rotation : Float, position : Vector2);
    @:native("new")
    public static function zero() : Transform2D;
    @:native("new")
    public static function newWithScaleAndSkew(rotation: Float, scale: Vector2, skew: Float, position: Vector2) : Transform2D;
    @:native("new")
    public static function fromXYOrigin(x: Vector2, y: Vector2, origin: Vector2) : Transform2D;
    public function affineInverse() : Transform2D;
    public function basisXform(v: Vector2) : Vector2;
    public function basisXformInv(v: Vector2) : Vector2;
    public function determinant() : Float;
    public function getOrigin() : Vector2;
    public function getRotation() : Float;
    public function getScale() : Vector2;
    public function getSkew() : Float;
    public function interpolateWith(xform : Transform2D, weight : Float) : Transform2D;
    public function inverse() : Transform2D;
    public function isConformal() : Bool;
    public function isEqualApprox(xform : Transform2D) : Bool;
    public function isFinite() : Bool;
    public function lookingAt(?target : Vector2) : Transform2D;
    public function orthonormalized() : Transform2D;
    public function rotated(angle : Float) : Transform2D;
    public function rotatedLocal(angle: Float) : Transform2D;
    public function scaled(scale: Vector2): Transform2D;
    public function scaledLocal(scale: Vector2): Transform2D;
    public function translated(translation: Vector2): Transform2D;
    public function translatedLocal(translation: Vector2): Transform2D;
    @:native("tostring")
    public function toString() : String;
}

@:forward(
	origin,
	x,
	y,
	zero,
	newWithScaleAndSkew,
	fromXYOrigin,
	affineInverse,
	basisXform,
	basisXformInv,
	determinant,
	getOrigin,
	getRotation,
	getScale,
	getSkew,
	interpolateWith,
	inverse,
	isConformal,
	isEqualApprox,
	isFinite,
	lookingAt,
	orthonormalized,
	rotated,
	rotatedLocal,
	scaled,
	scaledLocal,
	translated,
	translatedLocal,
	toString
)
abstract Transform2D(Transform2DNative) from Transform2DNative to Transform2DNative {
	public inline function new(rotation : Float = 0, ?position : Vector2) {
		if (position == null) position = Vector2.ZERO;
		this = new Transform2DNative(rotation, position);
	}

	public static inline function zero() : Transform2D {
		return Transform2DNative.zero();
	}

	public static inline function newWithScaleAndSkew(rotation: Float, scale: Vector2, skew: Float, position: Vector2) : Transform2D {
		return Transform2DNative.newWithScaleAndSkew(rotation, scale, skew, position);
	}

	public static inline function fromXYOrigin(x: Vector2, y: Vector2, origin: Vector2) : Transform2D {
		return Transform2DNative.fromXYOrigin(x, y, origin);
	}

	@:op([])
	public inline function get(index : Int) : Vector2 {
		switch(index) {
			case 0: return this.x;
			case 1: return this.y;
			case 2: return this.origin;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index : Int, value : Vector2) : Vector2 {
		switch(index) {
			case 0: this.x = value;
			case 1: this.y = value;
			case 2: this.origin = value;
			default: throw "Index out of bounds: " + index;
		}
		return value;
	}

	@:op(A * B)
	public inline function multiply(other : Transform2D) : Transform2D {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Transform2D = this;
		args.append(og);
		args.append(other);
		return ref.call("t2d_multiply", args);
	}

	@:op(A == B)
	public inline function equals(other : Transform2D) : Bool {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Transform2D = this;
		args.append(og);
		args.append(other);
		return ref.call("t2d_equals", args);
	}

	@:op(A != B)
	public inline function notEquals(other : Transform2D) : Bool {
		var og: Transform2D = this;
		return og.equals(other) != true;
	}

	@:op(A * B)
	public inline function multiplyVector2(other : Vector2) : Vector2 {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Transform2D = this;
		args.append(og);
		args.append(other);
		return ref.call("t2d_multiply_vector2", args);
	}

	@:op(A * B)
	public inline function multiplyScalar(other : Float) : Transform2D {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Transform2D = this;
		args.append(og);
		args.append(other);
		return ref.call("t2d_multiply_float", args);
	}

	@:op(A / B)
	public inline function divideScalar(other : Float) : Transform2D {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Transform2D = this;
		args.append(og);
		args.append(other);
		return ref.call("t2d_divide_float", args);
	}

	@:op(A * B)
	public inline function multiplyIntScalar(other : Int) : Transform2D {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Transform2D = this;
		args.append(og);
		args.append(other);
		return ref.call("t2d_multiply_int", args);
	}

	@:op(A / B)
	public inline function divideIntScalar(other : Int) : Transform2D {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Transform2D = this;
		args.append(og);
		args.append(other);
		return ref.call("t2d_divide_int", args);
	}
}
