import sunaba.studio.Plugin;
import test18.CharacterController;
import test18.MyComponent;

class TestPlugin extends Plugin {
    public static function main() {
        new TestPlugin();
    }

    public override function init() {
        editor.pushBehaviorClass(CharacterController);
        editor.pushBehaviorClass(MyComponent);
    }
}
