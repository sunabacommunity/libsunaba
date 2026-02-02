package sunaba.imgui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.FontFile;
import sunaba.core.TypedArray;
import sunaba.core.ArrayList;
import sunaba.Viewport;
import sunaba.SubViewport;

class ImGuiGDService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('ImGuiGDService');
        }
        return _native;
    }

    public static var joyAxisDeadZone(get, set): Float;
    static function get_joyAxisDeadZone(): Float {
        return getNative().get('JoyAxisDeadZone');
    }
    static function set_joyAxisDeadZone(value: Float): Float {
      getNative().set('JoyAxisDeadZone', value);
        return value;
    }
    public static var scale(get, set): Float;
    static function get_scale(): Float {
        return getNative().get('Scale');
    }
    static function set_scale(value: Float): Float {
      getNative().set('Scale', value);
        return value;
    }
    public static var visible(get, set): Bool;
    static function get_visible(): Bool {
        return getNative().get('Visible');
    }
    static function set_visible(value: Bool): Bool {
      getNative().set('Visible', value);
        return value;
    }


  public static function addFont(fontFile: FontFile, fontSize: Int, ?merge: Bool, ?glyphRanges: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(fontFile.native);
      args.append(fontSize);
      if (merge != null) {
          args.append(merge);
      }
      if (glyphRanges != null) {
          args.append(glyphRanges);
      }
      getNative().call('AddFont', args);
  }
  public static function addFontDefault(): Void {
      var args = new ArrayList();
      getNative().call('AddFontDefault', args);
  }
  public static function connect(callable: Variant): Void {
      var args = new ArrayList();
      args.append(callable);
      getNative().call('Connect', args);
  }
  public static function getFontPtrs(): TypedArray<Int> {
      var args = new ArrayList();
      return getNative().call('GetFontPtrs', args);
  }
  public static function getImGuiPtrs(version: String, ioSize: Int, vertSize: Int, idxSize: Int, charSize: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(version);
      args.append(ioSize);
      args.append(vertSize);
      args.append(idxSize);
      args.append(charSize);
      return getNative().call('GetImGuiPtrs', args);
  }
  public static function rebuildFontAtlas(): Void {
      var args = new ArrayList();
      getNative().call('RebuildFontAtlas', args);
  }
  public static function resetFonts(): Void {
      var args = new ArrayList();
      getNative().call('ResetFonts', args);
  }
  public static function setIniFilename(filename: String): Void {
      var args = new ArrayList();
      args.append(filename);
      getNative().call('SetIniFilename', args);
  }
  public static function setMainViewport(vp: Viewport): Void {
      var args = new ArrayList();
      args.append(vp.native);
      getNative().call('SetMainViewport', args);
  }
  public static function subViewport(svp: SubViewport): Bool {
      var args = new ArrayList();
      args.append(svp.native);
      return getNative().call('SubViewport', args);
  }
  public static function toolInit(): Bool {
      var args = new ArrayList();
      return getNative().call('ToolInit', args);
  }
}
