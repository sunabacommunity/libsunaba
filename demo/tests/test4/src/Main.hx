package demo.tests.test4.src;

import newhaven.App;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		
	}

    public function sayHello(name: String) {
        Sys.println("Hello, " + name + "!");
    }
}
