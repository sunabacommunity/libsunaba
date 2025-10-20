package newhaven;

enum abstract NoiseTypeEnum(Int) from Int to Int {
	var simplex = cast 0;
	var simplexSmooth = cast 1;
	var cellular = cast 2;
	var perlin = cast 3;
	var valueCubic = cast 4;
	var value = cast 5;
	public static var values = [simplex, simplexSmooth, cellular, perlin, valueCubic, value];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "simplex": cast 0;
			case "simplexSmooth": cast 1;
			case "cellular": cast 2;
			case "perlin": cast 3;
			case "valueCubic": cast 4;
			case "value": cast 5;
			case _: null;
		}
	}
}
