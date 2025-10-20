package newhaven;

enum abstract UnixPermissionFlags(Int) from Int to Int {
	var executeOther = cast 1;
	var writeOther = cast 2;
	var readOther = cast 4;
	var executeGroup = cast 8;
	var writeGroup = cast 16;
	var readGroup = cast 32;
	var executeOwner = cast 64;
	var writeOwner = cast 128;
	var readOwner = cast 256;
	var restrictedDelete = cast 512;
	var setGroupId = cast 1024;
	var setUserId = cast 2048;
	public static var values = [executeOther, writeOther, readOther, executeGroup, writeGroup, readGroup, executeOwner, writeOwner, readOwner, restrictedDelete, setGroupId, setUserId];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "executeOther": cast 1;
			case "writeOther": cast 2;
			case "readOther": cast 4;
			case "executeGroup": cast 8;
			case "writeGroup": cast 16;
			case "readGroup": cast 32;
			case "executeOwner": cast 64;
			case "writeOwner": cast 128;
			case "readOwner": cast 256;
			case "restrictedDelete": cast 512;
			case "setGroupId": cast 1024;
			case "setUserId": cast 2048;
			case _: null;
		}
	}
}
