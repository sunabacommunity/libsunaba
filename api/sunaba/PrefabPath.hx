package sunaba;
import sunaba.EntityData.EntityData.fromEntity;
import sunaba.core.Dictionary;
import Type;

class PrefabPath extends EntityBaseData {

	public function createFromEntity(entity: Entity) {
		this.name = entity.name;
		this.path = entity.prefabPath;

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
	}
}
