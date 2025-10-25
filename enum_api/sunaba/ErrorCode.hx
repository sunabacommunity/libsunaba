package sunaba;

enum abstract ErrorCode(Int) from Int to Int {
	var parseError = cast -32700;
	var internalError = cast -32603;
	var invalidParams = cast -32602;
	var methodNotFound = cast -32601;
	var invalidRequest = cast -32600;
	public static var values = [parseError, internalError, invalidParams, methodNotFound, invalidRequest];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "parseError": cast -32700;
			case "internalError": cast -32603;
			case "invalidParams": cast -32602;
			case "methodNotFound": cast -32601;
			case "invalidRequest": cast -32600;
			case _: null;
		}
	}
}
