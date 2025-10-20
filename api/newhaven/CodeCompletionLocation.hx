package newhaven;

enum abstract CodeCompletionLocation(Int) from Int to Int {
	var local = cast 0;
	var parentMask = cast 256;
	var otherUserCode = cast 512;
	var other = cast 1024;
	public static var values = [local, parentMask, otherUserCode, other];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "local": cast 0;
			case "parentMask": cast 256;
			case "otherUserCode": cast 512;
			case "other": cast 1024;
			case _: null;
		}
	}
}
