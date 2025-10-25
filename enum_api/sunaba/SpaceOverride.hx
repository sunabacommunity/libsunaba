package sunaba;

enum abstract SpaceOverride(Int) from Int to Int {
	var disabled = cast 0;
	var combine = cast 1;
	var combineReplace = cast 2;
	var replace = cast 3;
	var replaceCombine = cast 4;
	public static var values = [disabled, combine, combineReplace, replace, replaceCombine];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "disabled": cast 0;
			case "combine": cast 1;
			case "combineReplace": cast 2;
			case "replace": cast 3;
			case "replaceCombine": cast 4;
			case _: null;
		}
	}
}
