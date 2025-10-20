package newhaven;

enum abstract DrawFlags(Int) from Int to Int {
	var transparent = cast 0;
	var shaded = cast 1;
	var doubleSided = cast 2;
	var disableDepthTest = cast 3;
	var fixedSize = cast 4;
	var max = cast 5;
	public static var values = [transparent, shaded, doubleSided, disableDepthTest, fixedSize, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "transparent": cast 0;
			case "shaded": cast 1;
			case "doubleSided": cast 2;
			case "disableDepthTest": cast 3;
			case "fixedSize": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
