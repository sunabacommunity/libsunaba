package sunaba.core;

@:native("Vector3i")
extern class Vector3iNative {
    public var x : Int;
    public var y : Int;
    public var z : Int;
    public function new(x : Int, y : Int, z : Int);
    @:native("new")
    public static function zero() : Vector3i;
    public function abs() : Vector3i;
    public function clamp(min : Vector3i, max : Vector3i) : Vector3i;
    public function length() : Float;
    public function lengthSquared() : Int;
    public function max(vector3i : Vector3i) : Vector3i;
    public function maxAxisIndex() : Int;
    public function min(vector3i : Vector3i) : Vector3i;
    public function minAxisIndex() : Int;
    public function sign() : Vector3i;
    @:native("tostring")
    public function toString() : String;
}

@:forward(
	x,
	y,
	z,
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
abstract Vector3i(Vector3iNative) from Vector3iNative to Vector3iNative {
	public static final ZERO: Vector3i = Vector3iNative.zero();

	public inline function new(x : Int = 0, y : Int = 0, z : Int = 0) {
		this = new Vector3iNative(x, y, z);
	}

	public static inline function zero() : Vector3i {
		return Vector3iNative.zero();
	}

	@:op([])
	public inline function get(index : Int) : Int {
		switch(index) {
			case 0: return this.x;
			case 1: return this.y;
			case 2: return this.z;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index : Int, value : Int) : Int {
		switch(index) {
			case 0: this.x = value;
			case 1: this.y = value;
			case 2: this.z = value;
			default: throw "Index out of bounds: " + index;
		}
		return value;
	}

	@:op(A + B)
	public inline function add(other : Vector3i)  : Vector3i {
		return new Vector3i( this.x + other.x, this.y + other.y, this.z + other.z);
	}

	@:op(A - B)
	public inline function subtract(other : Vector3i)  : Vector3i {
		return new Vector3i( this.x - other.x, this.y - other.y, this.z - other.z);
	}

	@:op(A * B)
	public inline function multiply(other : Vector3i)  : Vector3i {
		return new Vector3i( this.x * other.x, this.y * other.y, this.z * other.z);
	}

	@:op(A / B)
	public inline function divide(other : Vector3i)  : Vector3i {
		return new Vector3i(cast this.x / other.x, cast this.y / other.y, cast this.z / other.z);
	}

	@:op(A == B)
	public inline function equals(other : Vector3i)  : Bool {
		return this.x == other.x && this.y == other.y && this.z == other.z;
	}

	@:op(A != B)
	public inline function notEquals(other : Vector3i)  : Bool {
		var og: Vector3i = this;
		return !og.equals(other);
	}

	@:op(A < B)
	public inline function lessThan(other : Vector3i)  : Bool {
		return this.x < other.x && this.y < other.y && this.z < other.z;
	}

	@:op(A <= B)
	public inline function lessThanOrEqual(other : Vector3i)  : Bool {
		return this.x <= other.x && this.y <= other.y && this.z <= other.z;
	}

	@:op(A > B)
	public inline function greaterThan(other : Vector3i)  : Bool {
		return this.x > other.x && this.y > other.y && this.z > other.z;
	}

	@:op(A >= B)
	public inline function greaterThanOrEqual(other : Vector3i)  : Bool {
		return this.x >= other.x && this.y >= other.y && this.z >= other.z;
	}

	@:op(A += B)
	public inline function addAssign(other : Vector3i)  : Vector3i {
		this.x += other.x;
		this.y += other.y;
		this.z += other.z;
		return this;
	}

	@:op(A -= B)
	public inline function subtractAssign(other : Vector3i)  : Vector3i {
		this.x -= other.x;
		this.y -= other.y;
		this.z -= other.z;
		return this;
	}

	@:op(A *= B)
	public inline function multiplyAssign(other : Vector3i)  : Vector3i {
		this.x *= other.x;
		this.y *= other.y;
		this.z *= other.z;
		return this;
	}

	@:op(A /= B)
	public inline function divideAssign(other : Vector3i)  : Vector3i {
		this.x /= other.x;
		this.y /= other.y;
		this.z /= other.z;
		return this;
	}

	@:op(A * B)
	public inline function multiplyScalar(scalar : Float)  : Vector3i {
		return new Vector3i(cast this.x * scalar, cast this.y * scalar, cast this.z * scalar);
	}

	@:op(A / B)
	public inline function divideScalar(scalar : Float)  : Vector3i {
		return new Vector3i(cast this.x / scalar, cast this.y / scalar, cast this.z / scalar);
	}

	@:op(A * B)
	public inline function multiplyIntScalar(scalar : Int)  : Vector3i {
		return new Vector3i( this.x * scalar, this.y * scalar, this.z * scalar);
	}

	@:op(A / B)
	public inline function divideIntScalar(scalar : Int)  : Vector3i {
		return new Vector3i(cast this.x / scalar, cast this.y / scalar, cast this.z / scalar);
	}

	@:op(A++)
	public inline function increment() : Vector3i {
		this.x++;
		this.y++;
		this.z++;
		return this;
	}

	@:op(A--)
	public inline function decrement() : Vector3i {
		this.x--;
		this.y--;
		this.z--;
		return this;
	}

	@:op(++A)
	public inline function preIncrement() : Vector3i {
		this.x++;
		this.y++;
		this.z++;
		return this;
	}

	@:op(--A)
	public inline function preDecrement() : Vector3i {
		this.x--;
		this.y--;
		this.z--;
		return this;
	}
}
