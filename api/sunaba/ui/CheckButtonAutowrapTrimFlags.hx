package sunaba.ui;

enum abstract CheckButtonAutowrapTrimFlags(Int) from Int to Int {
	var none = cast 0;
	var mandatory = cast 1;
	var wordBound = cast 2;
	var graphemeBound = cast 4;
	var adaptive = cast 8;
	var trimEdgeSpaces = cast 16;
	var trimIndent = cast 32;
	var trimStartEdgeSpaces = cast 64;
	var trimEndEdgeSpaces = cast 128;
	public static var values = [none, mandatory, wordBound, graphemeBound, adaptive, trimEdgeSpaces, trimIndent, trimStartEdgeSpaces, trimEndEdgeSpaces];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "none": cast 0;
			case "mandatory": cast 1;
			case "wordBound": cast 2;
			case "graphemeBound": cast 4;
			case "adaptive": cast 8;
			case "trimEdgeSpaces": cast 16;
			case "trimIndent": cast 32;
			case "trimStartEdgeSpaces": cast 64;
			case "trimEndEdgeSpaces": cast 128;
			case _: null;
		}
	}
}
