import newhaven.App;
import newhaven.SizeFlags;
import newhaven.LayoutPresetMode;
import newhaven.ui.Control;
import newhaven.ui.CenterContainer;
import newhaven.ui.Panel;
import newhaven.ui.Label;
import newhaven.ui.VBoxContainer;
import newhaven.LayoutPreset;

class Main extends App {
    public static function main() {
        new Main();
    }

	public var count: Int = 0;
	public var label: Label;

	public override function init() {
		Sys.println("Hello, World!");

		var control = new Control();

		rootNode.addChild(control);
		control.setAnchorsAndOffsetsPreset(LayoutPreset.fullRect, LayoutPresetMode.keepSize, 0);
		control.sizeFlagsHorizontal = SizeFlags.fill;
		control.sizeFlagsVertical = SizeFlags.fill;

		var panel = new Panel();
		control.addChild(panel);
		panel.setAnchorsAndOffsetsPreset(LayoutPreset.fullRect, LayoutPresetMode.keepSize, 0);
		panel.sizeFlagsHorizontal = SizeFlags.fill;
		panel.sizeFlagsVertical = SizeFlags.fill;
		panel.offsetBottom = -10;
		panel.offsetTop = 10;
		panel.offsetLeft = -10;
		panel.offsetRight = 10;

		var centerContainer = new CenterContainer();
		panel.addChild(centerContainer);
		centerContainer.setAnchorsAndOffsetsPreset(LayoutPreset.fullRect, LayoutPresetMode.keepSize, 0);
		centerContainer.sizeFlagsHorizontal = SizeFlags.fill;
		centerContainer.sizeFlagsVertical = SizeFlags.fill;

		var vboxContainer = new VBoxContainer();

		centerContainer.addChild(vboxContainer);
		vboxContainer.setAnchorsAndOffsetsPreset(LayoutPreset.center, LayoutPresetMode.minsize, 0);
		vboxContainer.sizeFlagsHorizontal = SizeFlags.shrinkBegin;
		vboxContainer.sizeFlagsVertical = SizeFlags.shrinkBegin;

		label = new Label();

		vboxContainer.addChild(label);
		label.text = "Hello, World!";
		label.verticalAlignment = 1;
		label.horizontalAlignment = 1;
	}
}
