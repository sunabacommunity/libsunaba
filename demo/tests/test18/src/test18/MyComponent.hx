package test18;

import sunaba.core.Dictionary;
import sunaba.Behavior;

class MyComponent extends Behavior {
    public var printname: String;

    public override function getData():Dictionary {
        var dict = super.getData();

        dict.set("name", printname);

        return dict;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        printname = data.get("name");
    }

    public override function onStart() {
        trace("Hello, " + printname + "!");
    }
}