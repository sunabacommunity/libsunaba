package newhaven;

enum abstract ParticlesCollisionHeightfieldResolution(Int) from Int to Int {
	var resolution256 = cast 0;
	var resolution512 = cast 1;
	var resolution1024 = cast 2;
	var resolution2048 = cast 3;
	var resolution4096 = cast 4;
	var resolution8192 = cast 5;
	var max = cast 6;
	public static var values = [resolution256, resolution512, resolution1024, resolution2048, resolution4096, resolution8192, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "resolution256": cast 0;
			case "resolution512": cast 1;
			case "resolution1024": cast 2;
			case "resolution2048": cast 3;
			case "resolution4096": cast 4;
			case "resolution8192": cast 5;
			case "max": cast 6;
			case _: null;
		}
	}
}
