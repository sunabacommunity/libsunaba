package newhaven;

enum abstract MemoryType(Int) from Int to Int {
	var textures = cast 0;
	var buffers = cast 1;
	var total = cast 2;
	public static var values = [textures, buffers, total];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "textures": cast 0;
			case "buffers": cast 1;
			case "total": cast 2;
			case _: null;
		}
	}
}
