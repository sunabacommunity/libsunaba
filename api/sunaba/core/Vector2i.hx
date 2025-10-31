package sunaba.core;

@:native("Vector2i")
extern class Vector2iNative {
    public var x : Int;
    public var y : Int;
    public function new(x : Int, y : Int);
    @:native("new")
    public static function zero() : Vector2i;
    public function abs() : Vector2i;
    public function aspect() : Float;
    public function clamp(min : Vector2i, max : Vector2i) : Vector2i;
    public function length() : Float;
    public function lengthSquared() : Int;
    public function max(vector2i : Vector2i) : Vector2i;
    public function maxAxisIndex() : Int;
    public function min(vector2i : Vector2i) : Vector2i;
    public function minAxisIndex() : Int;
    public function sign() : Vector2i;
    @:native("tostring")
    public function toString(): String;
}
abstract Vector2i(Vector2iNative) from Vector2iNative to Vector2iNative {
	public static final ZERO: Vector2i = Vector2iNative.zero();

	public static final ONE : Vector2i = new Vector2i( 1, 1);

	public static final LEFT: Vector2i = new Vector2i( -1, 0);

	public static final RIGHT: Vector2i = new Vector2i( 1, 0);

	public static final UP: Vector2i = new Vector2i( 0, -1);

	public static final DOWN: Vector2i = new Vector2i( 0, 1);

	public static final MIN: Vector2i = new Vector2i( Int.MIN_VALUE, Int.MIN_VALUE);

	public static final MAX: Vector2i = new Vector2i( Int.MAX_VALUE, Int.MAX_VALUE);

	public inline function new(x : Int = 0, y : Int = 0) {
		this = new Vector2iNative(x, y);
	}

	public static inline function zero() : Vector2i {
		return Vector2iNative.zero();
	}

	@:op([])
	public inline function get(index : Int) : Int {
		switch(index) {
			case 0: return this.x;
			case 1: return this.y;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index : Int, value : Int) : Int {
		switch(index) {
			case 0: this.x = value;
			case 1: this.y = value;
			default: throw "Index out of bounds: " + index;
		}
		return value;
	}

	@:op(A + B)
	public inline function add(other : Vector2i)  : Vector2i {
		return new Vector2i( this.x + other.x, this.y + other.y);
	}

	@:op(A - B)
	public inline function subtract(other : Vector2i)  : Vector2i {
		return new Vector2i( this.x - other.x, this.y - other.y);
	}

	@:op(A * B)
	public inline function multiply(other : Vector2i)  : Vector2i {
		return new Vector2i( this.x * other.x, this.y * other.y);
	}

	@:op(A / B)
	public inline function divide(other : Vector2i)  : Vector2i {
		return new Vector2i(cast this.x / other.x, cast this.y / other.y);
	}

	@:op(A == B)
	public inline function equals(other : Vector2i)  : Bool {
		return this.x == other.x && this.y == other.y;
	}

	@:op(A != B)
	public inline function notEquals(other : Vector2i)  : Bool {
		var og: Vector2i = this;
		return !og.equals(other);
	}

	@:op(A < B)
	public inline function lessThan(other : Vector2i)  : Bool {
		return this.x < other.x && this.y < other.y;
	}

	@:op(A <= B)
	public inline function lessThanOrEqual(other : Vector2i)  : Bool {
		return this.x <= other.x && this.y <= other.y;
	}

	@:op(A > B)
	public inline function greaterThan(other : Vector2i)  : Bool {
		return this.x > other.x && this.y > other.y;
	}

	@:op(A >= B)
	public inline function greaterThanOrEqual(other : Vector2i)  : Bool {
		return this.x >= other.x && this.y >= other.y;
	}

	@:op(A += B)
	public inline function addAssign(other : Vector2i)  : Vector2i {
		this.x += other.x;
		this.y += other.y;
		return this;
	}

	@:op(A -= B)
	public inline function subtractAssign(other : Vector2i)  : Vector2i {
		this.x -= other.x;
		this.y -= other.y;
		return this;
	}

	@:op(A *= B)
	public inline function multiplyAssign(other : Vector2i)  : Vector2i {
		this.x *= other.x;
		this.y *= other.y;
		return this;
	}

	@:op(A /= B)
	public inline function divideAssign(other : Vector2i)  : Vector2i {
		this.x /= other.x;
		this.y /= other.y;
		return this;
	}

	@:op(A * B)
	public inline function multiplyScalar(scalar : Int) : Vector2i {
		return new Vector2i(cast this.x * scalar, cast this.y * scalar);
	}


	@:op(A / B)
	public inline function divideScalar(scalar : Int) : Vector2i {
		return new Vector2i( cast this.x / scalar, cast this.y / scalar);
	}

	@:op(A * B)
	public inline function multiplyInteger(scalar : Int) : Vector2i {
		return new Vector2i(cast this.x * scalar, cast this.y * scalar);
	}

	@:op(A / B)
	public inline function divideInteger(scalar : Int) : Vector2i {
		return new Vector2i(cast this.x / scalar, cast this.y / scalar);
	}
}
