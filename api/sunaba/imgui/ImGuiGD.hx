package sunaba.imgui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.FontFile;
import sunaba.core.TypedArray;
import sunaba.Viewport;
import sunaba.SubViewport;

class ImGuiGD extends Object {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('ImGuiGD');
        }
        this.native = _native;
    }

    public var joyAxisDeadZone(get, set): Float;
    function get_joyAxisDeadZone(): Float {
        return native.get('JoyAxisDeadZone');
    }
    function set_joyAxisDeadZone(value: Float): Float {
      native.set('JoyAxisDeadZone', value);
        return value;
    }
    public var scale(get, set): Float;
    function get_scale(): Float {
        return native.get('Scale');
    }
    function set_scale(value: Float): Float {
      native.set('Scale', value);
        return value;
    }
    public var visible(get, set): Bool;
    function get_visible(): Bool {
        return native.get('Visible');
    }
    function set_visible(value: Bool): Bool {
      native.set('Visible', value);
        return value;
    }


  public function addFont(fontFile: FontFile, fontSize: Int, ?merge: Bool, ?glyphRanges: TypedArray<Int>): Void {
      var args = new ArrayList();
      args.append(fontFile.native);
      args.append(fontSize);
      if (merge != null) {
          args.append(merge);
      }
      if (glyphRanges != null) {
          args.append(glyphRanges);
      }
      native.call('AddFont', args);
  }
  public function addFontDefault(): Void {
      var args = new ArrayList();
      native.call('AddFontDefault', args);
  }
  public function connect(callable: Variant): Void {
      var args = new ArrayList();
      args.append(callable);
      native.call('Connect', args);
  }
  public function getFontPtrs(): TypedArray<Int> {
      var args = new ArrayList();
      return native.call('GetFontPtrs', args);
  }
  public function getImGuiPtrs(version: String, ioSize: Int, vertSize: Int, idxSize: Int, charSize: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(version);
      args.append(ioSize);
      args.append(vertSize);
      args.append(idxSize);
      args.append(charSize);
      return native.call('GetImGuiPtrs', args);
  }
  public function rebuildFontAtlas(): Void {
      var args = new ArrayList();
      native.call('RebuildFontAtlas', args);
  }
  public function resetFonts(): Void {
      var args = new ArrayList();
      native.call('ResetFonts', args);
  }
  public function setIniFilename(filename: String): Void {
      var args = new ArrayList();
      args.append(filename);
      native.call('SetIniFilename', args);
  }
  public function setMainViewport(vp: Viewport): Void {
      var args = new ArrayList();
      args.append(vp.native);
      native.call('SetMainViewport', args);
  }
  public function subViewport(svp: SubViewport): Bool {
      var args = new ArrayList();
      args.append(svp.native);
      return native.call('SubViewport', args);
  }
  public function toolInit(): Bool {
      var args = new ArrayList();
      return native.call('ToolInit', args);
  }
}
