package newhaven;

enum abstract UpnpResult(Int) from Int to Int {
	var success = cast 0;
	var notAuthorized = cast 1;
	var portMappingNotFound = cast 2;
	var inconsistentParameters = cast 3;
	var noSuchEntryInArray = cast 4;
	var actionFailed = cast 5;
	var srcIpWildcardNotPermitted = cast 6;
	var extPortWildcardNotPermitted = cast 7;
	var intPortWildcardNotPermitted = cast 8;
	var remoteHostMustBeWildcard = cast 9;
	var extPortMustBeWildcard = cast 10;
	var noPortMapsAvailable = cast 11;
	var conflictWithOtherMechanism = cast 12;
	var conflictWithOtherMapping = cast 13;
	var samePortValuesRequired = cast 14;
	var onlyPermanentLeaseSupported = cast 15;
	var invalidGateway = cast 16;
	var invalidPort = cast 17;
	var invalidProtocol = cast 18;
	var invalidDuration = cast 19;
	var invalidArgs = cast 20;
	var invalidResponse = cast 21;
	var invalidParam = cast 22;
	var httpError = cast 23;
	var socketError = cast 24;
	var memAllocError = cast 25;
	var noGateway = cast 26;
	var noDevices = cast 27;
	var unknownError = cast 28;
	public static var values = [success, notAuthorized, portMappingNotFound, inconsistentParameters, noSuchEntryInArray, actionFailed, srcIpWildcardNotPermitted, extPortWildcardNotPermitted, intPortWildcardNotPermitted, remoteHostMustBeWildcard, extPortMustBeWildcard, noPortMapsAvailable, conflictWithOtherMechanism, conflictWithOtherMapping, samePortValuesRequired, onlyPermanentLeaseSupported, invalidGateway, invalidPort, invalidProtocol, invalidDuration, invalidArgs, invalidResponse, invalidParam, httpError, socketError, memAllocError, noGateway, noDevices, unknownError];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "success": cast 0;
			case "notAuthorized": cast 1;
			case "portMappingNotFound": cast 2;
			case "inconsistentParameters": cast 3;
			case "noSuchEntryInArray": cast 4;
			case "actionFailed": cast 5;
			case "srcIpWildcardNotPermitted": cast 6;
			case "extPortWildcardNotPermitted": cast 7;
			case "intPortWildcardNotPermitted": cast 8;
			case "remoteHostMustBeWildcard": cast 9;
			case "extPortMustBeWildcard": cast 10;
			case "noPortMapsAvailable": cast 11;
			case "conflictWithOtherMechanism": cast 12;
			case "conflictWithOtherMapping": cast 13;
			case "samePortValuesRequired": cast 14;
			case "onlyPermanentLeaseSupported": cast 15;
			case "invalidGateway": cast 16;
			case "invalidPort": cast 17;
			case "invalidProtocol": cast 18;
			case "invalidDuration": cast 19;
			case "invalidArgs": cast 20;
			case "invalidResponse": cast 21;
			case "invalidParam": cast 22;
			case "httpError": cast 23;
			case "socketError": cast 24;
			case "memAllocError": cast 25;
			case "noGateway": cast 26;
			case "noDevices": cast 27;
			case "unknownError": cast 28;
			case _: null;
		}
	}
}
