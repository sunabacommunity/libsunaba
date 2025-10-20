package newhaven;

enum abstract MenuItems(Int) from Int to Int {
	var cut = cast 0;
	var copy = cast 1;
	var paste = cast 2;
	var clear = cast 3;
	var selectAll = cast 4;
	var undo = cast 5;
	var redo = cast 6;
	var submenuTextDir = cast 7;
	var dirInherited = cast 8;
	var dirAuto = cast 9;
	var dirLtr = cast 10;
	var dirRtl = cast 11;
	var displayUcc = cast 12;
	var submenuInsertUcc = cast 13;
	var insertLrm = cast 14;
	var insertRlm = cast 15;
	var insertLre = cast 16;
	var insertRle = cast 17;
	var insertLro = cast 18;
	var insertRlo = cast 19;
	var insertPdf = cast 20;
	var insertAlm = cast 21;
	var insertLri = cast 22;
	var insertRli = cast 23;
	var insertFsi = cast 24;
	var insertPdi = cast 25;
	var insertZwj = cast 26;
	var insertZwnj = cast 27;
	var insertWj = cast 28;
	var insertShy = cast 29;
	var emojiAndSymbol = cast 30;
	var max = cast 31;
	public static var values = [cut, copy, paste, clear, selectAll, undo, redo, submenuTextDir, dirInherited, dirAuto, dirLtr, dirRtl, displayUcc, submenuInsertUcc, insertLrm, insertRlm, insertLre, insertRle, insertLro, insertRlo, insertPdf, insertAlm, insertLri, insertRli, insertFsi, insertPdi, insertZwj, insertZwnj, insertWj, insertShy, emojiAndSymbol, max];

	public static function fromString(s:String):Null<Int> {
		return switch (s) {
			case "cut": cast 0;
			case "copy": cast 1;
			case "paste": cast 2;
			case "clear": cast 3;
			case "selectAll": cast 4;
			case "undo": cast 5;
			case "redo": cast 6;
			case "submenuTextDir": cast 7;
			case "dirInherited": cast 8;
			case "dirAuto": cast 9;
			case "dirLtr": cast 10;
			case "dirRtl": cast 11;
			case "displayUcc": cast 12;
			case "submenuInsertUcc": cast 13;
			case "insertLrm": cast 14;
			case "insertRlm": cast 15;
			case "insertLre": cast 16;
			case "insertRle": cast 17;
			case "insertLro": cast 18;
			case "insertRlo": cast 19;
			case "insertPdf": cast 20;
			case "insertAlm": cast 21;
			case "insertLri": cast 22;
			case "insertRli": cast 23;
			case "insertFsi": cast 24;
			case "insertPdi": cast 25;
			case "insertZwj": cast 26;
			case "insertZwnj": cast 27;
			case "insertWj": cast 28;
			case "insertShy": cast 29;
			case "emojiAndSymbol": cast 30;
			case "max": cast 31;
			case _: null;
		}
	}
}
