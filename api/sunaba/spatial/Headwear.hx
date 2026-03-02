package sunaba.spatial;
import sunaba.core.Dictionary;

class Headwear extends ScriptableObject {
	public var name: String;
	public var desc: String;
	public var prefab: String;

	public override function getData() {
		var data = super.getData();

		data.set("name", name);
		data.set("desc", desc);
		data.set("prefab", prefab);

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		name = data.get("name");
		desc = data.get("desc");
		prefab = data.get("prefab");
	}
}
