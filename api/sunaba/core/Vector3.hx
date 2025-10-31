package sunaba.core;

@:native("Vector3")
extern class Vector3Native {
    public var x : Float;
    public var y : Float;
    public var z : Float;
    public function new(x : Float, y : Float, z : Float);
    @:native("new")
    public static function zero() : Vector3;
    public function abs() : Vector3;
    public function angleTo(vector3 : Vector3) : Float;
    public function bezierInterpolate(control1 : Vector3, control2 : Vector3, end : Vector3, t : Float) : Vector3;
    public function bounce(normal : Vector3) : Vector3;
    public function ciel() : Vector3;
    public function clamp(min : Vector3, max : Vector3) : Vector3;
    public function cross(with : Vector3) : Vector3;
    public function cubicInterpolate(b : Vector3, preA : Vector3, postB : Vector3, weight : Float) : Vector3;
    public function cubicInterpolateInTime(b : Vector3, preA : Vector3, postB : Vector3, weight : Float, bT : Float, preAT : Float, postBT : Float) : Vector3;
    public function directionTo(to : Vector3) : Vector3;
    public function distanceTo(other : Vector3) : Float;
    public function distanceSquaredTo(other : Vector3) : Float;
    public function dot(other : Vector3) : Float;
    public function floor() : Vector3;
    public function inverse() : Vector3;
    public function isEqualApprox(v : Vector3) : Bool;
    public function isNormalized() : Vector3;
    public function isZeroApprox() : Bool;
    public function length() : Float;
    public function lengthSquared() : Float;
    public function limitLength(maxLength : Float) : Void;
    public function lerp(to : Vector3, weight : Float) : Vector3;
    public function max(other : Vector3) : Vector3;
    public function maxAxisIndex() : Int;
    public function min(other : Vector3) : Vector3;
    public function minAxisIndex() : Int;
    public function moveToward(to : Vector3, deltaTime : Float) : Vector3;
    public function normalize() : Void;
    public function normalized() : Vector3;
    public function octahedronDecode(oct : Vector2) : Vector3;
    public function octahedronEncode() : Vector2;
    public function posmod(mod : Float) : Vector3;
    public function posmodv(other : Vector3) : Vector3;
    public function project(other : Vector3) : Vector3;
    public function reflect(normal : Vector3) : Vector3;
    public function rotated(axis : Vector3, by : Float) : Vector3;
    public function round() : Vector3;
    public function sign() : Vector3;
    public function signedAngleTo(to : Vector3, axis : Vector3) : Float;
    public function slerp(to : Vector3, weight : Float) : Vector3;
    public function slide(normal : Vector3) : Vector3;
    public function snapped(val : Vector3) : Vector3;
    @:native("tostring")
    public function toString() : String;
}

@:forward(
	x,
	y,
	z,
	zero,
	abs,
	angleTo,
	bezierInterpolate,
	bounce,
	ciel,
	clamp,
	cross,
	cubicInterpolate,
	cubicInterpolateInTime,
	directionTo,
	distanceTo,
	distanceSquaredTo,
	dot,
	floor,
	inverse,
	isEqualApprox,
	isNormalized,
	isZeroApprox,
	length,
	lengthSquared,
	limitLength,
	lerp,
	max,
	maxAxisIndex,
	min,
	minAxisIndex,
	moveToward,
	normalize,
	normalized,
	octahedronDecode,
	octahedronEncode,
	posmod,
	posmodv,
	project,
	reflect,
	rotated,
	round,
	sign,
	signedAngleTo,
	slerp,
	slide,
	snapped,
	toString
)
abstract Vector3(Vector3Native) from Vector3Native to Vector3Native {
	public static final ZERO: Vector3 = Vector3Native.zero();

	public inline function new(x : Float = 0, y : Float = 0, z : Float = 0) {
		this = new Vector3Native(x, y, z);
	}

	public static inline function zero() : Vector3 {
		return Vector3Native.zero();
	}

	@:op([])
	public inline function get(index : Int) : Float {
		switch(index) {
			case 0: return this.x;
			case 1: return this.y;
			case 2: return this.z;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index : Int, value : Float) : Float {
		switch(index) {
			case 0: this.x = value;
			case 1: this.y = value;
			case 2: this.z = value;
			default: throw "Index out of bounds: " + index;
		}
		return value;
	}

	@:op(A + B)
	public inline function add(other : Vector3)  : Vector3 {
		return new Vector3( this.x + other.x, this.y + other.y, this.z + other.z);
	}

	@:op(A - B)
	public inline function subtract(other : Vector3)  : Vector3 {
		return new Vector3( this.x - other.x, this.y - other.y, this.z - other.z);
	}

	@:op(A * B)
	public inline function multiply(other : Vector3)  : Vector3 {
		return new Vector3( this.x * other.x, this.y * other.y, this.z * other.z);
	}

	@:op(A / B)
	public inline function divide(other : Vector3)  : Vector3 {
		return new Vector3( this.x / other.x, this.y / other.y, this.z / other.z);
	}

	@:op(A == B)
	public inline function equals(other : Vector3)  : Bool {
		return this.x == other.x && this.y == other.y && this.z == other.z;
	}

	@:op(A != B)
	public inline function notEquals(other : Vector3)  : Bool {
		var og: Vector3 = this;
		return !og.equals(other);
	}

	@:op(A < B)
	public inline function lessThan(other : Vector3)  : Bool {
		return this.x < other.x && this.y < other.y && this.z < other.z;
	}

	@:op(A <= B)
	public inline function lessThanOrEqual(other : Vector3)  : Bool {
		return this.x <= other.x && this.y <= other.y && this.z <= other.z;
	}

	@:op(A > B)
	public inline function greaterThan(other : Vector3)  : Bool {
		return this.x > other.x && this.y > other.y && this.z > other.z;
	}

	@:op(A >= B)
	public inline function greaterThanOrEqual(other : Vector3)  : Bool {
		return this.x >= other.x && this.y >= other.y && this.z >= other.z;
	}

	@:op(A += B)
	public inline function addAssign(other : Vector3)  : Vector3 {
		this.x += other.x;
		this.y += other.y;
		this.z += other.z;
		return this;
	}

	@:op(A -= B)
	public inline function subtractAssign(other : Vector3)  : Vector3 {
		this.x -= other.x;
		this.y -= other.y;
		this.z -= other.z;
		return this;
	}

	@:op(A *= B)
	public inline function multiplyAssign(other : Vector3)  : Vector3 {
		this.x *= other.x;
		this.y *= other.y;
		this.z *= other.z;
		return this;
	}

	@:op(A /= B)
	public inline function divideAssign(other : Vector3)  : Vector3 {
		this.x /= other.x;
		this.y /= other.y;
		this.z /= other.z;
		return this;
	}

	@:op(A * B)
	public inline function multiplyScalar(scalar : Float)  : Vector3 {
		return new Vector3( this.x * scalar, this.y * scalar, this.z * scalar);
	}

	@:op(A / B)
	public inline function divideScalar(scalar : Float)  : Vector3 {
		return new Vector3( this.x / scalar, this.y / scalar, this.z / scalar);
	}

	@:op(A * B)
	public inline function multiplyIntScalar(scalar : Int)  : Vector3 {
		return new Vector3( this.x * scalar, this.y * scalar, this.z * scalar);
	}

	@:op(A / B)
	public inline function divideIntScalar(scalar : Int)  : Vector3 {
		return new Vector3( this.x / scalar, this.y / scalar, this.z / scalar);
	}
}
