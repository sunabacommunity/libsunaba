package newhaven;

enum abstract LogicOperation(Int) from Int to Int {
	var clear = cast 0;
	var and = cast 1;
	var andReverse = cast 2;
	var copy = cast 3;
	var andInverted = cast 4;
	var noOp = cast 5;
	var xor = cast 6;
	var or = cast 7;
	var nor = cast 8;
	var equivalent = cast 9;
	var invert = cast 10;
	var orReverse = cast 11;
	var copyInverted = cast 12;
	var orInverted = cast 13;
	var nand = cast 14;
	var set = cast 15;
	var max = cast 16;
	public static var values = [clear, and, andReverse, copy, andInverted, noOp, xor, or, nor, equivalent, invert, orReverse, copyInverted, orInverted, nand, set, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "clear": cast 0;
			case "and": cast 1;
			case "andReverse": cast 2;
			case "copy": cast 3;
			case "andInverted": cast 4;
			case "noOp": cast 5;
			case "xor": cast 6;
			case "or": cast 7;
			case "nor": cast 8;
			case "equivalent": cast 9;
			case "invert": cast 10;
			case "orReverse": cast 11;
			case "copyInverted": cast 12;
			case "orInverted": cast 13;
			case "nand": cast 14;
			case "set": cast 15;
			case "max": cast 16;
			case _: null;
		}
	}
}
