package sunaba;
import sunaba.core.Dictionary;
import Type;
import sunaba.core.ArrayList;

class EntityData extends EntityBaseData {
	public var children: Array<EntityBaseData> = new Array();

	public static function fromEntity(entity: Entity) {
		var data = new EntityData();

		data.createFromEntity(entity);

		return data;
	}

	public function createFromEntity(entity: Entity) {
		this.name = entity.name;

		var components = entity.getConponents();
		for (component in components) {
			var compData = component.getData();
			var compDict = new Dictionary();
			compDict.set("data", compData);
			var compClass = Type.getClass(component);
			var compName = Type.getClassName(compClass);
			compDict.set("type", compName);
			this.components.append(compDict);
		}

		for (i in 0...entity.getChildCount()) {
			var child = entity.getChild(i);
			if (child.hidden == true) continue;
			var childData : EntityBaseData;
			if (child.isPrefab()) {
				var prefabPath = new PrefabPath();
				prefabPath.createFromEntity(child);
				childData =  prefabPath;
			}
			else {
				childData = fromEntity(child);
			}
			this.children.push(childData);
		}
	}

	public function toEntity(): Entity {
		var entity = new Entity();
		entity.name = name;
		entity.io = io;

		for (i in 0...components.size()) {
			var compDict:Dictionary = components.get(i);
			var compType: String = compDict.get("type");
			var compData: Dictionary = compDict.get("data");
			var typeClass = Type.resolveClass(compType);
			if (typeClass == null) continue;
			var instance = entity.addComponentNG(cast typeClass);
			if (instance == null) continue;
			var behavior: Behavior = cast instance;
			behavior.setData(compData);
		}

		for (childData in children) {
			var child:Entity;
			if (childData is PrefabPath) {
				var prefab = new Prefab();
				prefab.io = io;
				prefab.load(childData.path);
				child = prefab.instance();
				for (i in 0...prefab.components.size()) {
					var compDict:Dictionary = prefab.components.get(i);
					var compType: String = compDict.get("type");
					var compData: Dictionary = compDict.get("data");
					var typeClass = Type.resolveClass(compType);
					if (typeClass == null) continue;
					var instance = null;//cast typeClass;
					for (comp in child.getConponents()) {
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
				var entityData : EntityData = cast childData;
				child = entityData.toEntity();
			}
			entity.addChild(child);
		}

		return entity;
	}

	public override function getData(): Dictionary {
		var data = super.getData();

		var childrenData = new ArrayList();
		for (child in children) {
			var childData = child.getData();
			childrenData.append(childData);
		}

		data.set("children", childrenData);

		return data;
	}

	public override function setData(data: Dictionary): Void {
		super.setData(data);

		var childrenData: ArrayList = data.get("children");
		for (i in 0...childrenData.size()) {
			var childDict : Dictionary = childrenData.get(i);
			var path = childDict.get("path");
			if (path != "") {
				var prefabPath = new PrefabPath();
				prefabPath.setData(childDict);
				children.push(prefabPath);
			}
			else {
				var childData = new EntityData();
				childData.setData(childDict);
				children.push(childData);
			}
		}
	}
}
