package;

import newhaven.App;
import haxe.Constraints.Function;
import newhaven.core.Callable;
import newhaven.core.ArrayList;
import newhaven.core.Variant;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		var func: Function = this.sayHello;
		var callable: Callable = func;
		callable.call(args(["World"]));
	}

    public function sayHello(name: String) {
        Sys.println("Hello, " + name + "!");
    }

    function args(args: Array<Variant>): ArrayList {
		var newArgs = new ArrayList();
		for (arg in args) {
			newArgs.append(arg);
		}
		return newArgs;
	}
}
