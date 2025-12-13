import sunaba.studio.Plugin;
import myComponents.RotateComponent;
import myComponents.FreeLook3D;

class TestPlugin extends Plugin {
    public static function main() {
        new TestPlugin();
    }

    public override function init() {
        trace("Hello, World!");
        trace(editor != null);
        editor.pushBehaviorClass(RotateComponent);
		editor.pushBehaviorClass(FreeLook3D);
    }
}
