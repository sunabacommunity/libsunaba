package newhaven;

enum abstract PlayAreaMode(Int) from Int to Int {
	var unknown = cast 0;
	var area3Dof = cast 1;
	var sitting = cast 2;
	var roomscale = cast 3;
	var stage = cast 4;
	var custom = cast 2147483647;
	public static var values = [unknown, area3Dof, sitting, roomscale, stage, custom];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "unknown": cast 0;
			case "area3Dof": cast 1;
			case "sitting": cast 2;
			case "roomscale": cast 3;
			case "stage": cast 4;
			case "custom": cast 2147483647;
			case _: null;
		}
	}
}
