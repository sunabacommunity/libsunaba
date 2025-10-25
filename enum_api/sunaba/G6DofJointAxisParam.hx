package sunaba;

enum abstract G6DofJointAxisParam(Int) from Int to Int {
	var linearLowerLimit = cast 0;
	var linearUpperLimit = cast 1;
	var linearLimitSoftness = cast 2;
	var linearRestitution = cast 3;
	var linearDamping = cast 4;
	var linearMotorTargetVelocity = cast 5;
	var linearMotorForceLimit = cast 6;
	var linearSpringStiffness = cast 7;
	var linearSpringDamping = cast 8;
	var linearSpringEquilibriumPoint = cast 9;
	var angularLowerLimit = cast 10;
	var angularUpperLimit = cast 11;
	var angularLimitSoftness = cast 12;
	var angularDamping = cast 13;
	var angularRestitution = cast 14;
	var angularForceLimit = cast 15;
	var angularErp = cast 16;
	var angularMotorTargetVelocity = cast 17;
	var angularMotorForceLimit = cast 18;
	var angularSpringStiffness = cast 19;
	var angularSpringDamping = cast 20;
	var angularSpringEquilibriumPoint = cast 21;
	var max = cast 22;
	public static var values = [linearLowerLimit, linearUpperLimit, linearLimitSoftness, linearRestitution, linearDamping, linearMotorTargetVelocity, linearMotorForceLimit, linearSpringStiffness, linearSpringDamping, linearSpringEquilibriumPoint, angularLowerLimit, angularUpperLimit, angularLimitSoftness, angularDamping, angularRestitution, angularForceLimit, angularErp, angularMotorTargetVelocity, angularMotorForceLimit, angularSpringStiffness, angularSpringDamping, angularSpringEquilibriumPoint, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "linearLowerLimit": cast 0;
			case "linearUpperLimit": cast 1;
			case "linearLimitSoftness": cast 2;
			case "linearRestitution": cast 3;
			case "linearDamping": cast 4;
			case "linearMotorTargetVelocity": cast 5;
			case "linearMotorForceLimit": cast 6;
			case "linearSpringStiffness": cast 7;
			case "linearSpringDamping": cast 8;
			case "linearSpringEquilibriumPoint": cast 9;
			case "angularLowerLimit": cast 10;
			case "angularUpperLimit": cast 11;
			case "angularLimitSoftness": cast 12;
			case "angularDamping": cast 13;
			case "angularRestitution": cast 14;
			case "angularForceLimit": cast 15;
			case "angularErp": cast 16;
			case "angularMotorTargetVelocity": cast 17;
			case "angularMotorForceLimit": cast 18;
			case "angularSpringStiffness": cast 19;
			case "angularSpringDamping": cast 20;
			case "angularSpringEquilibriumPoint": cast 21;
			case "max": cast 22;
			case _: null;
		}
	}
}
