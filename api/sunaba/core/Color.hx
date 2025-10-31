package sunaba.core;

@:native("Color")
extern class ColorNative {
    public var r : Float;
    public var g : Float;
    public var b : Float;
    public var a : Float;
    public function new();
    @:native("new")
    public static function rgba(r : Float, g : Float, b : Float, a : Float): Color;
    @:native("new")
    public static function rgb(r : Float, g : Float, b : Float): Color;
    @:native("new")
    public static function fromColorAndAlpha(color : Color, a : Float): Color;
    public static function code(code : String, a : Float = 1.0): Color;
    public function blend(ove : Color) : Color;
    public function clamp(min : Color = null, max : Color = null) : Color;
    public function darkened(amount : Float) : Color;
    @:native("fromHSV")
    public static function hsv(h : Float, s : Float, v : Float, alpha : Float = 1.0) : Color;
    @:native("fromRGBE9995")
    public static function rgbe9995(r : Float, g : Float, b : Float, e : Float, alpha : Float = 1.0) : Color;
    @:native("fromString")
    public static function string(str: String, defalt : Color) : Color;
    public function getLuminance() : Float;
    public static function hex(hex : Int) : Color;
    public static function hex64(hex : Int) : Color;
    public static function html(html : String) : Color;
    public static function htmlIsValid(html : String) : Bool;
    public function inverted() : Color;
    public function isEqualApprox(to : Color) : Bool;
    public function lerp(to : Color, weight : Float) : Color;
    public function lightened(amount : Float) : Color;
    public function linearToSrgb() : Color;
    public function srgbToLinear() : Color;
    public function toAbgr32() : Int;
    public function toAbgr64() : Int;
    public function toArgb32() : Int;
    public function toArgb64() : Int;
    public function toHtml() : String;
    public function toRgba32() : Int;
    public function toRgba64() : Int;
}

@:forward(
	r,
	g,
	b,
	a,
	rgba,
	rgb,
	fromColorAndAlpha,
	code,
	blend,
	clamp,
	darkened,
	hsv,
	rgbe9995,
	string,
	getLuminance,
	hex,
	hex64,
	html,
	htmlIsValid,
	inverted,
	isEqualApprox,
	lerp,
	lightened,
	linearToSrgb,
	srgbToLinear,
	toAbgr32,
	toAbgr64,
	toArgb32,
	toArgb64,
	toHtml,
	toRgba32,
	toRgba64
)
abstract Color(ColorNative) from ColorNative to ColorNative {
	public inline function new(r : Float = 1.0, g : Float = 1.0, b : Float = 1.0, a : Float = 1.0) {
		this = ColorNative.rgba(r, g, b, a);
	}

	public inline static function rgb(r : Float, g : Float, b : Float): Color {
		return ColorNative.rgb(r, g, b);
	}

	public inline static function rgba(r : Float, g : Float, b : Float, a : Float): Color {
		return ColorNative.rgba(r, g, b, a);
	}

	public inline static function fromColorAndAlpha(color : Color, a : Float): Color {
		return ColorNative.fromColorAndAlpha(color, a);
	}

	public inline static function code(code : String, a : Float = 1.0): Color {
		return ColorNative.code(code, a);
	}

	public inline static function string(str: String, defalt : Color): Color {
		return ColorNative.string(str, defalt);
	}

	public inline static function hsv(h : Float, s : Float, v : Float, alpha : Float = 1.0) : Color {
		return ColorNative.hsv(h, s, v, alpha);
	}

	public inline static function rgbe9995(r : Float, g : Float, b : Float, e : Float, alpha : Float = 1.0) : Color {
		return ColorNative.rgbe9995(r, g, b, e, alpha);
	}

	public inline static function hex(hex : Int) : Color {
		return ColorNative.hex(hex);
	}

	public inline static function hex64(hex : Int) : Color {
		return ColorNative.hex64(hex);
	}

	public inline static function html(html : String) : Color {
		return ColorNative.html(html);
	}

	public inline static function htmlIsValid(html : String) : Bool {
		return ColorNative.htmlIsValid(html);
	}

	@:op([]) public inline function get(index : Int) : Float {
		switch (index) {
			case 0: return this.r;
			case 1: return this.g;
			case 2: return this.b;
			case 3: return this.a;
			default: throw "Index out of bounds";
		}
	}

	@:op([]) public inline function set(index : Int, value : Float) : Float {
		switch (index) {
			case 0: this.r = value;
			case 1: this.g = value;
			case 2: this.b = value;
			case 3: this.a = value;
			default: throw "Index out of bounds";
		}
		return value;
	}

	@:op(A + B) public inline function add(other : Color) : Color {
		return ColorNative.rgba(this.r + other.r, this.g + other.g, this.b + other.b, this.a + other.a);
	}

	@:op(A - B) public inline function subtract(other : Color) : Color {
		return ColorNative.rgba(this.r - other.r, this.g - other.g, this.b - other.b, this.a - other.a);
	}

	@:op(A * B) public inline function multiply(other : Color) : Color {
		return ColorNative.rgba(this.r * other.r, this.g * other.g, this.b * other.b, this.a * other.a);
	}

	@:op(A / B) public inline function divide(other : Color) : Color {
		return ColorNative.rgba(this.r / other.r, this.g / other.g, this.b / other.b, this.a / other.a);
	}

	@:op(A == B) public inline function equals(other : Color) : Bool {
		return this.r == other.r && this.g == other.g && this.b == other.b && this.a == other.a;
	}

	@:op(A != B) public inline function notEquals(other : Color) : Bool {
		return !this.equals(other);
	}

	@:op(A < B) public inline function lessThan(other : Color) : Bool {
		return this.r < other.r && this.g < other.g && this.b < other.b && this.a < other.a;
	}

	@:op(A <= B) public inline function lessThanOrEqual(other : Color) : Bool {
		return this.r <= other.r && this.g <= other.g && this.b <= other.b && this.a <= other.a;
	}

	@:op(A > B) public inline function greaterThan(other : Color) : Bool {
		return this.r > other.r && this.g > other.g && this.b > other.b && this.a > other.a;
	}

	@:op(A >= B) public inline function greaterThanOrEqual(other : Color) : Bool {
		return this.r >= other.r && this.g >= other.g && this.b >= other.b && this.a >= other.a;
	}

	@:op(A += B) public inline function addAssign(other : Color) : Color {
		this.r += other.r;
		this.g += other.g;
		this.b += other.b;
		this.a += other.a;
		return this;
	}

	@:op(A -= B) public inline function subtractAssign(other : Color) : Color {
		this.r -= other.r;
		this.g -= other.g;
		this.b -= other.b;
		this.a -= other.a;
		return this;
	}

	@:op(A *= B) public inline function multiplyAssign(other : Color) : Color {
		this.r *= other.r;
		this.g *= other.g;
		this.b *= other.b;
		this.a *= other.a;
		return this;
	}

	@:op(A /= B) public inline function divideAssign(other : Color) : Color {
		this.r /= other.r;
		this.g /= other.g;
		this.b /= other.b;
		this.a /= other.a;
		return this;
	}
}
