package sunaba.ui;

enum abstract MenuButtonTextOverrunBehavior(Int) from Int to Int {
	var noTrimming = cast 0;
	var trimChar = cast 1;
	var trimWord = cast 2;
	var trimEllipsis = cast 3;
	var trimWordEllipsis = cast 4;
	var trimEllipsisForce = cast 5;
	var trimWordEllipsisForce = cast 6;
	public static var values = [noTrimming, trimChar, trimWord, trimEllipsis, trimWordEllipsis, trimEllipsisForce, trimWordEllipsisForce];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "noTrimming": cast 0;
			case "trimChar": cast 1;
			case "trimWord": cast 2;
			case "trimEllipsis": cast 3;
			case "trimWordEllipsis": cast 4;
			case "trimEllipsisForce": cast 5;
			case "trimWordEllipsisForce": cast 6;
			case _: null;
		}
	}
}
