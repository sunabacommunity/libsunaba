package newhaven;

enum abstract ScriptNameCasing(Int) from Int to Int {
	var auto = cast 0;
	var pascalCase = cast 1;
	var snakeCase = cast 2;
	var kebabCase = cast 3;
	var camelCase = cast 4;
	public static var values = [auto, pascalCase, snakeCase, kebabCase, camelCase];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "auto": cast 0;
			case "pascalCase": cast 1;
			case "snakeCase": cast 2;
			case "kebabCase": cast 3;
			case "camelCase": cast 4;
			case _: null;
		}
	}
}
