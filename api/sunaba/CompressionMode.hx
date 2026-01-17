package sunaba;

enum abstract CompressionMode(Int) from Int to Int {
	var fastlz = cast 0;
	var deflate = cast 1;
	var zstd = cast 2;
	var gZip = cast 3;
	var brotli = cast 4;
	public static var values = [fastlz, deflate, zstd, gZip, brotli];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "fastlz": cast 0;
			case "deflate": cast 1;
			case "zstd": cast 2;
			case "gZip": cast 3;
			case "brotli": cast 4;
			case _: null;
		}
	}
}
