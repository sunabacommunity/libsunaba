package newhaven;

enum abstract Features(Int) from Int to Int {
	var shaders = cast 0;
	var multithreaded = cast 1;
	public static var values = [shaders, multithreaded];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "shaders": cast 0;
			case "multithreaded": cast 1;
			case _: null;
		}
	}
}
