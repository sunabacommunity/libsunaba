package sunaba;

enum abstract Method(Int) from Int to Int {
	var get = cast 0;
	var head = cast 1;
	var post = cast 2;
	var put = cast 3;
	var delete = cast 4;
	var options = cast 5;
	var trace = cast 6;
	var connect = cast 7;
	var patch = cast 8;
	var max = cast 9;
	public static var values = [get, head, post, put, delete, options, trace, connect, patch, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "get": cast 0;
			case "head": cast 1;
			case "post": cast 2;
			case "put": cast 3;
			case "delete": cast 4;
			case "options": cast 5;
			case "trace": cast 6;
			case "connect": cast 7;
			case "patch": cast 8;
			case "max": cast 9;
			case _: null;
		}
	}
}
