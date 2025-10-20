package newhaven;

enum abstract InitializationLevel(Int) from Int to Int {
	var core = cast 0;
	var servers = cast 1;
	var scene = cast 2;
	var editor = cast 3;
	public static var values = [core, servers, scene, editor];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "core": cast 0;
			case "servers": cast 1;
			case "scene": cast 2;
			case "editor": cast 3;
			case _: null;
		}
	}
}
