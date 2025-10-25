package sunaba;

enum abstract JustificationFlag(Int) from Int to Int {
	var none = cast 0;
	var kashida = cast 1;
	var wordBound = cast 2;
	var trimEdgeSpaces = cast 4;
	var afterLastTab = cast 8;
	var constrainEllipsis = cast 16;
	var skipLastLine = cast 32;
	var skipLastLineWithVisibleChars = cast 64;
	var doNotSkipSingleLine = cast 128;
	public static var values = [none, kashida, wordBound, trimEdgeSpaces, afterLastTab, constrainEllipsis, skipLastLine, skipLastLineWithVisibleChars, doNotSkipSingleLine];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "kashida": cast 1;
			case "wordBound": cast 2;
			case "trimEdgeSpaces": cast 4;
			case "afterLastTab": cast 8;
			case "constrainEllipsis": cast 16;
			case "skipLastLine": cast 32;
			case "skipLastLineWithVisibleChars": cast 64;
			case "doNotSkipSingleLine": cast 128;
			case _: null;
		}
	}
}
