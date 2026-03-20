import sunaba.studio.Plugin;
import test19.CharacterController;
import test26.CharacterModelRig;
import sunaba.audio.AudioSource;

class TestPlugin extends Plugin {
    public static function main() {
        new TestPlugin();
    }

    public override function init() {
        editor.pushBehaviorClass(CharacterController);
		editor.pushBehaviorClass(CharacterModelRig);
    }
}
