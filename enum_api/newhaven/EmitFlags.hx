package newhaven;

enum abstract EmitFlags(Int) from Int to Int {
	var position = cast 1;
	var rotScale = cast 2;
	var velocity = cast 4;
	var color = cast 8;
	var custom = cast 16;
	public static var values = [position, rotScale, velocity, color, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "position": cast 1;
			case "rotScale": cast 2;
			case "velocity": cast 4;
			case "color": cast 8;
			case "custom": cast 16;
			case _: null;
		}
	}
}
