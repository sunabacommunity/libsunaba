package sunaba;

enum abstract HandleBinaryImageModeEnum(Int) from Int to Int {
	var discardTextures = cast 0;
	var extractTextures = cast 1;
	var embedAsBasisu = cast 2;
	var embedAsUncompressed = cast 3;
	public static var values = [discardTextures, extractTextures, embedAsBasisu, embedAsUncompressed];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "discardTextures": cast 0;
			case "extractTextures": cast 1;
			case "embedAsBasisu": cast 2;
			case "embedAsUncompressed": cast 3;
			case _: null;
		}
	}
}
