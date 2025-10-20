package newhaven;

enum abstract CellularReturnTypeEnum(Int) from Int to Int {
	var cellValue = cast 0;
	var distance = cast 1;
	var distance2 = cast 2;
	var distance2Add = cast 3;
	var distance2Sub = cast 4;
	var distance2Mul = cast 5;
	var distance2Div = cast 6;
	public static var values = [cellValue, distance, distance2, distance2Add, distance2Sub, distance2Mul, distance2Div];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "cellValue": cast 0;
			case "distance": cast 1;
			case "distance2": cast 2;
			case "distance2Add": cast 3;
			case "distance2Sub": cast 4;
			case "distance2Mul": cast 5;
			case "distance2Div": cast 6;
			case _: null;
		}
	}
}
