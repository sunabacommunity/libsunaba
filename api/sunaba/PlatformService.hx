package sunaba;
import sunaba.core.native.NativeObject;
import sunaba.core.ArrayList;

class PlatformService {
	private static function getNative(): NativeObject {
		var rootNode = new Node(untyped __lua__("_G.__rootNode"));
		var platformServiceNode = rootNode.getNode("/root/PlatformService");
		return platformServiceNode.native;
	}

	public static var name(get, default): String;
	static function get_name():String {
		return getNative().get("PlatformName");
	}

	public static var deviceType(get, default): PlatformDeviceType;
	static function get_deviceType():PlatformDeviceType {
		return getNative().get("DeviceType").toInt();
	}

	public static var osName(get, default): String;
	static function get_osName():String {
		return getNative().get("OsName");
	}

	public static function hasFeature(feature: String): Bool {
		var args = new ArrayList();
		args.append(feature);
		return getNative().call("hasFeature", args);
	}

	public static function getVersion(): String {
		var args = new ArrayList();
		return getNative().call("GetVersion", args);
	}

	public static function getCompDate(): String {
		var args = new ArrayList();
		return getNative().call("GetCompDate", args);
	}

	public static function getEngineVersion(): String {
		var args = new ArrayList();
		return getNative().call("GetEngineVersion", args);
	}
}
