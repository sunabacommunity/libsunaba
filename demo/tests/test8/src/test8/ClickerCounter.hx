package test8;

import newhaven.ui.Widget;
import newhaven.ui.Label;
import newhaven.ui.CenterContainer;
import newhaven.ui.VBoxContainer;
import newhaven.ui.Button;
import newhaven.ui.Panel;
import newhaven.core.Object;

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
