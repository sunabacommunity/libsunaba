package newhaven;

enum abstract Param(Int) from Int to Int {
	var linearLimitUpper = cast 0;
	var linearLimitLower = cast 1;
	var linearLimitSoftness = cast 2;
	var linearLimitRestitution = cast 3;
	var linearLimitDamping = cast 4;
	var linearMotionSoftness = cast 5;
	var linearMotionRestitution = cast 6;
	var linearMotionDamping = cast 7;
	var linearOrthogonalSoftness = cast 8;
	var linearOrthogonalRestitution = cast 9;
	var linearOrthogonalDamping = cast 10;
	var angularLimitUpper = cast 11;
	var angularLimitLower = cast 12;
	var angularLimitSoftness = cast 13;
	var angularLimitRestitution = cast 14;
	var angularLimitDamping = cast 15;
	var angularMotionSoftness = cast 16;
	var angularMotionRestitution = cast 17;
	var angularMotionDamping = cast 18;
	var angularOrthogonalSoftness = cast 19;
	var angularOrthogonalRestitution = cast 20;
	var angularOrthogonalDamping = cast 21;
	var max = cast 22;
	public static var values = [linearLimitUpper, linearLimitLower, linearLimitSoftness, linearLimitRestitution, linearLimitDamping, linearMotionSoftness, linearMotionRestitution, linearMotionDamping, linearOrthogonalSoftness, linearOrthogonalRestitution, linearOrthogonalDamping, angularLimitUpper, angularLimitLower, angularLimitSoftness, angularLimitRestitution, angularLimitDamping, angularMotionSoftness, angularMotionRestitution, angularMotionDamping, angularOrthogonalSoftness, angularOrthogonalRestitution, angularOrthogonalDamping, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "linearLimitUpper": cast 0;
			case "linearLimitLower": cast 1;
			case "linearLimitSoftness": cast 2;
			case "linearLimitRestitution": cast 3;
			case "linearLimitDamping": cast 4;
			case "linearMotionSoftness": cast 5;
			case "linearMotionRestitution": cast 6;
			case "linearMotionDamping": cast 7;
			case "linearOrthogonalSoftness": cast 8;
			case "linearOrthogonalRestitution": cast 9;
			case "linearOrthogonalDamping": cast 10;
			case "angularLimitUpper": cast 11;
			case "angularLimitLower": cast 12;
			case "angularLimitSoftness": cast 13;
			case "angularLimitRestitution": cast 14;
			case "angularLimitDamping": cast 15;
			case "angularMotionSoftness": cast 16;
			case "angularMotionRestitution": cast 17;
			case "angularMotionDamping": cast 18;
			case "angularOrthogonalSoftness": cast 19;
			case "angularOrthogonalRestitution": cast 20;
			case "angularOrthogonalDamping": cast 21;
			case "max": cast 22;
			case _: null;
		}
	}
}
