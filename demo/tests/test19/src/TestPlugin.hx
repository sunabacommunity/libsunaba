import sunaba.studio.Plugin;
import test19.CharacterController;

class TestPlugin extends Plugin {
    public static function main() {
        new TestPlugin();
    }

    public override function init() {
        editor.pushBehaviorClass(CharacterController);
    }
}
