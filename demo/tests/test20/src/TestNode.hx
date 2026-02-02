package;

import sunaba.Node;
import sunaba.ImGui;

class TestNode extends Node {
	public function new() {
		super();
		initializeProxy();
	}

	public override function onProcess(deltaTime) {
		//ImGuiGD.setMainViewport(getViewport());
		ImGui.begin("My window");
		ImGui.text("Hello, from Haxe!");
		ImGui.end();
	}
}
