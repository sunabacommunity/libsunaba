package sunaba;

enum abstract ParticlesCollisionType(Int) from Int to Int {
	var sphereAttract = cast 0;
	var boxAttract = cast 1;
	var vectorFieldAttract = cast 2;
	var sphereCollide = cast 3;
	var boxCollide = cast 4;
	var sdfCollide = cast 5;
	var heightfieldCollide = cast 6;
	public static var values = [sphereAttract, boxAttract, vectorFieldAttract, sphereCollide, boxCollide, sdfCollide, heightfieldCollide];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "sphereAttract": cast 0;
			case "boxAttract": cast 1;
			case "vectorFieldAttract": cast 2;
			case "sphereCollide": cast 3;
			case "boxCollide": cast 4;
			case "sdfCollide": cast 5;
			case "heightfieldCollide": cast 6;
			case _: null;
		}
	}
}
