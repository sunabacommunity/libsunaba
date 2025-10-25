package sunaba.spatial;

enum abstract Sprite3DAlphaCut(Int) from Int to Int {
	var disabled = cast 0;
	var discard = cast 1;
	var opaquePrepass = cast 2;
	var hash = cast 3;
	public static var values = [disabled, discard, opaquePrepass, hash];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "discard": cast 1;
			case "opaquePrepass": cast 2;
			case "hash": cast 3;
			case _: null;
		}
	}
}
