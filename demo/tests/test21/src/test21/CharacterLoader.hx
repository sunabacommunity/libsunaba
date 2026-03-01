package test21;
import sunaba.Behavior;
import sunaba.spatial.CharacterData;
import sunaba.spatial.FaceTextureData;
import sunaba.Prefab;
import sunaba.spatial.CharacterRig;
import sunaba.core.Color;

class CharacterLoader extends Behavior {
	public override function onStart(){
		var characterData = new CharacterData();
		characterData.faceTexture = new FaceTextureData();
		characterData.faceTexture.load("basechar://data/face_green_xl.ftd");

		characterData.skinTone = Color.html("#ffdbac");
		characterData.save("user://characterData.vchr");

		var maleCharacterPrefab = new Prefab();
		maleCharacterPrefab.load("basechar://models/MaleModel.smdl");
		var maleCharacter = maleCharacterPrefab.instance();
		maleCharacter.hidden = true;
		var rig = maleCharacter.getComponent(CharacterRig);
		entity.addChild(maleCharacter);
		rig.onStart();
		rig.loadCharacterData(characterData);
	}
}
