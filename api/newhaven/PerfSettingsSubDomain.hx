package newhaven;

enum abstract PerfSettingsSubDomain(Int) from Int to Int {
	var compositing = cast 0;
	var rendering = cast 1;
	var thermal = cast 2;
	public static var values = [compositing, rendering, thermal];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "compositing": cast 0;
			case "rendering": cast 1;
			case "thermal": cast 2;
			case _: null;
		}
	}
}
