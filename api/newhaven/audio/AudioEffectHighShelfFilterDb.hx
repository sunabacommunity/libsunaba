package newhaven.audio;

enum abstract AudioEffectHighShelfFilterDb(Int) from Int to Int {
	var filter6Db = cast 0;
	var filter12Db = cast 1;
	var filter18Db = cast 2;
	var filter24Db = cast 3;
	public static var values = [filter6Db, filter12Db, filter18Db, filter24Db];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "filter6Db": cast 0;
			case "filter12Db": cast 1;
			case "filter18Db": cast 2;
			case "filter24Db": cast 3;
			case _: null;
		}
	}
}
