package sunaba.core;

@:native("Vector4i")
extern class Vector4iNative {
    public var x : Int;
    public var y : Int;
    public var z : Int;
    public var w : Int;
    public function new(x : Int, y : Int, z : Int, w : Int);
    @:native("new")
    public static function zero() : Vector4i;
    public function abs() : Vector4i;
    public function clamp(min : Vector4i, max : Vector4i) : Vector4i;
    public function length() : Float;
    public function lengthSquared() : Int;
    public function max(Vector4i : Vector4i) : Vector4i;
    public function maxAxisIndex() : Int;
    public function min(Vector4i : Vector4i) : Vector4i;
    public function minAxisIndex() : Int;
    public function sign() : Vector4i;
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
	clamp,
	length,
	lengthSquared,
	max,
	maxAxisIndex,
	min,
	minAxisIndex,
	sign,
	toString
)
abstract Vector4i(Vector4iNative) from Vector4iNative to Vector4iNative {
	public static final ZERO: Vector4i = Vector4iNative.zero();

	public inline function new(x : Int = 0, y : Int = 0, z : Int = 0, w : Int = 0) {
		this = new Vector4iNative(x, y, z, w);
	}

	public static inline function zero() : Vector4i {
		return Vector4iNative.zero();
	}

	@:op([])
	public inline function get(index : Int) : Int {
		switch(index) {
			case 0: return this.x;
			case 1: return this.y;
			case 2: return this.z;
			case 3: return this.w;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index : Int, value : Int) : Int {
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
	public inline function add(other : Vector4i) : Vector4i {
		return new Vector4i(this.x + other.x, this.y + other.y, this.z + other.z, this.w + other.w);
	}

	@:op(A - B)
	public inline function subtract(other : Vector4i) : Vector4i {
		return new Vector4i(this.x - other.x, this.y - other.y, this.z - other.z, this.w - other.w);
	}

	@:op(A * B)
	public inline function multiply(other : Vector4i) : Vector4i {
		return new Vector4i(this.x * other.x, this.y * other.y, this.z * other.z, this.w * other.w);
	}

	@:op(A / B)
	public inline function divide(other : Vector4i) : Vector4i {
		return new Vector4i(cast this.x / other.x, cast this.y / other.y, cast this.z / other.z, cast this.w / other.w);
	}

	@:op(A == B)
	public inline function equals(other : Vector4i) : Bool {
		return this.x == other.x && this.y == other.y && this.z == other.z && this.w == other.w;
	}

	@:op(A != B)
	public inline function notEquals(other : Vector4i) : Bool {
		var og: Vector4i = this;
		return !og.equals(other);
	}

	@:op(A < B)
	public inline function lessThan(other : Vector4i) : Bool {
		return this.x < other.x && this.y < other.y && this.z < other.z && this.w < other.w;
	}

	@:op(A <= B)
	public inline function lessThanOrEqual(other : Vector4i) : Bool {
		return this.x <= other.x && this.y <= other.y && this.z <= other.z && this.w <= other.w;
	}

	@:op(A > B)
	public inline function greaterThan(other : Vector4i) : Bool {
		return this.x > other.x && this.y > other.y && this.z > other.z && this.w > other.w;
	}

	@:op(A >= B)
	public inline function greaterThanOrEqual(other : Vector4i) : Bool {
		return this.x >= other.x && this.y >= other.y && this.z >= other.z && this.w >= other.w;
	}

	@:op(A += B)
	public inline function addAssign(other : Vector4i) : Vector4i {
		this.x += other.x;
		this.y += other.y;
		this.z += other.z;
		this.w += other.w;
		return this;
	}

	@:op(A -= B)
	public inline function subtractAssign(other : Vector4i) : Vector4i {
		this.x -= other.x;
		this.y -= other.y;
		this.z -= other.z;
		this.w -= other.w;
		return this;
	}

	@:op(A *= B)
	public inline function multiplyAssign(other : Vector4i) : Vector4i {
		this.x *= other.x;
		this.y *= other.y;
		this.z *= other.z;
		this.w *= other.w;
		return this;
	}

	@:op(A /= B)
	public inline function divideAssign(other : Vector4i) : Vector4i {
		this.x /= other.x;
		this.y /= other.y;
		this.z /= other.z;
		this.w /= other.w;
		return this;
	}

	@:op(A * B)
	public inline function multiplyScalar(scalar : Float) : Vector4i {
		return new Vector4i(cast this.x * scalar, cast this.y * scalar, cast this.z * scalar, cast this.w * scalar);
	}

	@:op(A / B)
	public inline function divideScalar(scalar : Float) : Vector4i {
		return new Vector4i(cast this.x / scalar, cast this.y / scalar, cast this.z / scalar, cast this.w / scalar);
	}

	@:op(A * B)
	public inline function multiplyIntScalar(scalar : Int) : Vector4i {
		return new Vector4i(cast this.x * scalar, cast this.y * scalar, cast this.z * scalar, cast this.w * scalar);
	}

	@:op(A / B)
	public inline function divideIntScalar(scalar : Int) : Vector4i {
		return new Vector4i(cast this.x / scalar, cast this.y / scalar, cast this.z / scalar, cast this.w / scalar);
	}

	@:op(A++)
	public inline function increment() : Vector4i {
		this.x++;
		this.y++;
		this.z++;
		this.w++;
		return this;
	}

	@:op(A--)
	public inline function decrement() : Vector4i {
		this.x--;
		this.y--;
		this.z--;
		this.w--;
		return this;
	}

	@:op(++A)
	public inline function preIncrement() : Vector4i {
		this.x++;
		this.y++;
		this.z++;
		this.w++;
		return this;
	}

	@:op(--A)
	public inline function preDecrement() : Vector4i {
		this.x--;
		this.y--;
		this.z--;
		this.w--;
		return this;
	}
}
