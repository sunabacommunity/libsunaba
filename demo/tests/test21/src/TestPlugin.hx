import sunaba.studio.Plugin;
import test21.CharacterLoader;

class TestPlugin extends Plugin {
    public static function main() {
        new TestPlugin();
    }

    public override function init() {
		editor.pushBehaviorClass(CharacterLoader);
    }
}
