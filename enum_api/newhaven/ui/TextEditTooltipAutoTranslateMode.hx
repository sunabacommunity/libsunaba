package newhaven.ui;

enum abstract TextEditTooltipAutoTranslateMode(Int) from Int to Int {
	var inherit = cast 0;
	var always = cast 1;
	var disabled = cast 2;
	public static var values = [inherit, always, disabled];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "inherit": cast 0;
			case "always": cast 1;
			case "disabled": cast 2;
			case _: null;
		}
	}
}
