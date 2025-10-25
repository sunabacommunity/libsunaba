package sunaba;

enum abstract CodeCompletionKind(Int) from Int to Int {
	var _class = cast 0;
	var _function = cast 1;
	var signal = cast 2;
	var variable = cast 3;
	var member = cast 4;
	var _enum = cast 5;
	var constant = cast 6;
	var nodePath = cast 7;
	var filePath = cast 8;
	var plainText = cast 9;
	var max = cast 10;
	public static var values = [_class, _function, signal, variable, member, _enum, constant, nodePath, filePath, plainText, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "_class": cast 0;
			case "_function": cast 1;
			case "signal": cast 2;
			case "variable": cast 3;
			case "member": cast 4;
			case "_enum": cast 5;
			case "constant": cast 6;
			case "nodePath": cast 7;
			case "filePath": cast 8;
			case "plainText": cast 9;
			case "max": cast 10;
			case _: null;
		}
	}
}
