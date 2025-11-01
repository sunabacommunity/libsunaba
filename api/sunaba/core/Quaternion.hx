package sunaba.core;

@:native("Quaternion")
extern class QuaternionNative {
    public var x : Float;
    public var y : Float;
    public var z : Float;
    public var w : Float;
    public function new(x : Float, y : Float, z : Float, w : Float);
    @:native("new")
    public static function zero() : Quaternion;
    public function angleTo(quat : Quaternion) : Float;
    public function dot(q : Quaternion) : Float;
    public function exp() : Quaternion;
    public function inverse() : Quaternion;
    public function isEqualApprox(quat : Quaternion) : Bool;
    public function isNormalized() : Bool;
    public function length() : Float;
    public function lengthSquared() : Float;
    public function log() : Quaternion;
    public function normalized() : Quaternion;
    public function slerp(to : Quaternion, weight : Float) : Quaternion;
    public function sphericalCubicInterpolate(b : Quaternion, preA : Quaternion, postB : Quaternion, weight : Float) : Quaternion;
    public function sphericalCubicInterpolateInTime(b : Quaternion, preA : Quaternion, postB : Quaternion, weight : Float, bT : Float, preAT : Float, postBT : Float) : Quaternion;
    @:native("tostring")
    public function toString() : String;
}

@:forward(
	x,
	y,
	z,
	w,
	zero,
	angleTo,
	dot,
	exp,
	inverse,
	isEqualApprox,
	isNormalized,
	length,
	lengthSquared,
	log,
	normalized,
	slerp,
	sphericalCubicInterpolate,
	sphericalCubicInterpolateInTime,
	toString
)
abstract Quaternion(QuaternionNative) from QuaternionNative to QuaternionNative {
	public inline function new(x : Float = 0, y : Float = 0, z : Float = 0, w : Float = 1) {
		this = new QuaternionNative(x, y, z, w);
	}

	public static inline function zero() : Quaternion {
		return QuaternionNative.zero();
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
	public inline function add(other : Quaternion)  : Quaternion {
		return new Quaternion( this.x + other.x, this.y + other.y, this.z + other.z, this.w + other.w);
	}

	@:op(A - B)
	public inline function subtract(other : Quaternion)  : Quaternion {
		return new Quaternion( this.x - other.x, this.y - other.y, this.z - other.z, this.w - other.w);
	}

	@:op(A * B)
	public inline function multiply(other : Quaternion)  : Quaternion {
		return new Quaternion( this.x * other.x, this.y * other.y, this.z * other.z, this.w * other.w);
	}

	@:op(A / B)
	public inline function divide(other : Quaternion)  : Quaternion {
		return new Quaternion( this.x / other.x, this.y / other.y, this.z / other.z, this.w / other.w);
	}

	@:op(A == B)
	public inline function equals(other : Quaternion)  : Bool {
		return this.x == other.x && this.y == other.y && this.z == other.z && this.w == other.w;
	}

	@:op(A != B)
	public inline function notEquals(other : Quaternion)  : Bool {
		var og: Quaternion = this;
		return !og.equals(other);
	}

	@:op(A < B)
	public inline function lessThan(other : Quaternion)  : Bool {
		if(this.x != other.x) return this.x < other.x;
		if(this.y != other.y) return this.y < other.y;
		if(this.z != other.z) return this.z < other.z;
		return this.w < other.w;
	}

	@:op(A <= B)
	public inline function lessThanOrEqual(other : Quaternion)  : Bool {
		if(this.x != other.x) return this.x < other.x;
		if(this.y != other.y) return this.y < other.y;
		if(this.z != other.z) return this.z < other.z;
		return this.w <= other.w;
	}

	@:op(A > B)
	public inline function greaterThan(other : Quaternion)  : Bool {
		if(this.x != other.x) return this.x > other.x;
		if(this.y != other.y) return this.y > other.y;
		if(this.z != other.z) return this.z > other.z;
		return this.w > other.w;
	}

	@:op(A >= B)
	public inline function greaterThanOrEqual(other : Quaternion)  : Bool {
		if(this.x != other.x) return this.x > other.x;
		if(this.y != other.y) return this.y > other.y;
		if(this.z != other.z) return this.z > other.z;
		return this.w >= other.w;
	}

	@:op(A += B)
	public inline function addAssign(other : Quaternion)  : Quaternion {
		this.x += other.x;
		this.y += other.y;
		this.z += other.z;
		this.w += other.w;
		return this;
	}

	@:op(A -= B)
	public inline function subtractAssign(other : Quaternion)  : Quaternion {
		this.x -= other.x;
		this.y -= other.y;
		this.z -= other.z;
		this.w -= other.w;
		return this;
	}

	@:op(A *= B)
	public inline function multiplyAssign(other : Quaternion)  : Quaternion {
		this.x *= other.x;
		this.y *= other.y;
		this.z *= other.z;
		this.w *= other.w;
		return this;
	}

	@:op(A /= B)
	public inline function divideAssign(other : Quaternion)  : Quaternion {
		this.x /= other.x;
		this.y /= other.y;
		this.z /= other.z;
		this.w /= other.w;
		return this;
	}

	@:op(A++)
	public inline function increment() : Quaternion {
		this.x++;
		this.y++;
		this.z++;
		this.w++;
		return this;
	}

	@:op(A--)
	public inline function decrement() : Quaternion {
		this.x--;
		this.y--;
		this.z--;
		this.w--;
		return this;
	}

	@:op(++A)
	public inline function preIncrement() : Quaternion {
		this.x++;
		this.y++;
		this.z++;
		this.w++;
		return this;
	}

	@:op(--A)
	public inline function preDecrement() : Quaternion {
		this.x--;
		this.y--;
		this.z--;
		this.w--;
		return this;
	}

	@:op(A * B)
	public inline function multiplyScalar(scalar : Float)  : Quaternion {
		return new Quaternion( this.x * scalar, this.y * scalar, this.z * scalar, this.w * scalar);
	}

	@:op(A / B)
	public inline function divideScalar(scalar : Float)  : Quaternion {
		return new Quaternion( this.x / scalar, this.y / scalar, this.z / scalar, this.w / scalar);
	}

	@:op(A * B)
	public inline function multiplyIntScalar(scalar : Int)  : Quaternion {
		return new Quaternion( this.x * scalar, this.y * scalar, this.z * scalar, this.w * scalar);
	}

	@:op(A / B)
	public inline function divideIntScalar(scalar : Int)  : Quaternion {
		return new Quaternion( this.x / scalar, this.y / scalar, this.z / scalar, this.w / scalar);
	}

	@:op(A * B)
	public inline function multiplyVector3(vec : Vector3)  : Vector3 {
		var ix =  this.w * vec.x + this.y * vec.z - this.z * vec.y;
		var iy =  this.w * vec.y + this.z * vec.x - this.x * vec.z;
		var iz =  this.w * vec.z + this.x * vec.y - this.y * vec.x;
		var iw = -this.x * vec.x - this.y * vec.y - this.z * vec.z;
		return new Vector3(
			ix * this.w + iw * -this.x + iy * -this.z - iz * -this.y,
			iy * this.w + iw * -this.y + iz * -this.x - ix * -this.z,
			iz * this.w + iw * -this.z + ix * -this.y - iy * -this.x
		);
	}
}
