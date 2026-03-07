package sunaba.spatial;
import sunaba.core.Dictionary;

class FemaleDress extends ScriptableObject {
	public var name: String = "";
	public var desc: String = "";
	public var dressType: Int = 0;
	public var innerTexture: Texture2D;
	public var outerTexture: Texture2D;

	public override function getData() {
		var data = super.getData();

		data.set("name", name);
		data.set("desc", desc);
		data.set("dressType", dressType);
		data.set("innerTexture", DataUtils.varToDict(innerTexture.native));
		data.set("outerTexture", DataUtils.varToDict(outerTexture.native));

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		name = data.get("name");
		desc = data.get("desc");
		dressType = data.get("dressType");
		innerTexture = new Texture2D(DataUtils.dictToVar(data.get("innerTexture")));
		outerTexture = new Texture2D(DataUtils.dictToVar(data.get("outerTexture")));
	}
}
