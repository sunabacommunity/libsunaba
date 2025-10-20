package newhaven.ui;

enum abstract RangeSizeFlagsVertical(Int) from Int to Int {
	var shrinkBegin = cast 0;
	var fill = cast 1;
	var expand = cast 2;
	var expandFill = cast 3;
	var shrinkCenter = cast 4;
	var shrinkEnd = cast 8;
	public static var values = [shrinkBegin, fill, expand, expandFill, shrinkCenter, shrinkEnd];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "shrinkBegin": cast 0;
			case "fill": cast 1;
			case "expand": cast 2;
			case "expandFill": cast 3;
			case "shrinkCenter": cast 4;
			case "shrinkEnd": cast 8;
			case _: null;
		}
	}
}
