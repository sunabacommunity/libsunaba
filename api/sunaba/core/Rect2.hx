package sunaba.core;

@:native("Rect2")
extern class Rect2Native {
    public var end : Vector2;
    public var position : Vector2;
    public var size : Vector2;
    public function new();
    @:native("new")
    public static function fromVector2s(position : Vector2, size : Vector2) : Rect2;
    @:native("new")
    public static function fromFloats(x : Float, y : Float, width : Float, height : Float) : Rect2;
    @:native("new")
    public static function fromRect2is(rect : Rect2i) : Rect2;
    public function abs() : Rect2;
    public function encloses(rect : Rect2) : Bool;
    public function expand(vector : Vector2) : Rect2;
    public function getArea() : Float;
    public function getCenter() : Vector2;
    public function grow(amount : Float) : Rect2;
    public function growIndividual(left : Float, top : Float, right : Float, bottom : Float) : Rect2;
    public function growSide(side : Int, amount : Float) : Rect2;
    public function hasArea() : Bool;
    public function hasPoint(point : Vector2) : Bool;
    public function intersetion(rect : Rect2) : Rect2;
    public function intersects(rect : Rect2, includeBorders : Bool = false) : Bool;
    public function isEqualApprox(rect : Rect2) : Bool;
    public function merge(rect : Rect2) : Rect2;
    @:native("tostring")
    public function toString() : String;
}

@:forward(
	end,
	position,
	size,
	fromVector2s,
	fromFloats,
	fromRect2is,
	abs,
	encloses,
	expand,
	getArea,
	getCenter,
	grow,
	growIndividual,
	growSide,
	hasArea,
	hasPoint,
	intersetion,
	intersects,
	isEqualApprox,
	merge,
	toString
)
abstract Rect2(Rect2Native) from Rect2Native to Rect2Native {
	public inline function new(x : Float = 0, y : Float = 0, width : Float = 0, height : Float = 0) {
		this = new Rect2Native();
		this.position = new Vector2(x, y);
		this.size = new Vector2(width, height);
	}

	public static inline function fromFloats(x : Float, y : Float, width : Float, height : Float) : Rect2 {
		return Rect2Native.fromFloats(x, y, width, height);
	}

	public static inline function fromVector2s(position : Vector2, size : Vector2) : Rect2 {
		return Rect2Native.fromVector2s(position, size);
	}

	@:from
	public static inline function fromRect2is(rect : Rect2i) : Rect2 {
		return Rect2Native.fromRect2is(rect);
	}

	@:op([])
	public inline function get(index : Int) : Vector2 {
		switch(index) {
			case 0: return this.position;
			case 1: return this.size;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index : Int, value : Vector2) : Vector2 {
		switch(index) {
			case 0: this.position = value;
			case 1: this.size = value;
			default: throw "Index out of bounds: " + index;
		}
		return value;
	}

	@:op(A == B)
	public inline function equals(other : Rect2)  : Bool {
		return this.position.equals(other.position) && this.size.equals(other.size);
	}

	@:op(A != B)
	public inline function notEquals(other : Rect2)  : Bool {
		var og: Rect2 = this;
		return !og.equals(other);
	}

	@:op(A * B)
	public inline function multiplyTransform(other : Transform2D) : Rect2 {
		var topLeft: Vector2 = other.xform(this.position);
		var topRight: Vector2 = other.xform(new Vector2(this.position.x + this.size.x, this.position.y));
		var bottomLeft: Vector2 = other.xform(new Vector2(this.position.x, this.position.y + this.size.y));
		var bottomRight: Vector2 = other.xform(new Vector2(this.position.x + this.size.x, this.position.y + this.size.y));

		var minX: Float = Math.min(Math.min(topLeft.x, topRight.x), Math.min(bottomLeft.x, bottomRight.x));
		var minY: Float = Math.min(Math.min(topLeft.y, topRight.y), Math.min(bottomLeft.y, bottomRight.y));
		var maxX: Float = Math.max(Math.max(topLeft.x, topRight.x), Math.max(bottomLeft.x, bottomRight.x));
		var maxY: Float = Math.max(Math.max(topLeft.y, topRight.y), Math.max(bottomLeft.y, bottomRight.y));

		return Rect2.fromFloats(minX, minY, maxX - minX, maxY - minY);
	}
}
