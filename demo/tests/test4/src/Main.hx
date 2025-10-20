package;

import newhaven.App;
import haxe.Constraints.Function;
import newhaven.core.Callable;
import newhaven.core.ArrayList;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		var func: Function = this.sayHello;
		var callable: Callable = func;
		var callArgs1 = new ArrayList();
		callArgs1.append("World");
		callable.call(callArgs1);
	}

    public function sayHello(name: String) {
        Sys.println("Hello, " + name + "!");
    }
}
