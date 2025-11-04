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
		return getNative().get("DeviceType");
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
}
