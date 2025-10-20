package newhaven;

enum abstract FunctionEnum(Int) from Int to Int {
	var normalize = cast 0;
	var saturate = cast 1;
	var negate = cast 2;
	var reciprocal = cast 3;
	var abs = cast 4;
	var acos = cast 5;
	var acosh = cast 6;
	var asin = cast 7;
	var asinh = cast 8;
	var atan = cast 9;
	var atanh = cast 10;
	var ceil = cast 11;
	var cos = cast 12;
	var cosh = cast 13;
	var degrees = cast 14;
	var exp = cast 15;
	var exp2 = cast 16;
	var floor = cast 17;
	var fract = cast 18;
	var inverseSqrt = cast 19;
	var log = cast 20;
	var log2 = cast 21;
	var radians = cast 22;
	var round = cast 23;
	var roundeven = cast 24;
	var sign = cast 25;
	var sin = cast 26;
	var sinh = cast 27;
	var sqrt = cast 28;
	var tan = cast 29;
	var tanh = cast 30;
	var trunc = cast 31;
	var oneminus = cast 32;
	var max = cast 33;
	public static var values = [normalize, saturate, negate, reciprocal, abs, acos, acosh, asin, asinh, atan, atanh, ceil, cos, cosh, degrees, exp, exp2, floor, fract, inverseSqrt, log, log2, radians, round, roundeven, sign, sin, sinh, sqrt, tan, tanh, trunc, oneminus, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "normalize": cast 0;
			case "saturate": cast 1;
			case "negate": cast 2;
			case "reciprocal": cast 3;
			case "abs": cast 4;
			case "acos": cast 5;
			case "acosh": cast 6;
			case "asin": cast 7;
			case "asinh": cast 8;
			case "atan": cast 9;
			case "atanh": cast 10;
			case "ceil": cast 11;
			case "cos": cast 12;
			case "cosh": cast 13;
			case "degrees": cast 14;
			case "exp": cast 15;
			case "exp2": cast 16;
			case "floor": cast 17;
			case "fract": cast 18;
			case "inverseSqrt": cast 19;
			case "log": cast 20;
			case "log2": cast 21;
			case "radians": cast 22;
			case "round": cast 23;
			case "roundeven": cast 24;
			case "sign": cast 25;
			case "sin": cast 26;
			case "sinh": cast 27;
			case "sqrt": cast 28;
			case "tan": cast 29;
			case "tanh": cast 30;
			case "trunc": cast 31;
			case "oneminus": cast 32;
			case "max": cast 33;
			case _: null;
		}
	}
}
