package sunaba;
import sunaba.core.Dictionary;
import sunaba.core.ArrayList;

abstract class EntityBaseData extends ScriptableObject {
	public var name: String;
	public var components: ArrayList = new ArrayList();

	public override function getData(): Dictionary {
		var data = super.getData();

		data.set("name", name);
		data.set("components", components);

		return data;
	}

	public override function setData(data: Dictionary): Void {
		super.setData(data);
		name = data.get("name");
		components = data.get("components");
	}
}
