package;

import sunaba.App;
import sunaba.dotnet.DotNetInteropService;
import sunaba.core.ArrayList;

class Main extends App {
	public static function main() {
		new Main();
	}

	public override function init() {
		var dnObj = DotNetInteropService.instantiate("Sledge.Formats.Map.Formats.QuakeMapFormat", new ArrayList());
		Sys.println(dnObj.getMember("Name").toString());
	}
}
