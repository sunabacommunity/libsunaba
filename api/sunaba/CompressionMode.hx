package sunaba;

enum abstract CompressionMode(Int) from Int to Int {
	var lossless = cast 0;
	var lossy = cast 1;
	var basisUniversal = cast 2;
	var s3Tc = cast 3;
	var etc2 = cast 4;
	var bptc = cast 5;
	var astc = cast 6;
	public static var values = [lossless, lossy, basisUniversal, s3Tc, etc2, bptc, astc];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "lossless": cast 0;
			case "lossy": cast 1;
			case "basisUniversal": cast 2;
			case "s3Tc": cast 3;
			case "etc2": cast 4;
			case "bptc": cast 5;
			case "astc": cast 6;
			case _: null;
		}
	}
}
