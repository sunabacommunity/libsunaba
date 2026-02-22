package sunaba.spatial;

import sunaba.core.Color;
import sunaba.core.Dictionary;
import sunaba.core.ArrayList;

class CharacterData extends ScriptableObject {
	public var skinTone: Color = new Color(1, 1, 1, 1);
	public var bodyType: BodyType = BodyType.male;
	public var bodyHeight: Float = 0.0;
	public var bodySize: Float = 0.0;
	public var femaleChestSize: Float = 0.0;
	public var legThickness: Float = 0.0;
	public var maleArmThickness: Float = 0.0;

	public var faceTexture: Texture2D;

	public var clothes: Array<Texture2D> = new Array();

	public override function getData() {
		var data = super.getData();

		data.set("skinTone", DataUtils.varToDict(skinTone));
		data.set("bodyType", Variant.fromInt(bodyType));
		data.set("bodyHeight", bodyHeight);
		data.set("bodySize", bodySize);
		data.set("femaleChestSize", femaleChestSize);
		data.set("legThickness", legThickness);
		data.set("maleArmThickness", maleArmThickness);
		data.set("faceTextures", DataUtils.varToDict(faceTexture.native));
		var clothesArr = new ArrayList();
		for (clothing in clothes) {
			clothesArr.append(DataUtils.varToDict(clothing));
		}
		data.set("clothes", clothesArr);

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		skinTone = DataUtils.dictToVar(data.get("skinTone"));
		bodyType = data.get("bodyType");
		bodyHeight= data.get("bodyHeight");
		bodySize = data.get("bodySize");
		femaleChestSize = data.get("femaleChestSize");
		legThickness = data.get("legThickness");
		maleArmThickness = data.get("maleArmThickness");
		faceTexture = new Texture2D(DataUtils.dictToVar(data.get("faceTexture")));
		var clothesArr: ArrayList = data.get("clothesArr");
		for (clothing in clothesArr) {
			clothes.push(new Texture2D(DataUtils.dictToVar(clothing)));
		}
	}
}
