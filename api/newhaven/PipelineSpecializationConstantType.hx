package newhaven;

enum abstract PipelineSpecializationConstantType(Int) from Int to Int {
	var bool = cast 0;
	var int = cast 1;
	var float = cast 2;
	public static var values = [bool, int, float];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "bool": cast 0;
			case "int": cast 1;
			case "float": cast 2;
			case _: null;
		}
	}
}
