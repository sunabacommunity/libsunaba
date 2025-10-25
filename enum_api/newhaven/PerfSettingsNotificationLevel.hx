package sunaba;

enum abstract PerfSettingsNotificationLevel(Int) from Int to Int {
	var normal = cast 0;
	var warning = cast 1;
	var impaired = cast 2;
	public static var values = [normal, warning, impaired];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "normal": cast 0;
			case "warning": cast 1;
			case "impaired": cast 2;
			case _: null;
		}
	}
}
