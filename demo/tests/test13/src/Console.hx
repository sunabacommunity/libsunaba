package;
import sunaba.ui.Widget;
import sunaba.ui.RichTextLabel;
import sunaba.ui.LineEdit;
import sunaba.ShellConsole;
import sunaba.core.Callable;
import sunaba.ui.Panel;
import sunaba.ui.VBoxContainer;

class Console extends Widget {
	private var output: RichTextLabel;
	private var input: LineEdit;

	private var console: ShellConsole;


	public  override function init() {
		load("app://Console.suml");
		var txt: String = "";

		output = getNodeT(RichTextLabel, "vbox/control/output");
		output.fitContent = true;
		output.selectionEnabled = true;
		output.contextMenuEnabled = true;
		output.bbcodeEnabled = true;
		var outputColor = output.getThemeColor('default_color');
		var i = getNode("vbox/input");
		if (i == null) {
			trace("Input element not found in ConsoleWidget");
			return;
		}
		input = getNodeT(LineEdit, "vbox/input");
		console = new ShellConsole();
		console.io = io;
		console.print.connect(Callable.fromFunction(function(log: String) {
			txt += log + "\n";
			output.parseBbcode("[code]" + txt + "[/code]");
			output.scrollFollowing = true;
		}));
		input.textSubmitted.connect(Callable.fromFunction(function(text: String) {
			if (text != "") {
				try {
					console.eval(text);
				}
				catch(e) {
					txt = txt + '[color=red]Error: ' + e + '[/color]\n';
					output.parseBbcode('[code]' + txt + '[/code]');
				}
				input.clear();
			}
		}));
		console.addCommand("hello-world", (args) -> {
			console.log("Hello, World!");
			return 0;
		});
		console.addCommand("echo", (args) -> {
			if (args.length > 0) {
				var text = args.join(" ");
				console.log(text);
			} else {
				console.log("Usage: echo <text>");
			}
			return 0;
		});
	}
}
