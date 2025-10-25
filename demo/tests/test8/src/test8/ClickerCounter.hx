package test8;

import sunaba.ui.Widget;
import sunaba.ui.Label;
import sunaba.ui.CenterContainer;
import sunaba.ui.VBoxContainer;
import sunaba.ui.Button;
import sunaba.ui.Panel;
import sunaba.core.Object;

class ClickerCounter extends Widget {
	var label: Label;
	var counter: Int = 0;

	public override function init() {
		load("app://ClickerCounter.nxml");
		label = Object.castTo(getNode(
			"centerContainer/vboxContainer/clickCounterLabel"
		), Label);
		if (label.isNull()) {
			throw "Label node not found in ClickerCounter layout";
		}
		var button: Button = Object.castTo(
			getNode("centerContainer/vboxContainer/clickerButton"),
			Button
		);
		button.pressed.connect(() -> {
			onClick();
		});
	}

	function onClick() {
		counter++;
		if (label != null) {
			label.text = "You clicked me " + counter + " times!";
		}
	}
}
