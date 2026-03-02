package test21;
import sunaba.Behavior;
import sunaba.spatial.CharacterData;
import sunaba.spatial.FaceTextureData;
import sunaba.Prefab;
import sunaba.spatial.CharacterRig;
import sunaba.core.Color;
import sunaba.spatial.BodyType;
import sunaba.spatial.Clothing;
import sunaba.Image;
import sunaba.ImageTexture;
import sunaba.spatial.FemaleDress;
import sunaba.spatial.Headwear;

class CharacterLoader extends Behavior {
	public override function onStart(){
		var characterData = new CharacterData();
		characterData.faceTexture = new FaceTextureData();
		characterData.faceTexture.load("basechar://data/face_green_xl.ftd");
		characterData.bodyType = BodyType.male;

		characterData.skinTone = Color.html("#ffdbac");
		characterData.save("user://characterData.vchr");

		var femaleCharacterData = new CharacterData();
		femaleCharacterData.faceTexture = new FaceTextureData();
		femaleCharacterData.faceTexture.load("basechar://data/face_green_monolid_girly_xl.ftd");
		femaleCharacterData.bodyType = BodyType.female;
		var femaleClothing = new Clothing();
		femaleClothing.name = "Himiko's dress";
		var himikoOutfitImage = new Image();
		var himikoOutfitImagePath = "app://HimikoOutfit.png";
		himikoOutfitImage.loadPngFromBuffer(entity.io.loadBytes(himikoOutfitImagePath));
		var himikoOutfitTexture = ImageTexture.createFromImage(himikoOutfitImage);
		himikoOutfitTexture.native.set("asset_path", himikoOutfitImagePath);
		femaleClothing.texture = himikoOutfitTexture;
		femaleClothing.save("user://HimikoOutfit.vclt");
		femaleCharacterData.clothes.push(femaleClothing);
		var femaleDress = new FemaleDress();

		var femaleHeadwear = new Headwear();
		femaleHeadwear.prefab = "app://HimikoHair.smdl";
		femaleCharacterData.headwearList.push(femaleHeadwear);

		femaleCharacterData.skinTone = Color.html("#ffdbac");
		femaleCharacterData.save("user://femaleCharacterData.vchr");

		var FemaleCharacterPrefab = new Prefab();
		FemaleCharacterPrefab.load("basechar://models/FemaleModel.smdl");
		var femaleCharacter = FemaleCharacterPrefab.instance();
		femaleCharacter.hidden = true;
		var rig = femaleCharacter.getComponent(CharacterRig);
		entity.addChild(femaleCharacter);
		rig.onStart();
		rig.loadCharacterData(femaleCharacterData);
	}
}
