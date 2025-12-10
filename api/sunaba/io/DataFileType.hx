package sunaba.io;

enum abstract DataFileType(Int) from Int to Int {
	var json = 0;
	var msgPack = 1;
}
