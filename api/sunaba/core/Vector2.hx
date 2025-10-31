package sunaba.core;

import haxe.ds.Vector;

@:native("Vector2")
extern class Vector2Native {
    public var x : Float;
    public var y : Float;
    public function new(x : Float = 0, y : Float = 0);
    @:native("new")
    public static function zero() : Vector2;
    public function normalize() : Void;
    public function normalized() : Vector2;
    public function isNormalized() : Bool;
    public function length() : Float;
    public function lengthSquared() : Float;
    public function limitLength(maxLength : Float) : Void;
    public function min(other : Vector2) : Vector2;
    public function max(other : Vector2) : Vector2;
    public function distanceTo(other : Vector2) : Float;
    public function distanceSquaredTo(other : Vector2) : Float;
    public function angleTo(other : Vector2) : Float;
    public function angleToPoint(other : Vector2) : Float;
    public function dot(other : Vector2) : Float;
    public function posmod(mod : Float) : Vector2;
    public function posmodv(other : Vector2) : Vector2;
    public function project(other : Vector2) : Vector2;
    public function planeProject(d : Float, vector : Vector2) : Vector2;
    public function lerp(to : Vector2, t : Float) : Vector2;
    public function slerp(to : Vector2, weight : Float) : Vector2;
    public function cubicInterpolate(b : Vector2, preA : Vector2, postB : Vector2, weight : Float) : Vector2;
    public function cubicInterpolateInTime(b : Vector2, preA : Vector2, postB : Vector2, weight : Float, bT : Float, preAT : Float, postBT : Float) : Vector2;
    public function moveToward(to : Vector2, deltaTime : Float) : Vector2;
    public function slide(normal : Vector2) : Vector2;
    public function bounce(normal : Vector2) : Vector2;
    public function reflect(normal : Vector2) : Vector2;
    public function isEqualApprox(v : Vector2) : Bool;
    public function isZeroApprox() : Bool;
    public function angle() : Float;
    public function abs() : Vector2;
    public function rotated(by: Float) : Vector2;
    public function orthogonal() : Vector2;
    public function sign() : Vector2;
    public function floor() : Vector2;
    public function ceil() : Vector2;
    public function round() : Vector2;
    public function snap(by : Vector2) : Vector2;
    public function clamp(min : Vector2, max : Vector2) : Vector2;
    public function aspect() : Float;
    @:native("tostring")
    public function toString() : String;
}

@:forward(
	x,
	y,
	zero,
	normalize,
	normalized,
	isNormalized,
	length,
	lengthSquared,
	limitLength,
	min,
	max,
	distanceTo,
	distanceSquaredTo,
	angleTo,
	angleToPoint,
	dot,
	posmod,
	posmodv,
	project,
	planeProject,
	lerp,
	slerp,
	cubicInterpolate,
	cubicInterpolateInTime,
	moveToward,
	slide,
	bounce,
	reflect,
	isEqualApprox,
	isZeroApprox,
	angle,
	abs,
	rotated,
	orthogonal,
	sign,
	floor,
	ceil,
	round,
	snap,
	clamp,
	aspect,
	toString
)
abstract Vector2(Vector2Native) from Vector2Native to Vector2Native {
	public static final ZERO: Vector2 = Vector2Native.zero();

	public static final ONE : Vector2 = new Vector2(1, 1);

	public static final INF: Vector2 = new Vector2(Math.POSITIVE_INFINITY, Math.POSITIVE_INFINITY);

	public static final LEFT: Vector2 = new Vector2(-1, 0);

	public static final RIGHT: Vector2 = new Vector2(1, 0);

	public static final UP: Vector2 = new Vector2(0, -1);

	public static final DOWN: Vector2 = new Vector2(0, 1);

	public inline function new(x : Float = 0, y : Float = 0) {
		this = new Vector2Native(x, y);
	}

	public static inline function zero() : Vector2 {
		return Vector2Native.zero();
	}

	@:op([])
	public inline function get(index : Int) : Float {
		switch(index) {
			case 0: return this.x;
			case 1: return this.y;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index : Int, value : Float) : Float {
		switch(index) {
			case 0: this.x = value;
			case 1: this.y = value;
			default: throw "Index out of bounds: " + index;
		}
		return value;
	}

	@:op(A + B)
	public inline function add(other : Vector2) : Vector2 {
		return new Vector2(this.x + other.x, this.y + other.y);
	}

	@:op(A - B)
	public inline function subtract(other : Vector2) : Vector2 {
		return new Vector2(this.x - other.x, this.y - other.y);
	}

	@:op(A * B)
	public inline function multiply(other : Vector2) : Vector2 {
		return new Vector2(this.x * other.x, this.y * other.y);
	}

	@:op(A / B)
	public inline function divide(other : Vector2) : Vector2 {
		return new Vector2(this.x / other.x, this.y / other.y);
	}

	@:op(A == B)
	public inline function equals(other : Vector2) : Bool {
		return this.x == other.x && this.y == other.y;
	}

	@:op(A != B)
	public inline function notEquals(other : Vector2) : Bool {
		var og: Vector2 = this;
		return !og.equals(other);
	}

	@:op(A < B)
	public inline function lessThan(other : Vector2) : Bool {
		return this.x < other.x && this.y < other.y;
	}

	@:op(A <= B)
	public inline function lessThanOrEqual(other : Vector2) : Bool {
		return this.x <= other.x && this.y <= other.y;
	}

	@:op(A > B)
	public inline function greaterThan(other : Vector2) : Bool {
		return this.x > other.x && this.y > other.y;
	}

	@:op(A >= B)
	public inline function greaterThanOrEqual(other : Vector2) : Bool {
		return this.x >= other.x && this.y >= other.y;
	}

	@:op(A += B)
	public inline function addAssign(other : Vector2) : Vector2 {
		this.x += other.x;
		this.y += other.y;
		return this;
	}

	@:op(A -= B)
	public inline function subtractAssign(other : Vector2) : Vector2 {
		this.x -= other.x;
		this.y -= other.y;
		return this;
	}

	@:op(A *= B)
	public inline function multiplyAssign(other : Vector2) : Vector2 {
		this.x *= other.x;
		this.y *= other.y;
		return this;
	}

	@:op(A /= B)
	public inline function divideAssign(other : Vector2) : Vector2 {
		this.x /= other.x;
		this.y /= other.y;
		return this;
	}

	@:op(A * B)
	public inline function multiplyScalar(scalar : Float) : Vector2 {
		return new Vector2(this.x * scalar, this.y * scalar);
	}


	@:op(A / B)
	public inline function divideScalar(scalar : Float) : Vector2 {
		return new Vector2(this.x / scalar, this.y / scalar);
	}

	@:op(A * B)
	public inline function multiplyIntScalar(scalar : Int) : Vector2 {
		return new Vector2(this.x * scalar, this.y * scalar);
	}

	@:op(A / B)
	public inline function divideIntScalar(scalar : Int) : Vector2 {
		return new Vector2(this.x / scalar, this.y / scalar);
	}

	@:op(A++)
	public inline function postIncrement() : Vector2 {
		var original = new Vector2(this.x, this.y);
		this.x++;
		this.y++;
		return original;
	}

	@:op(A--)
	public inline function postDecrement() : Vector2 {
		var original = new Vector2(this.x, this.y);
		this.x--;
		this.y--;
		return original;
	}

	@:op(++A)
	public inline function increment() : Vector2 {
		this.x++;
		this.y++;
		return this;
	}

	@:op(--A)
	public inline function decrement() : Vector2 {
		this.x--;
		this.y--;
		return this;
	}
}
