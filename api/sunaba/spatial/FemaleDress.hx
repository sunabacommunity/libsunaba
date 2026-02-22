package sunaba.spatial;
import sunaba.core.Dictionary;

class FemaleDress extends ScriptableObject {
	public var name: String;
	public var desc: String;
	public var dressType: Int;
	public var texture: Texture2D;

	public override function getData() {
		var data = super.getData();

		data.set("name", name);
		data.set("desc", desc);
		data.set("dressType", dressType);
		data.set("texture", DataUtils.varToDict(texture.native));

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		name = data.get("name");
		desc = data.get("desc");
		dressType = data.get("dressType");
		texture = new Texture2D(DataUtils.dictToVar(data.get("texture")));
	}
}
