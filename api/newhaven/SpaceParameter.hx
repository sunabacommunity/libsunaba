package newhaven;

enum abstract SpaceParameter(Int) from Int to Int {
	var contactRecycleRadius = cast 0;
	var contactMaxSeparation = cast 1;
	var contactMaxAllowedPenetration = cast 2;
	var contactDefaultBias = cast 3;
	var bodyLinearVelocitySleepThreshold = cast 4;
	var bodyAngularVelocitySleepThreshold = cast 5;
	var bodyTimeToSleep = cast 6;
	var solverIterations = cast 7;
	public static var values = [contactRecycleRadius, contactMaxSeparation, contactMaxAllowedPenetration, contactDefaultBias, bodyLinearVelocitySleepThreshold, bodyAngularVelocitySleepThreshold, bodyTimeToSleep, solverIterations];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "contactRecycleRadius": cast 0;
			case "contactMaxSeparation": cast 1;
			case "contactMaxAllowedPenetration": cast 2;
			case "contactDefaultBias": cast 3;
			case "bodyLinearVelocitySleepThreshold": cast 4;
			case "bodyAngularVelocitySleepThreshold": cast 5;
			case "bodyTimeToSleep": cast 6;
			case "solverIterations": cast 7;
			case _: null;
		}
	}
}
