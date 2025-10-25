package sunaba;

enum abstract LookupResultType(Int) from Int to Int {
	var scriptLocation = cast 0;
	var _class = cast 1;
	var classConstant = cast 2;
	var classProperty = cast 3;
	var classMethod = cast 4;
	var classSignal = cast 5;
	var classEnum = cast 6;
	var classTbdGlobalscope = cast 7;
	var classAnnotation = cast 8;
	var localConstant = cast 9;
	var localVariable = cast 10;
	var max = cast 11;
	public static var values = [scriptLocation, _class, classConstant, classProperty, classMethod, classSignal, classEnum, classTbdGlobalscope, classAnnotation, localConstant, localVariable, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "scriptLocation": cast 0;
			case "_class": cast 1;
			case "classConstant": cast 2;
			case "classProperty": cast 3;
			case "classMethod": cast 4;
			case "classSignal": cast 5;
			case "classEnum": cast 6;
			case "classTbdGlobalscope": cast 7;
			case "classAnnotation": cast 8;
			case "localConstant": cast 9;
			case "localVariable": cast 10;
			case "max": cast 11;
			case _: null;
		}
	}
}
