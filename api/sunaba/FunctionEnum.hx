package sunaba;

enum abstract FunctionEnum(Int) from Int to Int {
	var sin = cast 0;
	var cos = cast 1;
	var tan = cast 2;
	var asin = cast 3;
	var acos = cast 4;
	var atan = cast 5;
	var sinh = cast 6;
	var cosh = cast 7;
	var tanh = cast 8;
	var log = cast 9;
	var exp = cast 10;
	var sqrt = cast 11;
	var abs = cast 12;
	var sign = cast 13;
	var floor = cast 14;
	var round = cast 15;
	var ceil = cast 16;
	var fract = cast 17;
	var saturate = cast 18;
	var negate = cast 19;
	var acosh = cast 20;
	var asinh = cast 21;
	var atanh = cast 22;
	var degrees = cast 23;
	var exp2 = cast 24;
	var inverseSqrt = cast 25;
	var log2 = cast 26;
	var radians = cast 27;
	var reciprocal = cast 28;
	var roundeven = cast 29;
	var trunc = cast 30;
	var oneminus = cast 31;
	var max = cast 32;
	public static var values = [sin, cos, tan, asin, acos, atan, sinh, cosh, tanh, log, exp, sqrt, abs, sign, floor, round, ceil, fract, saturate, negate, acosh, asinh, atanh, degrees, exp2, inverseSqrt, log2, radians, reciprocal, roundeven, trunc, oneminus, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "sin": cast 0;
			case "cos": cast 1;
			case "tan": cast 2;
			case "asin": cast 3;
			case "acos": cast 4;
			case "atan": cast 5;
			case "sinh": cast 6;
			case "cosh": cast 7;
			case "tanh": cast 8;
			case "log": cast 9;
			case "exp": cast 10;
			case "sqrt": cast 11;
			case "abs": cast 12;
			case "sign": cast 13;
			case "floor": cast 14;
			case "round": cast 15;
			case "ceil": cast 16;
			case "fract": cast 17;
			case "saturate": cast 18;
			case "negate": cast 19;
			case "acosh": cast 20;
			case "asinh": cast 21;
			case "atanh": cast 22;
			case "degrees": cast 23;
			case "exp2": cast 24;
			case "inverseSqrt": cast 25;
			case "log2": cast 26;
			case "radians": cast 27;
			case "reciprocal": cast 28;
			case "roundeven": cast 29;
			case "trunc": cast 30;
			case "oneminus": cast 31;
			case "max": cast 32;
			case _: null;
		}
	}
}
