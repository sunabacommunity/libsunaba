import sunaba.App;
import sunaba.OSService;
import sunaba.SystemDir;
import sys.io.File;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		var documentsFolder = OSService.getSystemDir(SystemDir.documents);
		var docPath = documentsFolder + "/test.txt";
		var file = File.getContent(docPath);
		trace(file);
	}
}
