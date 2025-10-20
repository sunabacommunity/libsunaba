package newhaven;

enum abstract Operator(Int) from Int to Int {
	var equal = cast 0;
	var notEqual = cast 1;
	var less = cast 2;
	var lessEqual = cast 3;
	var greater = cast 4;
	var greaterEqual = cast 5;
	var add = cast 6;
	var subtract = cast 7;
	var multiply = cast 8;
	var divide = cast 9;
	var negate = cast 10;
	var positive = cast 11;
	var module = cast 12;
	var power = cast 13;
	var shiftLeft = cast 14;
	var shiftRight = cast 15;
	var bitAnd = cast 16;
	var bitOr = cast 17;
	var bitXor = cast 18;
	var bitNegate = cast 19;
	var and = cast 20;
	var or = cast 21;
	var xor = cast 22;
	var not = cast 23;
	var _in = cast 24;
	var max = cast 25;
	public static var values = [equal, notEqual, less, lessEqual, greater, greaterEqual, add, subtract, multiply, divide, negate, positive, module, power, shiftLeft, shiftRight, bitAnd, bitOr, bitXor, bitNegate, and, or, xor, not, _in, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "equal": cast 0;
			case "notEqual": cast 1;
			case "less": cast 2;
			case "lessEqual": cast 3;
			case "greater": cast 4;
			case "greaterEqual": cast 5;
			case "add": cast 6;
			case "subtract": cast 7;
			case "multiply": cast 8;
			case "divide": cast 9;
			case "negate": cast 10;
			case "positive": cast 11;
			case "module": cast 12;
			case "power": cast 13;
			case "shiftLeft": cast 14;
			case "shiftRight": cast 15;
			case "bitAnd": cast 16;
			case "bitOr": cast 17;
			case "bitXor": cast 18;
			case "bitNegate": cast 19;
			case "and": cast 20;
			case "or": cast 21;
			case "xor": cast 22;
			case "not": cast 23;
			case "_in": cast 24;
			case "max": cast 25;
			case _: null;
		}
	}
}
