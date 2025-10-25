package sunaba;

enum abstract Parameter(Int) from Int to Int {
	var initialLinearVelocity = cast 0;
	var angularVelocity = cast 1;
	var orbitVelocity = cast 2;
	var linearAccel = cast 3;
	var radialAccel = cast 4;
	var tangentialAccel = cast 5;
	var damping = cast 6;
	var angle = cast 7;
	var scale = cast 8;
	var hueVariation = cast 9;
	var animSpeed = cast 10;
	var animOffset = cast 11;
	var turbInfluenceOverLife = cast 12;
	var turbVelInfluence = cast 13;
	var turbInitDisplacement = cast 14;
	var radialVelocity = cast 15;
	var directionalVelocity = cast 16;
	var scaleOverVelocity = cast 17;
	var max = cast 18;
	public static var values = [initialLinearVelocity, angularVelocity, orbitVelocity, linearAccel, radialAccel, tangentialAccel, damping, angle, scale, hueVariation, animSpeed, animOffset, turbInfluenceOverLife, turbVelInfluence, turbInitDisplacement, radialVelocity, directionalVelocity, scaleOverVelocity, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "initialLinearVelocity": cast 0;
			case "angularVelocity": cast 1;
			case "orbitVelocity": cast 2;
			case "linearAccel": cast 3;
			case "radialAccel": cast 4;
			case "tangentialAccel": cast 5;
			case "damping": cast 6;
			case "angle": cast 7;
			case "scale": cast 8;
			case "hueVariation": cast 9;
			case "animSpeed": cast 10;
			case "animOffset": cast 11;
			case "turbInfluenceOverLife": cast 12;
			case "turbVelInfluence": cast 13;
			case "turbInitDisplacement": cast 14;
			case "radialVelocity": cast 15;
			case "directionalVelocity": cast 16;
			case "scaleOverVelocity": cast 17;
			case "max": cast 18;
			case _: null;
		}
	}
}
