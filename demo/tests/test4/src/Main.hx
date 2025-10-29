package;

import sunaba.App;
import haxe.Constraints.Function;
import sunaba.core.Callable;
import sunaba.core.ArrayList;
import sunaba.core.Variant;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		var callable: Callable = this.sayHello;
		callable.call(ArrayList.create(["World"]));
	}

    public function sayHello(name: String) {
        Sys.println("Hello, " + name + "!");
    }
}
