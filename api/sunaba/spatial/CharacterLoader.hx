package sunaba.spatial;

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
import sunaba.core.Dictionary;
import sunaba.animation.AnimationPlayer;
import sunaba.core.native.NativeReference;
import sunaba.core.ArrayList;

class CharacterLoader extends Behavior {
	public var path: String;

	private var animPlayer: AnimationPlayer;
	public var animationPlayer(get, default): AnimationPlayer;
	function get_animationPlayer():AnimationPlayer {
		return animPlayer;
	}

	public override function onInit() {
		loaded = false;
	}

	public override function onStart(){
		load();
		loaded = true;
	}

	private var _data: CharacterData = null;

	public var data(get, set): CharacterData;

	function get_data():CharacterData {
		return _data;
	}
	function set_data(value:CharacterData):CharacterData {
		_data = value;
		if (value != null) {
			if (_data.bodyType == BodyType.male) {
				loadCharacterModel(_data, "basechar://models/MaleModel.smdl");
			}
			else if (_data.bodyType == BodyType.female) {
				loadCharacterModel(_data, "basechar://models/FemaleModel.smdl");
			}
		}
		else {
			if (characterEntity != null) {
				characterEntity.destroy();
			}
		}
		return this.data = value;
	}


	public function load() {
		if (path == "") return;
		var data = new CharacterData();
		data.load(path);
		this.data = data;
	}

	public var characterEntity: Entity = null;

	private var loaded: Bool = false;

	private inline function loadCharacterModel(data: CharacterData, modelPath: String) {
		var prefab = new Prefab();
		prefab.load("basechar://models/FemaleModel.smdl");
		if (characterEntity != null) {
			characterEntity.destroy();
		}
		characterEntity = prefab.instance();
		characterEntity.hidden = true;
		var rig = characterEntity.getComponent(CharacterRig);
		entity.addChild(characterEntity);
		rig.onStart();
		rig.loadCharacterData(data);
		animPlayer = characterEntity.getComponent(AnimationPlayer);
		var animationLoader = new NativeReference("res://Engine/BaseAnimationLoader.gd", new ArrayList(), 1);
		var args = new ArrayList();
		args.append(animPlayer.node.native);
		animationLoader.call("loadAnimations", args);

	}

	public override function getData(): Dictionary {
		var data = super.getData();

		data.set("path", path);

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		path = data.get("path", path);
		if (loaded == true) {
			load();
		}
	}
}
