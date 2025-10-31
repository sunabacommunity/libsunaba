package sunaba.core;

@:native("Vector4")
extern class Vector4Natve {
    public var x : Float;
    public var y : Float;
    public var z : Float;
    public var w : Float;
    public function new(x : Float, y : Float, z : Float, w : Float);
    @:native("new")
    public static function zero() : Vector4;
    public function abs() : Vector4;
    public function ceil() : Vector4;
    public function clamp(min : Vector4, max : Vector4) : Vector4;
    public function cubicInterpolate(v0 : Vector4, v1 : Vector4, v2 : Vector4, v3 : Vector4, t : Float) : Vector4;
    public function cubicInterpolateInTime(v0 : Vector4, v1 : Vector4, v2 : Vector4, v3 : Vector4, t : Float, v0T : Float, v1T : Float, v2T : Float, v3T : Float) : Vector4;
    public function directionTo(to : Vector4) : Vector4;
    public function distanceTo(other : Vector4) : Float;
    public function distanceSquaredTo(other : Vector4) : Float;
    public function dot(other : Vector4) : Float;
    public function floor() : Vector4;
    public function inverse() : Vector4;
    public function isEqualApprox(v : Vector4) : Bool;
    public function isNormalized() : Bool;
    public function isZeroApprox() : Bool;
    public function length() : Float;
    public function lengthSquared() : Float;
    public function lerp(to : Vector4, weight : Float) : Vector4;
    public function max(other : Vector4) : Vector4;
    public function maxAxisIndex() : Int;
    public function min(other : Vector4) : Vector4;
    public function minAxisIndex() : Int;
    public function normalized() : Vector4;
    public function posmod(mod : Float) : Vector4;
    public function posmodv(other : Vector4) : Vector4;
    public function round() : Vector4;
    public function sign() : Vector4;
    public function snapped(val : Vector4) : Vector4;
    @:native("tostring")
    public function toString() : String;
}

@:forward(
	x,
	y,
	z,
	w,
	zero,
	abs,
	ceil,
	clamp,
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
	lerp,
	max,
	maxAxisIndex,
	min,
	minAxisIndex,
	normalized,
	posmod,
	posmodv,
	round,
	sign,
	snapped,
	toString
)
abstract Vector4(Vector4Natve) from Vector4Natve to Vector4Natve {
	public static final ZERO: Vector4 = Vector4Natve.zero();

	public inline function new(x : Float = 0, y : Float = 0, z : Float = 0, w : Float = 0) {
		this = new Vector4Natve(x, y, z, w);
	}

	public static inline function zero() : Vector4 {
		return Vector4Natve.zero();
	}

	@:op([])
	public inline function get(index : Int) : Float {
		switch(index) {
			case 0: return this.x;
			case 1: return this.y;
			case 2: return this.z;
			case 3: return this.w;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index : Int, value : Float) : Float {
		switch(index) {
			case 0: this.x = value;
			case 1: this.y = value;
			case 2: this.z = value;
			case 3: this.w = value;
			default: throw "Index out of bounds: " + index;
		}
		return value;
	}

	@:op(A + B)
	public inline function add(other : Vector4) : Vector4 {
		return new Vector4(this.x + other.x, this.y + other.y, this.z + other.z, this.w + other.w);
	}

	@:op(A - B)
	public inline function subtract(other : Vector4) : Vector4 {
		return new Vector4(this.x - other.x, this.y - other.y, this.z - other.z, this.w - other.w);
	}

	@:op(A * B)
	public inline function multiply(other : Vector4) : Vector4 {
		return new Vector4(this.x * other.x, this.y * other.y, this.z * other.z, this.w * other.w);
	}

	@:op(A / B)
	public inline function divide(other : Vector4) : Vector4 {
		return new Vector4(this.x / other.x, this.y / other.y, this.z / other.z, this.w / other.w);
	}

	@:op(A == B)
	public inline function equals(other : Vector4) : Bool {
		return this.x == other.x && this.y == other.y && this.z == other.z && this.w == other.w;
	}

	@:op(A != B)
	public inline function notEquals(other : Vector4) : Bool {
		var og: Vector4 = this;
		return !og.equals(other);
	}

	@:op(A < B)
	public inline function lessThan(other : Vector4) : Bool {
		return this.x < other.x && this.y < other.y && this.z < other.z && this.w < other.w;
	}

	@:op(A <= B)
	public inline function lessThanOrEqual(other : Vector4) : Bool {
		return this.x <= other.x && this.y <= other.y && this.z <= other.z && this.w <= other.w;
	}

	@:op(A > B)
	public inline function greaterThan(other : Vector4) : Bool {
		return this.x > other.x && this.y > other.y && this.z > other.z && this.w > other.w;
	}

	@:op(A >= B)
	public inline function greaterThanOrEqual(other : Vector4) : Bool {
		return this.x >= other.x && this.y >= other.y && this.z >= other.z && this.w >= other.w;
	}

	@:op(A += B)
	public inline function addAssign(other : Vector4) : Vector4 {
		this.x += other.x;
		this.y += other.y;
		this.z += other.z;
		this.w += other.w;
		return this;
	}

	@:op(A -= B)
	public inline function subtractAssign(other : Vector4) : Vector4 {
		this.x -= other.x;
		this.y -= other.y;
		this.z -= other.z;
		this.w -= other.w;
		return this;
	}

	@:op(A *= B)
	public inline function multiplyAssign(other : Vector4) : Vector4 {
		this.x *= other.x;
		this.y *= other.y;
		this.z *= other.z;
		this.w *= other.w;
		return this;
	}

	@:op(A /= B)
	public inline function divideAssign(other : Vector4) : Vector4 {
		this.x /= other.x;
		this.y /= other.y;
		this.z /= other.z;
		this.w /= other.w;
		return this;
	}

	@:op(A * B)
	public inline function multiplyScalar(scalar : Float) : Vector4 {
		return new Vector4(this.x * scalar, this.y * scalar, this.z * scalar, this.w * scalar);
	}

	@:op(A / B)
	public inline function divideScalar(scalar : Float) : Vector4 {
		return new Vector4(this.x / scalar, this.y / scalar, this.z / scalar, this.w / scalar);
	}

	@:op(A * B)
	public inline function multiplyIntScalar(scalar : Int) : Vector4 {
		return new Vector4(cast this.x * scalar, cast this.y * scalar, cast this.z * scalar, cast this.w * scalar);
	}

	@:op(A / B)
	public inline function divideIntScalar(scalar : Int) : Vector4 {
		return new Vector4(cast this.x / scalar, cast this.y / scalar, cast this.z / scalar, cast this.w / scalar);
	}

	@:op(A++)
	public inline function increment() : Vector4 {
		this.x++;
		this.y++;
		this.z++;
		this.w++;
		return this;
	}

	@:op(A--)
	public inline function decrement() : Vector4 {
		this.x--;
		this.y--;
		this.z--;
		this.w--;
		return this;
	}

	@:op(++A)
	public inline function preIncrement() : Vector4 {
		this.x++;
		this.y++;
		this.z++;
		this.w++;
		return this;
	}

	@:op(--A)
	public inline function preDecrement() : Vector4 {
		this.x--;
		this.y--;
		this.z--;
		this.w--;
		return this;
	}
}
