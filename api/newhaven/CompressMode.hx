package newhaven;

enum abstract CompressMode(Int) from Int to Int {
	var s3Tc = cast 0;
	var etc = cast 1;
	var etc2 = cast 2;
	var bptc = cast 3;
	var astc = cast 4;
	var max = cast 5;
	public static var values = [s3Tc, etc, etc2, bptc, astc, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "s3Tc": cast 0;
			case "etc": cast 1;
			case "etc2": cast 2;
			case "bptc": cast 3;
			case "astc": cast 4;
			case "max": cast 5;
			case _: null;
		}
	}
}
