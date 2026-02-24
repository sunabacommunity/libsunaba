package sunaba;
import sunaba.core.Dictionary;
import sunaba.core.ArrayList;
import sunaba.core.Variant;
import Type;

class SceneFile extends ScriptableObject {
	public var entities: Array<EntityBaseData> = new Array();

	public var type: SceneType = SceneType.spatial;

	public static function create(scene: SceneRoot, type: SceneType = SceneType.spatial) {
		var data = new SceneFile();

		for (i in 0...scene.getEntityCount()) {
			var entity = scene.getEntity(i);
			var entityData: EntityBaseData;
			if (entity.isPrefab()) {
				var prefabPath = new PrefabPath();
				prefabPath.createFromEntity(entity);
				entityData = prefabPath;
			}
			else {
				entityData = EntityData.fromEntity(entity);
			}
			data.entities.push(entityData);
		}

		return data;
	}

	public function instance(): SceneRoot {
		var scene = new SceneRoot();
		scene.io = io;

		for (entData in entities) {
			var entity: Entity;
			if (entData is PrefabPath) {
				var prefab = new Prefab();
				prefab.io = io;
				prefab.load(entData.path);
				entity = prefab.instance();
				for (i in 0...prefab.components.size()) {
					var compDict:Dictionary = prefab.components.get(i);
					var compType: String = compDict.get("type");
					var compData: Dictionary = compDict.get("data");
					var typeClass = Type.resolveClass(compType);
					if (typeClass == null) continue;
					var instance = null;//cast typeClass;
					for (comp in entity.getConponents()) {
						if (Type.getClass(comp) == typeClass) {
							instance = comp;
							break;
						}
					}
					if (instance == null) continue;
					var behavior: Behavior = cast instance;
					behavior.setData(compData);
				}
			}
			else {
				var entityData: EntityData = cast entData;
				entity = entityData.toEntity();
			}
			scene.addEntity(entity);
		}

		return scene;
	}

	public override function getData(): Dictionary {
		var data = super.getData();

		data.set("sceneType", Variant.fromInt(type));

		var entArray = new ArrayList();
		for (entity in entities) {
			var entData = entity.getData();
			entArray.append(entData);
		}
		data.set("entities", entArray);

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		type = data.get("sceneType").toInt();

		var entArray: ArrayList = data.get("entities");

		for (i in 0...entArray.size()) {
			var entData: Dictionary = entArray.get(i);
			var path = entData.get("path");
			if (path != "") {
				var prefabPath = new PrefabPath();
				prefabPath.setData(entData);
				entities.push(prefabPath);
			} else {
				var entity = new EntityData();
				entity.setData(entData);
				entities.push(entity);
			}

		}
	}
}
