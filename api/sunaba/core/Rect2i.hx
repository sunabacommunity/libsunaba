package sunaba.core;
import sunaba.core.Rect2.Rect2Native;
import sunaba.core.Rect2.Rect2Native.fromRect2is;
import sunaba.core.Rect2.Rect2Native.fromFloats;
import sunaba.core.Rect2.Rect2Native.fromVector2s;
import sunaba.core.native.ScriptType;
import sunaba.core.native.NativeReference;

@:native("Rect2i")
extern class Rect2iNative {
    public var end : Vector2i;
    public var position : Vector2i;
    public var size : Vector2i;
    public function new();
    @:native("new")
    public static function fromVector2is(position : Vector2i, size : Vector2i) : Rect2i;
    @:native("new")
    public static function fromInts(x : Int, y : Int, width : Int, height : Int) : Rect2i;
    @:native("new")
    public static function fromRect2s(rect : Rect2) : Rect2i;
    public function abs() : Rect2i;
    public function encloses(rect : Rect2i) : Bool;
    public function expand(vector : Vector2i) : Rect2i;
    public function getArea() : Int;
    public function getCenter() : Vector2i;
    public function grow(amount : Int) : Rect2i;
    public function growIndividual(left : Int, top : Int, right : Int, bottom : Int) : Rect2i;
    public function growSide(side : Int, amount : Int) : Rect2i;
    public function hasArea() : Bool;
    public function hasPoint(point : Vector2i) : Bool;
    public function intersetion(rect : Rect2i) : Rect2i;
    public function intersects(rect : Rect2i, includeBorders : Bool = false) : Bool;
    @:native("tostring")
    public function toString() : String;
}

@:forward(
	end,
	position,
	size,
	fromVector2is,
	fromInts,
	fromRect2s,
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
	toString
)
abstract Rect2i(Rect2iNative) from Rect2iNative to Rect2iNative {
	public inline function new(x : Int = 0, y : Int = 0, width : Int = 0, height : Int = 0) {
		this = new Rect2iNative();
		this.position = new Vector2i(x, y);
		this.size = new Vector2i(width, height);
	}

	public static inline function fromFloats(x : Int, y : Int, width : Int, height : Int) : Rect2i {
		return Rect2iNative.fromInts(x, y, width, height);
	}

	public static inline function fromVector2is(position : Vector2i, size : Vector2i) : Rect2i {
		return Rect2iNative.fromVector2is(position, size);
	}

	@:from
	public static inline function fromRect2s(rect : Rect2i) : Rect2i {
		return Rect2iNative.fromRect2s(rect);
	}

	@:op([])
	public inline function get(index : Int) : Int {
		switch(index) {
			case 0: return this.position.x;
			case 1: return this.position.y;
			case 2: return this.size.x;
			case 3: return this.size.y;
			default: throw "Index out of bounds: " + index;
		}
	}

	@:op([])
	public inline function set(index : Int, value : Int) : Int {
		switch(index) {
			case 0: this.position.x = value;
			case 1: this.position.y = value;
			case 2: this.size.x = value;
			case 3: this.size.y = value;
			default: throw "Index out of bounds: " + index;
		}
		return value;
	}

	@:op(A == B)
	public inline function equals(other : Rect2i)  : Bool {
		var ref = new NativeReference("res://Engine/MathUtils.gd", new ArrayList(), ScriptType.gdscript);
		var args = new ArrayList();
		var og: Rect2i = this;
		args.append(og);
		args.append(other);
		return ref.call("rect2i_equals", args);
	}

	@:op(A != B)
	public inline function notEquals(other : Rect2i)  : Bool {
		var og: Rect2i = this;
		return og.equals(other) != true;
	}
}
