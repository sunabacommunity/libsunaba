package;

import sunaba.SubViewport;
import sunaba.Node;
import sunaba.ImGui;
import sunaba.imgui.ImGuiGDService;

class TestNode extends Node {
	public function new() {
		super();
		initializeProxy();
	}

	public override function onReady() {
		ImGuiGDService.setMainViewport(getViewport());
	}

	public override function onProcess(deltaTime) {
		
		ImGui.begin("My window");
		ImGui.text("Hello, from Haxe!");
		ImGui.end();
	}
}
