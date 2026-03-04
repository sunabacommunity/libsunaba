package sunaba.spatial;

import sunaba.core.Color;
import sunaba.core.Dictionary;
import sunaba.core.ArrayList;
import sunaba.core.Variant;

class CharacterData extends ScriptableObject {
	public var name: String;
	public var desc: String;
	public var skinTone: Color = new Color(1, 1, 1, 1);
	public var bodyType: BodyType = BodyType.male;
	public var femaleChestSize: Float = 0.0;
	public var legThickness: Float = 0.0;
	public var maleArmThickness: Float = 0.0;

	public var faceTexture: FaceTextureData;

	public var clothes: Array<Clothing> = new Array();

	public var femaleDress: FemaleDress;

	public var headwearList: Array<Headwear> = new Array();

	public override function getData() {
		var data = super.getData();

		data.set("name", name);
		data.set("desc", desc);
		data.set("skinTone", DataUtils.varToDict(skinTone));
		data.set("bodyType", Variant.fromInt(bodyType));
		data.set("femaleChestSize", femaleChestSize);
		data.set("legThickness", legThickness);
		data.set("maleArmThickness", maleArmThickness);
		data.set("faceTexture",faceTexture.getData());
		var clothesArr = new ArrayList();
		for (clothing in clothes) {
			clothesArr.append(clothing.getData());
		}
		data.set("clothes", clothesArr);
		var headwearArr = new ArrayList();
		for (headwear in headwearList) {
			headwearArr.append(headwear.getData());
		}
		data.set("headwearList", headwearArr);

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		name = data.get("name");
		desc = data.get("desc");
		skinTone = DataUtils.dictToVar(data.get("skinTone"));
		bodyType = data.get("bodyType").toInt();
		femaleChestSize = data.get("femaleChestSize");
		legThickness = data.get("legThickness");
		maleArmThickness = data.get("maleArmThickness");
		faceTexture = new FaceTextureData();
		faceTexture.setData(data.get("faceTexture"));
		var clothesArr: ArrayList = data.get("clothes");
		for (clothingData in clothesArr) {
			var clothing = new Clothing();
			clothing.setData(clothingData);
			clothes.push(clothing);
		}
		var headwearArr: ArrayList = data.get("headwearList");
		for (headwearData in headwearArr) {
			var headwear = new Headwear();
			headwear.setData(headwearData);
			headwearList.push(headwear);
		}
	}
}
