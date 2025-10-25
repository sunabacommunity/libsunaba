package sunaba;

enum abstract Result(Int) from Int to Int {
	var success = cast 0;
	var chunkedBodySizeMismatch = cast 1;
	var cantConnect = cast 2;
	var cantResolve = cast 3;
	var connectionError = cast 4;
	var tlsHandshakeError = cast 5;
	var noResponse = cast 6;
	var bodySizeLimitExceeded = cast 7;
	var bodyDecompressFailed = cast 8;
	var requestFailed = cast 9;
	var downloadFileCantOpen = cast 10;
	var downloadFileWriteError = cast 11;
	var redirectLimitReached = cast 12;
	var timeout = cast 13;
	public static var values = [success, chunkedBodySizeMismatch, cantConnect, cantResolve, connectionError, tlsHandshakeError, noResponse, bodySizeLimitExceeded, bodyDecompressFailed, requestFailed, downloadFileCantOpen, downloadFileWriteError, redirectLimitReached, timeout];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "success": cast 0;
			case "chunkedBodySizeMismatch": cast 1;
			case "cantConnect": cast 2;
			case "cantResolve": cast 3;
			case "connectionError": cast 4;
			case "tlsHandshakeError": cast 5;
			case "noResponse": cast 6;
			case "bodySizeLimitExceeded": cast 7;
			case "bodyDecompressFailed": cast 8;
			case "requestFailed": cast 9;
			case "downloadFileCantOpen": cast 10;
			case "downloadFileWriteError": cast 11;
			case "redirectLimitReached": cast 12;
			case "timeout": cast 13;
			case _: null;
		}
	}
}
