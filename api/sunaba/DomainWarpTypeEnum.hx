package sunaba;

enum abstract DomainWarpTypeEnum(Int) from Int to Int {
	var simplex = cast 0;
	var simplexReduced = cast 1;
	var basicGrid = cast 2;
	public static var values = [simplex, simplexReduced, basicGrid];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "simplex": cast 0;
			case "simplexReduced": cast 1;
			case "basicGrid": cast 2;
			case _: null;
		}
	}
}
