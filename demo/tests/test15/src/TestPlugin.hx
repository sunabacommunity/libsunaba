import sunaba.studio.Plugin;
import myComponents.FreeLook3D;

class TestPlugin extends Plugin {
    public static function main() {
        new TestPlugin();
    }

    public override function init() {
        editor.pushBehaviorClass(FreeLook3D);
    }
}
