package sunaba;

enum abstract KeyModifierMask(Int) from Int to Int {
	var codeMask = cast 8388607;
	var maskCmdOrCtrl = cast 16777216;
	var maskShift = cast 33554432;
	var maskAlt = cast 67108864;
	var maskMeta = cast 134217728;
	var maskCtrl = cast 268435456;
	var maskKpad = cast 536870912;
	var maskGroupSwitch = cast 1073741824;
	var modifierMask = cast 2130706432;
	public static var values = [codeMask, maskCmdOrCtrl, maskShift, maskAlt, maskMeta, maskCtrl, maskKpad, maskGroupSwitch, modifierMask];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "codeMask": cast 8388607;
			case "maskCmdOrCtrl": cast 16777216;
			case "maskShift": cast 33554432;
			case "maskAlt": cast 67108864;
			case "maskMeta": cast 134217728;
			case "maskCtrl": cast 268435456;
			case "maskKpad": cast 536870912;
			case "maskGroupSwitch": cast 1073741824;
			case "modifierMask": cast 2130706432;
			case _: null;
		}
	}
}
