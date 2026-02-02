package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.core.Vector2;
import sunaba.imgui.ImGuiMultiSelectIOPtr;
import sunaba.core.Color;
import sunaba.imgui.ImGuiWindowClassPtr;
import sunaba.imgui.ImDrawListPtr;
import sunaba.imgui.ImGuiIOPtr;
import sunaba.imgui.ImGuiStylePtr;
import sunaba.imgui.ImGuiListClipperPtr;
import sunaba.imgui.ImGuiTableSortSpecsPtr;

class ImGui extends Object {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('ImGui');
        }
        this.native = _native;
    }



  public static function alignTextToFramePadding(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'AlignTextToFramePadding', args);
  }
  public static function arrowButton(strId: String, dir: Int): Bool {
      var args = new ArrayList();
      args.append(strId);
      args.append(dir);
      return NativeObject.callStatic('ImGui', 'ArrowButton', args);
  }
  public static function begin(name: String, ?pOpen: ArrayList, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(name);
      if (pOpen != null) {
          args.append(pOpen);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'Begin', args);
  }
  public static function beginChild(strId: String, ?size: Vector2, ?childFlags: Int, ?windowFlags: Int): Bool {
      var args = new ArrayList();
      args.append(strId);
      if (size != null) {
          args.append(size);
      }
      if (childFlags != null) {
          args.append(childFlags);
      }
      if (windowFlags != null) {
          args.append(windowFlags);
      }
      return NativeObject.callStatic('ImGui', 'BeginChild', args);
  }
  public static function beginChildId(id: Int, ?size: Vector2, ?childFlags: Int, ?windowFlags: Int): Bool {
      var args = new ArrayList();
      args.append(id);
      if (size != null) {
          args.append(size);
      }
      if (childFlags != null) {
          args.append(childFlags);
      }
      if (windowFlags != null) {
          args.append(windowFlags);
      }
      return NativeObject.callStatic('ImGui', 'BeginChildID', args);
  }
  public static function beginCombo(label: String, previewValue: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(previewValue);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'BeginCombo', args);
  }
  public static function beginDisabled(?disabled: Bool): Void {
      var args = new ArrayList();
      if (disabled != null) {
          args.append(disabled);
      }
      NativeObject.callStatic('ImGui', 'BeginDisabled', args);
  }
  public static function beginDragDropSource(?flags: Int): Bool {
      var args = new ArrayList();
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'BeginDragDropSource', args);
  }
  public static function beginDragDropTarget(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'BeginDragDropTarget', args);
  }
  public static function beginGroup(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'BeginGroup', args);
  }
  public static function beginItemTooltip(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'BeginItemTooltip', args);
  }
  public static function beginListBox(label: String, ?size: Vector2): Bool {
      var args = new ArrayList();
      args.append(label);
      if (size != null) {
          args.append(size);
      }
      return NativeObject.callStatic('ImGui', 'BeginListBox', args);
  }
  public static function beginMainMenuBar(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'BeginMainMenuBar', args);
  }
  public static function beginMenu(label: String): Bool {
      var args = new ArrayList();
      args.append(label);
      return NativeObject.callStatic('ImGui', 'BeginMenu', args);
  }
  public static function beginMenuBar(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'BeginMenuBar', args);
  }
  public static function beginMenuEx(label: String, ?enabled: Bool): Bool {
      var args = new ArrayList();
      args.append(label);
      if (enabled != null) {
          args.append(enabled);
      }
      return NativeObject.callStatic('ImGui', 'BeginMenuEx', args);
  }
  public static function beginMultiSelect(flags: Int): ImGuiMultiSelectIOPtr {
      var args = new ArrayList();
      args.append(flags);
      var ref: NativeReference = NativeObject.callStatic('ImGui', 'BeginMultiSelect', args);
      return new ImGuiMultiSelectIOPtr(ref);
  }
  public static function beginMultiSelectEx(flags: Int, ?selectionSize: Int, ?itemsCount: Int): ImGuiMultiSelectIOPtr {
      var args = new ArrayList();
      args.append(flags);
      if (selectionSize != null) {
          args.append(selectionSize);
      }
      if (itemsCount != null) {
          args.append(itemsCount);
      }
      var ref: NativeReference = NativeObject.callStatic('ImGui', 'BeginMultiSelectEx', args);
      return new ImGuiMultiSelectIOPtr(ref);
  }
  public static function beginPopup(strId: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(strId);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'BeginPopup', args);
  }
  public static function beginPopupContextItem(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'BeginPopupContextItem', args);
  }
  public static function beginPopupContextItemEx(?strId: String, ?popupFlags: Int): Bool {
      var args = new ArrayList();
      if (strId != null) {
          args.append(strId);
      }
      if (popupFlags != null) {
          args.append(popupFlags);
      }
      return NativeObject.callStatic('ImGui', 'BeginPopupContextItemEx', args);
  }
  public static function beginPopupContextVoid(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'BeginPopupContextVoid', args);
  }
  public static function beginPopupContextVoidEx(?strId: String, ?popupFlags: Int): Bool {
      var args = new ArrayList();
      if (strId != null) {
          args.append(strId);
      }
      if (popupFlags != null) {
          args.append(popupFlags);
      }
      return NativeObject.callStatic('ImGui', 'BeginPopupContextVoidEx', args);
  }
  public static function beginPopupContextWindow(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'BeginPopupContextWindow', args);
  }
  public static function beginPopupContextWindowEx(?strId: String, ?popupFlags: Int): Bool {
      var args = new ArrayList();
      if (strId != null) {
          args.append(strId);
      }
      if (popupFlags != null) {
          args.append(popupFlags);
      }
      return NativeObject.callStatic('ImGui', 'BeginPopupContextWindowEx', args);
  }
  public static function beginPopupModal(name: String, ?pOpen: ArrayList, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(name);
      if (pOpen != null) {
          args.append(pOpen);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'BeginPopupModal', args);
  }
  public static function beginTabBar(strId: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(strId);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'BeginTabBar', args);
  }
  public static function beginTabItem(label: String, ?pOpen: ArrayList, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      if (pOpen != null) {
          args.append(pOpen);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'BeginTabItem', args);
  }
  public static function beginTable(strId: String, columns: Int, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(strId);
      args.append(columns);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'BeginTable', args);
  }
  public static function beginTableEx(strId: String, columns: Int, ?flags: Int, ?outerSize: Vector2, ?innerWidth: Float): Bool {
      var args = new ArrayList();
      args.append(strId);
      args.append(columns);
      if (flags != null) {
          args.append(flags);
      }
      if (outerSize != null) {
          args.append(outerSize);
      }
      if (innerWidth != null) {
          args.append(innerWidth);
      }
      return NativeObject.callStatic('ImGui', 'BeginTableEx', args);
  }
  public static function beginTooltip(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'BeginTooltip', args);
  }
  public static function bullet(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'Bullet', args);
  }
  public static function bulletText(fmt: String): Void {
      var args = new ArrayList();
      args.append(fmt);
      NativeObject.callStatic('ImGui', 'BulletText', args);
  }
  public static function button(label: String): Bool {
      var args = new ArrayList();
      args.append(label);
      return NativeObject.callStatic('ImGui', 'Button', args);
  }
  public static function buttonEx(label: String, ?size: Vector2): Bool {
      var args = new ArrayList();
      args.append(label);
      if (size != null) {
          args.append(size);
      }
      return NativeObject.callStatic('ImGui', 'ButtonEx', args);
  }
  public static function calcItemWidth(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'CalcItemWidth', args);
  }
  public static function calcTextSize(text: String): Vector2 {
      var args = new ArrayList();
      args.append(text);
      return NativeObject.callStatic('ImGui', 'CalcTextSize', args);
  }
  public static function calcTextSizeEx(text: String, ?textEnd: String, ?hideTextAfterDoubleHash: Bool, ?wrapWidth: Float): Vector2 {
      var args = new ArrayList();
      args.append(text);
      if (textEnd != null) {
          args.append(textEnd);
      }
      if (hideTextAfterDoubleHash != null) {
          args.append(hideTextAfterDoubleHash);
      }
      if (wrapWidth != null) {
          args.append(wrapWidth);
      }
      return NativeObject.callStatic('ImGui', 'CalcTextSizeEx', args);
  }
  public static function checkbox(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'Checkbox', args);
  }
  public static function checkboxFlagsIntPtr(label: String, flags: ArrayList, flagsValue: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(flags);
      args.append(flagsValue);
      return NativeObject.callStatic('ImGui', 'CheckboxFlagsIntPtr', args);
  }
  public static function closeCurrentPopup(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'CloseCurrentPopup', args);
  }
  public static function collapsingHeader(label: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'CollapsingHeader', args);
  }
  public static function collapsingHeaderBoolPtr(label: String, pVisible: ArrayList, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(pVisible);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'CollapsingHeaderBoolPtr', args);
  }
  public static function colorButton(descId: String, col: Color, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(descId);
      args.append(col);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'ColorButton', args);
  }
  public static function colorButtonEx(descId: String, col: Color, ?flags: Int, ?size: Vector2): Bool {
      var args = new ArrayList();
      args.append(descId);
      args.append(col);
      if (flags != null) {
          args.append(flags);
      }
      if (size != null) {
          args.append(size);
      }
      return NativeObject.callStatic('ImGui', 'ColorButtonEx', args);
  }
  public static function colorEdit3(label: String, col: ArrayList, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(col);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'ColorEdit3', args);
  }
  public static function colorEdit4(label: String, col: ArrayList, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(col);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'ColorEdit4', args);
  }
  public static function colorPicker3(label: String, col: ArrayList, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(col);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'ColorPicker3', args);
  }
  public static function colorPicker4(label: String, col: ArrayList, ?flags: Int, ?refCol: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(col);
      if (flags != null) {
          args.append(flags);
      }
      if (refCol != null) {
          args.append(refCol);
      }
      return NativeObject.callStatic('ImGui', 'ColorPicker4', args);
  }
  public static function columns(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'Columns', args);
  }
  public static function columnsEx(?count: Int, ?id: String, ?borders: Bool): Void {
      var args = new ArrayList();
      if (count != null) {
          args.append(count);
      }
      if (id != null) {
          args.append(id);
      }
      if (borders != null) {
          args.append(borders);
      }
      NativeObject.callStatic('ImGui', 'ColumnsEx', args);
  }
  public static function combo(label: String, currentItem: ArrayList, itemsSeparatedByZeros: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(currentItem);
      args.append(itemsSeparatedByZeros);
      return NativeObject.callStatic('ImGui', 'Combo', args);
  }
  public static function comboChar(label: String, currentItem: ArrayList, items: ArrayList, itemsCount: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(currentItem);
      args.append(items);
      args.append(itemsCount);
      return NativeObject.callStatic('ImGui', 'ComboChar', args);
  }
  public static function comboCharEx(label: String, currentItem: ArrayList, items: ArrayList, itemsCount: Int, ?popupMaxHeightInItems: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(currentItem);
      args.append(items);
      args.append(itemsCount);
      if (popupMaxHeightInItems != null) {
          args.append(popupMaxHeightInItems);
      }
      return NativeObject.callStatic('ImGui', 'ComboCharEx', args);
  }
  public static function comboEx(label: String, currentItem: ArrayList, itemsSeparatedByZeros: ArrayList, ?popupMaxHeightInItems: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(currentItem);
      args.append(itemsSeparatedByZeros);
      if (popupMaxHeightInItems != null) {
          args.append(popupMaxHeightInItems);
      }
      return NativeObject.callStatic('ImGui', 'ComboEx', args);
  }
  public static function debugCheckVersionAndDataLayout(versionStr: String, szIo: Int, szStyle: Int, szVec2: Int, szVec4: Int, szDrawvert: Int, szDrawidx: Int): Bool {
      var args = new ArrayList();
      args.append(versionStr);
      args.append(szIo);
      args.append(szStyle);
      args.append(szVec2);
      args.append(szVec4);
      args.append(szDrawvert);
      args.append(szDrawidx);
      return NativeObject.callStatic('ImGui', 'DebugCheckVersionAndDataLayout', args);
  }
  public static function debugFlashStyleColor(idx: Int): Void {
      var args = new ArrayList();
      args.append(idx);
      NativeObject.callStatic('ImGui', 'DebugFlashStyleColor', args);
  }
  public static function debugLog(fmt: String): Void {
      var args = new ArrayList();
      args.append(fmt);
      NativeObject.callStatic('ImGui', 'DebugLog', args);
  }
  public static function debugStartItemPicker(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'DebugStartItemPicker', args);
  }
  public static function debugTextEncoding(text: String): Void {
      var args = new ArrayList();
      args.append(text);
      NativeObject.callStatic('ImGui', 'DebugTextEncoding', args);
  }
  public static function dockSpace(dockspaceId: Int): Int {
      var args = new ArrayList();
      args.append(dockspaceId);
      return NativeObject.callStatic('ImGui', 'DockSpace', args);
  }
  public static function dockSpaceEx(dockspaceId: Int, ?size: Vector2, ?flags: Int, ?windowClass: ImGuiWindowClassPtr): Int {
      var args = new ArrayList();
      args.append(dockspaceId);
      if (size != null) {
          args.append(size);
      }
      if (flags != null) {
          args.append(flags);
      }
      if (windowClass != null) {
          args.append(windowClass.native);
      }
      return NativeObject.callStatic('ImGui', 'DockSpaceEx', args);
  }
  public static function dockSpaceOverViewport(): Int {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'DockSpaceOverViewport', args);
  }
  public static function dragFloat(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'DragFloat', args);
  }
  public static function dragFloat2(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'DragFloat2', args);
  }
  public static function dragFloat2Ex(label: String, v: ArrayList, ?vSpeed: Float, ?vMin: Float, ?vMax: Float, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (vSpeed != null) {
          args.append(vSpeed);
      }
      if (vMin != null) {
          args.append(vMin);
      }
      if (vMax != null) {
          args.append(vMax);
      }
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'DragFloat2Ex', args);
  }
  public static function dragFloat3(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'DragFloat3', args);
  }
  public static function dragFloat3Ex(label: String, v: ArrayList, ?vSpeed: Float, ?vMin: Float, ?vMax: Float, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (vSpeed != null) {
          args.append(vSpeed);
      }
      if (vMin != null) {
          args.append(vMin);
      }
      if (vMax != null) {
          args.append(vMax);
      }
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'DragFloat3Ex', args);
  }
  public static function dragFloat4(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'DragFloat4', args);
  }
  public static function dragFloat4Ex(label: String, v: ArrayList, ?vSpeed: Float, ?vMin: Float, ?vMax: Float, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (vSpeed != null) {
          args.append(vSpeed);
      }
      if (vMin != null) {
          args.append(vMin);
      }
      if (vMax != null) {
          args.append(vMax);
      }
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'DragFloat4Ex', args);
  }
  public static function dragFloatEx(label: String, v: ArrayList, ?vSpeed: Float, ?vMin: Float, ?vMax: Float, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (vSpeed != null) {
          args.append(vSpeed);
      }
      if (vMin != null) {
          args.append(vMin);
      }
      if (vMax != null) {
          args.append(vMax);
      }
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'DragFloatEx', args);
  }
  public static function dragFloatRange2(label: String, vCurrentMin: ArrayList, vCurrentMax: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(vCurrentMin);
      args.append(vCurrentMax);
      return NativeObject.callStatic('ImGui', 'DragFloatRange2', args);
  }
  public static function dragFloatRange2Ex(label: String, vCurrentMin: ArrayList, vCurrentMax: ArrayList, ?vSpeed: Float, ?vMin: Float, ?vMax: Float, ?format: String, ?formatMax: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(vCurrentMin);
      args.append(vCurrentMax);
      if (vSpeed != null) {
          args.append(vSpeed);
      }
      if (vMin != null) {
          args.append(vMin);
      }
      if (vMax != null) {
          args.append(vMax);
      }
      if (format != null) {
          args.append(format);
      }
      if (formatMax != null) {
          args.append(formatMax);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'DragFloatRange2Ex', args);
  }
  public static function dragInt(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'DragInt', args);
  }
  public static function dragInt2(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'DragInt2', args);
  }
  public static function dragInt2Ex(label: String, v: ArrayList, ?vSpeed: Float, ?vMin: Int, ?vMax: Int, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (vSpeed != null) {
          args.append(vSpeed);
      }
      if (vMin != null) {
          args.append(vMin);
      }
      if (vMax != null) {
          args.append(vMax);
      }
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'DragInt2Ex', args);
  }
  public static function dragInt3(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'DragInt3', args);
  }
  public static function dragInt3Ex(label: String, v: ArrayList, ?vSpeed: Float, ?vMin: Int, ?vMax: Int, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (vSpeed != null) {
          args.append(vSpeed);
      }
      if (vMin != null) {
          args.append(vMin);
      }
      if (vMax != null) {
          args.append(vMax);
      }
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'DragInt3Ex', args);
  }
  public static function dragInt4(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'DragInt4', args);
  }
  public static function dragInt4Ex(label: String, v: ArrayList, ?vSpeed: Float, ?vMin: Int, ?vMax: Int, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (vSpeed != null) {
          args.append(vSpeed);
      }
      if (vMin != null) {
          args.append(vMin);
      }
      if (vMax != null) {
          args.append(vMax);
      }
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'DragInt4Ex', args);
  }
  public static function dragIntEx(label: String, v: ArrayList, ?vSpeed: Float, ?vMin: Int, ?vMax: Int, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (vSpeed != null) {
          args.append(vSpeed);
      }
      if (vMin != null) {
          args.append(vMin);
      }
      if (vMax != null) {
          args.append(vMax);
      }
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'DragIntEx', args);
  }
  public static function dragIntRange2(label: String, vCurrentMin: ArrayList, vCurrentMax: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(vCurrentMin);
      args.append(vCurrentMax);
      return NativeObject.callStatic('ImGui', 'DragIntRange2', args);
  }
  public static function dragIntRange2Ex(label: String, vCurrentMin: ArrayList, vCurrentMax: ArrayList, ?vSpeed: Float, ?vMin: Int, ?vMax: Int, ?format: String, ?formatMax: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(vCurrentMin);
      args.append(vCurrentMax);
      if (vSpeed != null) {
          args.append(vSpeed);
      }
      if (vMin != null) {
          args.append(vMin);
      }
      if (vMax != null) {
          args.append(vMax);
      }
      if (format != null) {
          args.append(format);
      }
      if (formatMax != null) {
          args.append(formatMax);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'DragIntRange2Ex', args);
  }
  public static function dummy(size: Vector2): Void {
      var args = new ArrayList();
      args.append(size);
      NativeObject.callStatic('ImGui', 'Dummy', args);
  }
  public static function end(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'End', args);
  }
  public static function endChild(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndChild', args);
  }
  public static function endCombo(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndCombo', args);
  }
  public static function endDisabled(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndDisabled', args);
  }
  public static function endDragDropSource(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndDragDropSource', args);
  }
  public static function endDragDropTarget(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndDragDropTarget', args);
  }
  public static function endGroup(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndGroup', args);
  }
  public static function endListBox(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndListBox', args);
  }
  public static function endMainMenuBar(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndMainMenuBar', args);
  }
  public static function endMenu(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndMenu', args);
  }
  public static function endMenuBar(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndMenuBar', args);
  }
  public static function endMultiSelect(): ImGuiMultiSelectIOPtr {
      var args = new ArrayList();
      var ref: NativeReference = NativeObject.callStatic('ImGui', 'EndMultiSelect', args);
      return new ImGuiMultiSelectIOPtr(ref);
  }
  public static function endPopup(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndPopup', args);
  }
  public static function endTabBar(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndTabBar', args);
  }
  public static function endTabItem(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndTabItem', args);
  }
  public static function endTable(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndTable', args);
  }
  public static function endTooltip(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'EndTooltip', args);
  }
  public static function getBackgroundDrawList(): ImDrawListPtr {
      var args = new ArrayList();
      var ref: NativeReference = NativeObject.callStatic('ImGui', 'GetBackgroundDrawList', args);
      return new ImDrawListPtr(ref);
  }
  public static function getClipboardText(): String {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetClipboardText', args);
  }
  public static function getColumnIndex(): Int {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetColumnIndex', args);
  }
  public static function getColumnOffset(?columnIndex: Int): Float {
      var args = new ArrayList();
      if (columnIndex != null) {
          args.append(columnIndex);
      }
      return NativeObject.callStatic('ImGui', 'GetColumnOffset', args);
  }
  public static function getColumnWidth(?columnIndex: Int): Float {
      var args = new ArrayList();
      if (columnIndex != null) {
          args.append(columnIndex);
      }
      return NativeObject.callStatic('ImGui', 'GetColumnWidth', args);
  }
  public static function getColumnsCount(): Int {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetColumnsCount', args);
  }
  public static function getContentRegionAvail(): Vector2 {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetContentRegionAvail', args);
  }
  public static function getCursorPos(): Vector2 {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetCursorPos', args);
  }
  public static function getCursorPosX(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetCursorPosX', args);
  }
  public static function getCursorPosY(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetCursorPosY', args);
  }
  public static function getCursorScreenPos(): Vector2 {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetCursorScreenPos', args);
  }
  public static function getCursorStartPos(): Vector2 {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetCursorStartPos', args);
  }
  public static function getFont(): Int {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetFont', args);
  }
  public static function getFontSize(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetFontSize', args);
  }
  public static function getFontTexUvWhitePixel(): Vector2 {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetFontTexUvWhitePixel', args);
  }
  public static function getForegroundDrawList(): ImDrawListPtr {
      var args = new ArrayList();
      var ref: NativeReference = NativeObject.callStatic('ImGui', 'GetForegroundDrawList', args);
      return new ImDrawListPtr(ref);
  }
  public static function getFrameCount(): Int {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetFrameCount', args);
  }
  public static function getFrameHeight(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetFrameHeight', args);
  }
  public static function getFrameHeightWithSpacing(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetFrameHeightWithSpacing', args);
  }
  public static function getId(strId: String): Int {
      var args = new ArrayList();
      args.append(strId);
      return NativeObject.callStatic('ImGui', 'GetID', args);
  }
  public static function getIdInt(intId: Int): Int {
      var args = new ArrayList();
      args.append(intId);
      return NativeObject.callStatic('ImGui', 'GetIDInt', args);
  }
  public static function getIo(): ImGuiIOPtr {
      var args = new ArrayList();
      var ref: NativeReference = NativeObject.callStatic('ImGui', 'GetIO', args);
      return new ImGuiIOPtr(ref);
  }
  public static function getItemId(): Int {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetItemID', args);
  }
  public static function getItemRectMax(): Vector2 {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetItemRectMax', args);
  }
  public static function getItemRectMin(): Vector2 {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetItemRectMin', args);
  }
  public static function getItemRectSize(): Vector2 {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetItemRectSize', args);
  }
  public static function getKeyName(key: Int): String {
      var args = new ArrayList();
      args.append(key);
      return NativeObject.callStatic('ImGui', 'GetKeyName', args);
  }
  public static function getKeyPressedAmount(key: Int, repeatDelay: Float, rate: Float): Int {
      var args = new ArrayList();
      args.append(key);
      args.append(repeatDelay);
      args.append(rate);
      return NativeObject.callStatic('ImGui', 'GetKeyPressedAmount', args);
  }
  public static function getMouseClickedCount(button: Int): Int {
      var args = new ArrayList();
      args.append(button);
      return NativeObject.callStatic('ImGui', 'GetMouseClickedCount', args);
  }
  public static function getMouseCursor(): Int {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetMouseCursor', args);
  }
  public static function getMouseDragDelta(?button: Int, ?lockThreshold: Float): Vector2 {
      var args = new ArrayList();
      if (button != null) {
          args.append(button);
      }
      if (lockThreshold != null) {
          args.append(lockThreshold);
      }
      return NativeObject.callStatic('ImGui', 'GetMouseDragDelta', args);
  }
  public static function getMousePos(): Vector2 {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetMousePos', args);
  }
  public static function getMousePosOnOpeningCurrentPopup(): Vector2 {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetMousePosOnOpeningCurrentPopup', args);
  }
  public static function getScrollMaxX(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetScrollMaxX', args);
  }
  public static function getScrollMaxY(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetScrollMaxY', args);
  }
  public static function getScrollX(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetScrollX', args);
  }
  public static function getScrollY(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetScrollY', args);
  }
  public static function getStyle(): ImGuiStylePtr {
      var args = new ArrayList();
      var ref: NativeReference = NativeObject.callStatic('ImGui', 'GetStyle', args);
      return new ImGuiStylePtr(ref);
  }
  public static function getStyleColorName(idx: Int): String {
      var args = new ArrayList();
      args.append(idx);
      return NativeObject.callStatic('ImGui', 'GetStyleColorName', args);
  }
  public static function getTextLineHeight(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetTextLineHeight', args);
  }
  public static function getTextLineHeightWithSpacing(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetTextLineHeightWithSpacing', args);
  }
  public static function getTime(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetTime', args);
  }
  public static function getTreeNodeToLabelSpacing(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetTreeNodeToLabelSpacing', args);
  }
  public static function getVersion(): String {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetVersion', args);
  }
  public static function getWindowDockId(): Int {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetWindowDockID', args);
  }
  public static function getWindowDpiScale(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetWindowDpiScale', args);
  }
  public static function getWindowDrawList(): ImDrawListPtr {
      var args = new ArrayList();
      var ref: NativeReference = NativeObject.callStatic('ImGui', 'GetWindowDrawList', args);
      return new ImDrawListPtr(ref);
  }
  public static function getWindowHeight(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetWindowHeight', args);
  }
  public static function getWindowPos(): Vector2 {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetWindowPos', args);
  }
  public static function getWindowSize(): Vector2 {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetWindowSize', args);
  }
  public static function getWindowWidth(): Float {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'GetWindowWidth', args);
  }
  public static function imDrawListAddBezierCubic(self: ImDrawListPtr, p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, col: Color, thickness: Float, ?numSegments: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(p1);
      args.append(p2);
      args.append(p3);
      args.append(p4);
      args.append(col);
      args.append(thickness);
      if (numSegments != null) {
          args.append(numSegments);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddBezierCubic', args);
  }
  public static function imDrawListAddBezierQuadratic(self: ImDrawListPtr, p1: Vector2, p2: Vector2, p3: Vector2, col: Color, thickness: Float, ?numSegments: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(p1);
      args.append(p2);
      args.append(p3);
      args.append(col);
      args.append(thickness);
      if (numSegments != null) {
          args.append(numSegments);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddBezierQuadratic', args);
  }
  public static function imDrawListAddCircle(self: ImDrawListPtr, center: Vector2, radius: Float, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddCircle', args);
  }
  public static function imDrawListAddCircleEx(self: ImDrawListPtr, center: Vector2, radius: Float, col: Color, ?numSegments: Int, ?thickness: Float): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(col);
      if (numSegments != null) {
          args.append(numSegments);
      }
      if (thickness != null) {
          args.append(thickness);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddCircleEx', args);
  }
  public static function imDrawListAddCircleFilled(self: ImDrawListPtr, center: Vector2, radius: Float, col: Color, ?numSegments: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(col);
      if (numSegments != null) {
          args.append(numSegments);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddCircleFilled', args);
  }
  public static function imDrawListAddDrawCmd(self: ImDrawListPtr): Void {
      var args = new ArrayList();
      args.append(self.native);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddDrawCmd', args);
  }
  public static function imDrawListAddEllipse(self: ImDrawListPtr, center: Vector2, radius: Vector2, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddEllipse', args);
  }
  public static function imDrawListAddEllipseEx(self: ImDrawListPtr, center: Vector2, radius: Vector2, col: Color, ?rot: Float, ?numSegments: Int, ?thickness: Float): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(col);
      if (rot != null) {
          args.append(rot);
      }
      if (numSegments != null) {
          args.append(numSegments);
      }
      if (thickness != null) {
          args.append(thickness);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddEllipseEx', args);
  }
  public static function imDrawListAddEllipseFilled(self: ImDrawListPtr, center: Vector2, radius: Vector2, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddEllipseFilled', args);
  }
  public static function imDrawListAddEllipseFilledEx(self: ImDrawListPtr, center: Vector2, radius: Vector2, col: Color, ?rot: Float, ?numSegments: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(col);
      if (rot != null) {
          args.append(rot);
      }
      if (numSegments != null) {
          args.append(numSegments);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddEllipseFilledEx', args);
  }
  public static function imDrawListAddImage(self: ImDrawListPtr, userTextureId: Texture2D, pMin: Vector2, pMax: Vector2): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(userTextureId.native);
      args.append(pMin);
      args.append(pMax);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddImage', args);
  }
  public static function imDrawListAddImageEx(self: ImDrawListPtr, userTextureId: Texture2D, pMin: Vector2, pMax: Vector2, ?uvMin: Vector2, ?uvMax: Vector2, ?col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(userTextureId.native);
      args.append(pMin);
      args.append(pMax);
      if (uvMin != null) {
          args.append(uvMin);
      }
      if (uvMax != null) {
          args.append(uvMax);
      }
      if (col != null) {
          args.append(col);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddImageEx', args);
  }
  public static function imDrawListAddImageQuad(self: ImDrawListPtr, userTextureId: Texture2D, p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(userTextureId.native);
      args.append(p1);
      args.append(p2);
      args.append(p3);
      args.append(p4);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddImageQuad', args);
  }
  public static function imDrawListAddImageQuadEx(self: ImDrawListPtr, userTextureId: Texture2D, p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, ?uv1: Vector2, ?uv2: Vector2, ?uv3: Vector2, ?uv4: Vector2, ?col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(userTextureId.native);
      args.append(p1);
      args.append(p2);
      args.append(p3);
      args.append(p4);
      if (uv1 != null) {
          args.append(uv1);
      }
      if (uv2 != null) {
          args.append(uv2);
      }
      if (uv3 != null) {
          args.append(uv3);
      }
      if (uv4 != null) {
          args.append(uv4);
      }
      if (col != null) {
          args.append(col);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddImageQuadEx', args);
  }
  public static function imDrawListAddImageRounded(self: ImDrawListPtr, userTextureId: Texture2D, pMin: Vector2, pMax: Vector2, uvMin: Vector2, uvMax: Vector2, col: Color, rounding: Float, ?flags: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(userTextureId.native);
      args.append(pMin);
      args.append(pMax);
      args.append(uvMin);
      args.append(uvMax);
      args.append(col);
      args.append(rounding);
      if (flags != null) {
          args.append(flags);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddImageRounded', args);
  }
  public static function imDrawListAddLine(self: ImDrawListPtr, p1: Vector2, p2: Vector2, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(p1);
      args.append(p2);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddLine', args);
  }
  public static function imDrawListAddLineEx(self: ImDrawListPtr, p1: Vector2, p2: Vector2, col: Color, ?thickness: Float): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(p1);
      args.append(p2);
      args.append(col);
      if (thickness != null) {
          args.append(thickness);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddLineEx', args);
  }
  public static function imDrawListAddNgon(self: ImDrawListPtr, center: Vector2, radius: Float, col: Color, numSegments: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(col);
      args.append(numSegments);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddNgon', args);
  }
  public static function imDrawListAddNgonEx(self: ImDrawListPtr, center: Vector2, radius: Float, col: Color, numSegments: Int, ?thickness: Float): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(col);
      args.append(numSegments);
      if (thickness != null) {
          args.append(thickness);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddNgonEx', args);
  }
  public static function imDrawListAddNgonFilled(self: ImDrawListPtr, center: Vector2, radius: Float, col: Color, numSegments: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(col);
      args.append(numSegments);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddNgonFilled', args);
  }
  public static function imDrawListAddQuad(self: ImDrawListPtr, p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(p1);
      args.append(p2);
      args.append(p3);
      args.append(p4);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddQuad', args);
  }
  public static function imDrawListAddQuadEx(self: ImDrawListPtr, p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, col: Color, ?thickness: Float): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(p1);
      args.append(p2);
      args.append(p3);
      args.append(p4);
      args.append(col);
      if (thickness != null) {
          args.append(thickness);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddQuadEx', args);
  }
  public static function imDrawListAddQuadFilled(self: ImDrawListPtr, p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(p1);
      args.append(p2);
      args.append(p3);
      args.append(p4);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddQuadFilled', args);
  }
  public static function imDrawListAddRect(self: ImDrawListPtr, pMin: Vector2, pMax: Vector2, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(pMin);
      args.append(pMax);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddRect', args);
  }
  public static function imDrawListAddRectEx(self: ImDrawListPtr, pMin: Vector2, pMax: Vector2, col: Color, ?rounding: Float, ?flags: Int, ?thickness: Float): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(pMin);
      args.append(pMax);
      args.append(col);
      if (rounding != null) {
          args.append(rounding);
      }
      if (flags != null) {
          args.append(flags);
      }
      if (thickness != null) {
          args.append(thickness);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddRectEx', args);
  }
  public static function imDrawListAddRectFilled(self: ImDrawListPtr, pMin: Vector2, pMax: Vector2, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(pMin);
      args.append(pMax);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddRectFilled', args);
  }
  public static function imDrawListAddRectFilledEx(self: ImDrawListPtr, pMin: Vector2, pMax: Vector2, col: Color, ?rounding: Float, ?flags: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(pMin);
      args.append(pMax);
      args.append(col);
      if (rounding != null) {
          args.append(rounding);
      }
      if (flags != null) {
          args.append(flags);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddRectFilledEx', args);
  }
  public static function imDrawListAddRectFilledMultiColor(self: ImDrawListPtr, pMin: Vector2, pMax: Vector2, colUprLeft: Color, colUprRight: Color, colBotRight: Color, colBotLeft: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(pMin);
      args.append(pMax);
      args.append(colUprLeft);
      args.append(colUprRight);
      args.append(colBotRight);
      args.append(colBotLeft);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddRectFilledMultiColor', args);
  }
  public static function imDrawListAddText(self: ImDrawListPtr, pos: Vector2, col: Color, textBegin: String): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(pos);
      args.append(col);
      args.append(textBegin);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddText', args);
  }
  public static function imDrawListAddTextEx(self: ImDrawListPtr, pos: Vector2, col: Color, textBegin: String, ?textEnd: String): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(pos);
      args.append(col);
      args.append(textBegin);
      if (textEnd != null) {
          args.append(textEnd);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddTextEx', args);
  }
  public static function imDrawListAddTextImFontPtr(self: ImDrawListPtr, font: Int, fontSize: Float, pos: Vector2, col: Color, textBegin: String): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(font);
      args.append(fontSize);
      args.append(pos);
      args.append(col);
      args.append(textBegin);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddTextImFontPtr', args);
  }
  public static function imDrawListAddTriangle(self: ImDrawListPtr, p1: Vector2, p2: Vector2, p3: Vector2, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(p1);
      args.append(p2);
      args.append(p3);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddTriangle', args);
  }
  public static function imDrawListAddTriangleEx(self: ImDrawListPtr, p1: Vector2, p2: Vector2, p3: Vector2, col: Color, ?thickness: Float): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(p1);
      args.append(p2);
      args.append(p3);
      args.append(col);
      if (thickness != null) {
          args.append(thickness);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_AddTriangleEx', args);
  }
  public static function imDrawListAddTriangleFilled(self: ImDrawListPtr, p1: Vector2, p2: Vector2, p3: Vector2, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(p1);
      args.append(p2);
      args.append(p3);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_AddTriangleFilled', args);
  }
  public static function imDrawListChannelsMerge(self: ImDrawListPtr): Void {
      var args = new ArrayList();
      args.append(self.native);
      NativeObject.callStatic('ImGui', 'ImDrawList_ChannelsMerge', args);
  }
  public static function imDrawListChannelsSetCurrent(self: ImDrawListPtr, n: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(n);
      NativeObject.callStatic('ImGui', 'ImDrawList_ChannelsSetCurrent', args);
  }
  public static function imDrawListChannelsSplit(self: ImDrawListPtr, count: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(count);
      NativeObject.callStatic('ImGui', 'ImDrawList_ChannelsSplit', args);
  }
  public static function imDrawListPathArcTo(self: ImDrawListPtr, center: Vector2, radius: Float, aMin: Float, aMax: Float, ?numSegments: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(aMin);
      args.append(aMax);
      if (numSegments != null) {
          args.append(numSegments);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_PathArcTo', args);
  }
  public static function imDrawListPathArcToFast(self: ImDrawListPtr, center: Vector2, radius: Float, aMinOf12: Int, aMaxOf12: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(aMinOf12);
      args.append(aMaxOf12);
      NativeObject.callStatic('ImGui', 'ImDrawList_PathArcToFast', args);
  }
  public static function imDrawListPathBezierCubicCurveTo(self: ImDrawListPtr, p2: Vector2, p3: Vector2, p4: Vector2, ?numSegments: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(p2);
      args.append(p3);
      args.append(p4);
      if (numSegments != null) {
          args.append(numSegments);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_PathBezierCubicCurveTo', args);
  }
  public static function imDrawListPathBezierQuadraticCurveTo(self: ImDrawListPtr, p2: Vector2, p3: Vector2, ?numSegments: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(p2);
      args.append(p3);
      if (numSegments != null) {
          args.append(numSegments);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_PathBezierQuadraticCurveTo', args);
  }
  public static function imDrawListPathClear(self: ImDrawListPtr): Void {
      var args = new ArrayList();
      args.append(self.native);
      NativeObject.callStatic('ImGui', 'ImDrawList_PathClear', args);
  }
  public static function imDrawListPathEllipticalArcTo(self: ImDrawListPtr, center: Vector2, radius: Vector2, rot: Float, aMin: Float, aMax: Float): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(rot);
      args.append(aMin);
      args.append(aMax);
      NativeObject.callStatic('ImGui', 'ImDrawList_PathEllipticalArcTo', args);
  }
  public static function imDrawListPathEllipticalArcToEx(self: ImDrawListPtr, center: Vector2, radius: Vector2, rot: Float, aMin: Float, aMax: Float, ?numSegments: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(center);
      args.append(radius);
      args.append(rot);
      args.append(aMin);
      args.append(aMax);
      if (numSegments != null) {
          args.append(numSegments);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_PathEllipticalArcToEx', args);
  }
  public static function imDrawListPathFillConcave(self: ImDrawListPtr, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_PathFillConcave', args);
  }
  public static function imDrawListPathFillConvex(self: ImDrawListPtr, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_PathFillConvex', args);
  }
  public static function imDrawListPathLineTo(self: ImDrawListPtr, pos: Vector2): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(pos);
      NativeObject.callStatic('ImGui', 'ImDrawList_PathLineTo', args);
  }
  public static function imDrawListPathLineToMergeDuplicate(self: ImDrawListPtr, pos: Vector2): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(pos);
      NativeObject.callStatic('ImGui', 'ImDrawList_PathLineToMergeDuplicate', args);
  }
  public static function imDrawListPathRect(self: ImDrawListPtr, rectMin: Vector2, rectMax: Vector2, ?rounding: Float, ?flags: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(rectMin);
      args.append(rectMax);
      if (rounding != null) {
          args.append(rounding);
      }
      if (flags != null) {
          args.append(flags);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_PathRect', args);
  }
  public static function imDrawListPathStroke(self: ImDrawListPtr, col: Color, ?flags: Int, ?thickness: Float): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(col);
      if (flags != null) {
          args.append(flags);
      }
      if (thickness != null) {
          args.append(thickness);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_PathStroke', args);
  }
  public static function imDrawListPopClipRect(self: ImDrawListPtr): Void {
      var args = new ArrayList();
      args.append(self.native);
      NativeObject.callStatic('ImGui', 'ImDrawList_PopClipRect', args);
  }
  public static function imDrawListPopTextureId(self: ImDrawListPtr): Void {
      var args = new ArrayList();
      args.append(self.native);
      NativeObject.callStatic('ImGui', 'ImDrawList_PopTextureID', args);
  }
  public static function imDrawListPrimRect(self: ImDrawListPtr, a: Vector2, b: Vector2, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(a);
      args.append(b);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_PrimRect', args);
  }
  public static function imDrawListPrimReserve(self: ImDrawListPtr, idxCount: Int, vtxCount: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(idxCount);
      args.append(vtxCount);
      NativeObject.callStatic('ImGui', 'ImDrawList_PrimReserve', args);
  }
  public static function imDrawListPrimUnreserve(self: ImDrawListPtr, idxCount: Int, vtxCount: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(idxCount);
      args.append(vtxCount);
      NativeObject.callStatic('ImGui', 'ImDrawList_PrimUnreserve', args);
  }
  public static function imDrawListPrimVtx(self: ImDrawListPtr, pos: Vector2, uv: Vector2, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(pos);
      args.append(uv);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_PrimVtx', args);
  }
  public static function imDrawListPrimWriteVtx(self: ImDrawListPtr, pos: Vector2, uv: Vector2, col: Color): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(pos);
      args.append(uv);
      args.append(col);
      NativeObject.callStatic('ImGui', 'ImDrawList_PrimWriteVtx', args);
  }
  public static function imDrawListPushClipRect(self: ImDrawListPtr, clipRectMin: Vector2, clipRectMax: Vector2, ?intersectWithCurrentClipRect: Bool): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(clipRectMin);
      args.append(clipRectMax);
      if (intersectWithCurrentClipRect != null) {
          args.append(intersectWithCurrentClipRect);
      }
      NativeObject.callStatic('ImGui', 'ImDrawList_PushClipRect', args);
  }
  public static function imDrawListPushClipRectFullScreen(self: ImDrawListPtr): Void {
      var args = new ArrayList();
      args.append(self.native);
      NativeObject.callStatic('ImGui', 'ImDrawList_PushClipRectFullScreen', args);
  }
  public static function imDrawListPushTextureId(self: ImDrawListPtr, textureId: Texture2D): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(textureId.native);
      NativeObject.callStatic('ImGui', 'ImDrawList_PushTextureID', args);
  }
  public static function imGuiListClipperBegin(self: ImGuiListClipperPtr, itemsCount: Int, ?itemsHeight: Float): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(itemsCount);
      if (itemsHeight != null) {
          args.append(itemsHeight);
      }
      NativeObject.callStatic('ImGui', 'ImGuiListClipper_Begin', args);
  }
  public static function imGuiListClipperEnd(self: ImGuiListClipperPtr): Void {
      var args = new ArrayList();
      args.append(self.native);
      NativeObject.callStatic('ImGui', 'ImGuiListClipper_End', args);
  }
  public static function imGuiListClipperIncludeItemByIndex(self: ImGuiListClipperPtr, itemIndex: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(itemIndex);
      NativeObject.callStatic('ImGui', 'ImGuiListClipper_IncludeItemByIndex', args);
  }
  public static function imGuiListClipperIncludeItemsByIndex(self: ImGuiListClipperPtr, itemBegin: Int, itemEnd: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(itemBegin);
      args.append(itemEnd);
      NativeObject.callStatic('ImGui', 'ImGuiListClipper_IncludeItemsByIndex', args);
  }
  public static function imGuiListClipperSeekCursorForItem(self: ImGuiListClipperPtr, itemIndex: Int): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(itemIndex);
      NativeObject.callStatic('ImGui', 'ImGuiListClipper_SeekCursorForItem', args);
  }
  public static function imGuiListClipperStep(self: ImGuiListClipperPtr): Bool {
      var args = new ArrayList();
      args.append(self.native);
      return NativeObject.callStatic('ImGui', 'ImGuiListClipper_Step', args);
  }
  public static function imGuiStyleScaleAllSizes(self: ImGuiStylePtr, scaleFactor: Float): Void {
      var args = new ArrayList();
      args.append(self.native);
      args.append(scaleFactor);
      NativeObject.callStatic('ImGui', 'ImGuiStyle_ScaleAllSizes', args);
  }
  public static function image(userTextureId: Texture2D, imageSize: Vector2): Void {
      var args = new ArrayList();
      args.append(userTextureId.native);
      args.append(imageSize);
      NativeObject.callStatic('ImGui', 'Image', args);
  }
  public static function imageButton(strId: String, userTextureId: Texture2D, imageSize: Vector2): Bool {
      var args = new ArrayList();
      args.append(strId);
      args.append(userTextureId.native);
      args.append(imageSize);
      return NativeObject.callStatic('ImGui', 'ImageButton', args);
  }
  public static function imageButtonEx(strId: String, userTextureId: Texture2D, imageSize: Vector2, ?uv0: Vector2, ?uv1: Vector2, ?bgCol: Color, ?tintCol: Color): Bool {
      var args = new ArrayList();
      args.append(strId);
      args.append(userTextureId.native);
      args.append(imageSize);
      if (uv0 != null) {
          args.append(uv0);
      }
      if (uv1 != null) {
          args.append(uv1);
      }
      if (bgCol != null) {
          args.append(bgCol);
      }
      if (tintCol != null) {
          args.append(tintCol);
      }
      return NativeObject.callStatic('ImGui', 'ImageButtonEx', args);
  }
  public static function imageEx(userTextureId: Texture2D, imageSize: Vector2, ?uv0: Vector2, ?uv1: Vector2, ?tintCol: Color, ?borderCol: Color): Void {
      var args = new ArrayList();
      args.append(userTextureId.native);
      args.append(imageSize);
      if (uv0 != null) {
          args.append(uv0);
      }
      if (uv1 != null) {
          args.append(uv1);
      }
      if (tintCol != null) {
          args.append(tintCol);
      }
      if (borderCol != null) {
          args.append(borderCol);
      }
      NativeObject.callStatic('ImGui', 'ImageEx', args);
  }
  public static function indent(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'Indent', args);
  }
  public static function indentEx(?indentW: Float): Void {
      var args = new ArrayList();
      if (indentW != null) {
          args.append(indentW);
      }
      NativeObject.callStatic('ImGui', 'IndentEx', args);
  }
  public static function inputDouble(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'InputDouble', args);
  }
  public static function inputDoubleEx(label: String, v: ArrayList, ?step: Float, ?stepFast: Float, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (step != null) {
          args.append(step);
      }
      if (stepFast != null) {
          args.append(stepFast);
      }
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'InputDoubleEx', args);
  }
  public static function inputFloat(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'InputFloat', args);
  }
  public static function inputFloat2(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'InputFloat2', args);
  }
  public static function inputFloat2Ex(label: String, v: ArrayList, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'InputFloat2Ex', args);
  }
  public static function inputFloat3(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'InputFloat3', args);
  }
  public static function inputFloat3Ex(label: String, v: ArrayList, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'InputFloat3Ex', args);
  }
  public static function inputFloat4(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'InputFloat4', args);
  }
  public static function inputFloat4Ex(label: String, v: ArrayList, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'InputFloat4Ex', args);
  }
  public static function inputFloatEx(label: String, v: ArrayList, ?step: Float, ?stepFast: Float, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (step != null) {
          args.append(step);
      }
      if (stepFast != null) {
          args.append(stepFast);
      }
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'InputFloatEx', args);
  }
  public static function inputInt(label: String, v: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      return NativeObject.callStatic('ImGui', 'InputInt', args);
  }
  public static function inputInt2(label: String, v: ArrayList, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'InputInt2', args);
  }
  public static function inputInt3(label: String, v: ArrayList, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'InputInt3', args);
  }
  public static function inputInt4(label: String, v: ArrayList, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'InputInt4', args);
  }
  public static function inputIntEx(label: String, v: ArrayList, ?step: Int, ?stepFast: Int, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      if (step != null) {
          args.append(step);
      }
      if (stepFast != null) {
          args.append(stepFast);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'InputIntEx', args);
  }
  public static function inputText(label: String, buf: ArrayList, bufSize: Int, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(buf);
      args.append(bufSize);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'InputText', args);
  }
  public static function inputTextMultiline(label: String, buf: ArrayList, bufSize: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(buf);
      args.append(bufSize);
      return NativeObject.callStatic('ImGui', 'InputTextMultiline', args);
  }
  public static function inputTextWithHint(label: String, hint: String, buf: ArrayList, bufSize: Int, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(hint);
      args.append(buf);
      args.append(bufSize);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'InputTextWithHint', args);
  }
  public static function invisibleButton(strId: String, size: Vector2, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(strId);
      args.append(size);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'InvisibleButton', args);
  }
  public static function isAnyItemActive(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsAnyItemActive', args);
  }
  public static function isAnyItemFocused(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsAnyItemFocused', args);
  }
  public static function isAnyItemHovered(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsAnyItemHovered', args);
  }
  public static function isAnyMouseDown(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsAnyMouseDown', args);
  }
  public static function isItemActivated(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsItemActivated', args);
  }
  public static function isItemActive(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsItemActive', args);
  }
  public static function isItemClicked(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsItemClicked', args);
  }
  public static function isItemClickedEx(?mouseButton: Int): Bool {
      var args = new ArrayList();
      if (mouseButton != null) {
          args.append(mouseButton);
      }
      return NativeObject.callStatic('ImGui', 'IsItemClickedEx', args);
  }
  public static function isItemDeactivated(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsItemDeactivated', args);
  }
  public static function isItemDeactivatedAfterEdit(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsItemDeactivatedAfterEdit', args);
  }
  public static function isItemEdited(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsItemEdited', args);
  }
  public static function isItemFocused(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsItemFocused', args);
  }
  public static function isItemHovered(?flags: Int): Bool {
      var args = new ArrayList();
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'IsItemHovered', args);
  }
  public static function isItemToggledOpen(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsItemToggledOpen', args);
  }
  public static function isItemToggledSelection(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsItemToggledSelection', args);
  }
  public static function isItemVisible(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsItemVisible', args);
  }
  public static function isKeyDown(key: Int): Bool {
      var args = new ArrayList();
      args.append(key);
      return NativeObject.callStatic('ImGui', 'IsKeyDown', args);
  }
  public static function isKeyPressed(key: Int): Bool {
      var args = new ArrayList();
      args.append(key);
      return NativeObject.callStatic('ImGui', 'IsKeyPressed', args);
  }
  public static function isKeyPressedEx(key: Int, ?repeat: Bool): Bool {
      var args = new ArrayList();
      args.append(key);
      if (repeat != null) {
          args.append(repeat);
      }
      return NativeObject.callStatic('ImGui', 'IsKeyPressedEx', args);
  }
  public static function isKeyReleased(key: Int): Bool {
      var args = new ArrayList();
      args.append(key);
      return NativeObject.callStatic('ImGui', 'IsKeyReleased', args);
  }
  public static function isMouseClicked(button: Int): Bool {
      var args = new ArrayList();
      args.append(button);
      return NativeObject.callStatic('ImGui', 'IsMouseClicked', args);
  }
  public static function isMouseClickedEx(button: Int, ?repeat: Bool): Bool {
      var args = new ArrayList();
      args.append(button);
      if (repeat != null) {
          args.append(repeat);
      }
      return NativeObject.callStatic('ImGui', 'IsMouseClickedEx', args);
  }
  public static function isMouseDoubleClicked(button: Int): Bool {
      var args = new ArrayList();
      args.append(button);
      return NativeObject.callStatic('ImGui', 'IsMouseDoubleClicked', args);
  }
  public static function isMouseDown(button: Int): Bool {
      var args = new ArrayList();
      args.append(button);
      return NativeObject.callStatic('ImGui', 'IsMouseDown', args);
  }
  public static function isMouseDragging(button: Int, ?lockThreshold: Float): Bool {
      var args = new ArrayList();
      args.append(button);
      if (lockThreshold != null) {
          args.append(lockThreshold);
      }
      return NativeObject.callStatic('ImGui', 'IsMouseDragging', args);
  }
  public static function isMouseHoveringRect(rMin: Vector2, rMax: Vector2): Bool {
      var args = new ArrayList();
      args.append(rMin);
      args.append(rMax);
      return NativeObject.callStatic('ImGui', 'IsMouseHoveringRect', args);
  }
  public static function isMouseHoveringRectEx(rMin: Vector2, rMax: Vector2, ?clip: Bool): Bool {
      var args = new ArrayList();
      args.append(rMin);
      args.append(rMax);
      if (clip != null) {
          args.append(clip);
      }
      return NativeObject.callStatic('ImGui', 'IsMouseHoveringRectEx', args);
  }
  public static function isMouseReleased(button: Int): Bool {
      var args = new ArrayList();
      args.append(button);
      return NativeObject.callStatic('ImGui', 'IsMouseReleased', args);
  }
  public static function isPopupOpen(strId: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(strId);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'IsPopupOpen', args);
  }
  public static function isRectVisible(rectMin: Vector2, rectMax: Vector2): Bool {
      var args = new ArrayList();
      args.append(rectMin);
      args.append(rectMax);
      return NativeObject.callStatic('ImGui', 'IsRectVisible', args);
  }
  public static function isRectVisibleBySize(size: Vector2): Bool {
      var args = new ArrayList();
      args.append(size);
      return NativeObject.callStatic('ImGui', 'IsRectVisibleBySize', args);
  }
  public static function isWindowAppearing(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsWindowAppearing', args);
  }
  public static function isWindowCollapsed(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsWindowCollapsed', args);
  }
  public static function isWindowDocked(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'IsWindowDocked', args);
  }
  public static function isWindowFocused(?flags: Int): Bool {
      var args = new ArrayList();
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'IsWindowFocused', args);
  }
  public static function isWindowHovered(?flags: Int): Bool {
      var args = new ArrayList();
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'IsWindowHovered', args);
  }
  public static function labelText(label: String, fmt: String): Void {
      var args = new ArrayList();
      args.append(label);
      args.append(fmt);
      NativeObject.callStatic('ImGui', 'LabelText', args);
  }
  public static function listBox(label: String, currentItem: ArrayList, items: ArrayList, itemsCount: Int, ?heightInItems: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(currentItem);
      args.append(items);
      args.append(itemsCount);
      if (heightInItems != null) {
          args.append(heightInItems);
      }
      return NativeObject.callStatic('ImGui', 'ListBox', args);
  }
  public static function loadIniSettingsFromDisk(iniFilename: String): Void {
      var args = new ArrayList();
      args.append(iniFilename);
      NativeObject.callStatic('ImGui', 'LoadIniSettingsFromDisk', args);
  }
  public static function loadIniSettingsFromMemory(iniData: String, ?iniSize: Int): Void {
      var args = new ArrayList();
      args.append(iniData);
      if (iniSize != null) {
          args.append(iniSize);
      }
      NativeObject.callStatic('ImGui', 'LoadIniSettingsFromMemory', args);
  }
  public static function logButtons(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'LogButtons', args);
  }
  public static function logFinish(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'LogFinish', args);
  }
  public static function logText(fmt: String): Void {
      var args = new ArrayList();
      args.append(fmt);
      NativeObject.callStatic('ImGui', 'LogText', args);
  }
  public static function logToClipboard(?autoOpenDepth: Int): Void {
      var args = new ArrayList();
      if (autoOpenDepth != null) {
          args.append(autoOpenDepth);
      }
      NativeObject.callStatic('ImGui', 'LogToClipboard', args);
  }
  public static function logToFile(?autoOpenDepth: Int, ?filename: String): Void {
      var args = new ArrayList();
      if (autoOpenDepth != null) {
          args.append(autoOpenDepth);
      }
      if (filename != null) {
          args.append(filename);
      }
      NativeObject.callStatic('ImGui', 'LogToFile', args);
  }
  public static function logToTty(?autoOpenDepth: Int): Void {
      var args = new ArrayList();
      if (autoOpenDepth != null) {
          args.append(autoOpenDepth);
      }
      NativeObject.callStatic('ImGui', 'LogToTTY', args);
  }
  public static function menuItem(label: String): Bool {
      var args = new ArrayList();
      args.append(label);
      return NativeObject.callStatic('ImGui', 'MenuItem', args);
  }
  public static function menuItemBoolPtr(label: String, shortcut: String, pSelected: ArrayList, ?enabled: Bool): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(shortcut);
      args.append(pSelected);
      if (enabled != null) {
          args.append(enabled);
      }
      return NativeObject.callStatic('ImGui', 'MenuItemBoolPtr', args);
  }
  public static function menuItemEx(label: String, ?shortcut: String, ?selected: Bool, ?enabled: Bool): Bool {
      var args = new ArrayList();
      args.append(label);
      if (shortcut != null) {
          args.append(shortcut);
      }
      if (selected != null) {
          args.append(selected);
      }
      if (enabled != null) {
          args.append(enabled);
      }
      return NativeObject.callStatic('ImGui', 'MenuItemEx', args);
  }
  public static function newLine(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'NewLine', args);
  }
  public static function nextColumn(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'NextColumn', args);
  }
  public static function openPopup(strId: String, ?popupFlags: Int): Void {
      var args = new ArrayList();
      args.append(strId);
      if (popupFlags != null) {
          args.append(popupFlags);
      }
      NativeObject.callStatic('ImGui', 'OpenPopup', args);
  }
  public static function openPopupId(id: Int, ?popupFlags: Int): Void {
      var args = new ArrayList();
      args.append(id);
      if (popupFlags != null) {
          args.append(popupFlags);
      }
      NativeObject.callStatic('ImGui', 'OpenPopupID', args);
  }
  public static function openPopupOnItemClick(?strId: String, ?popupFlags: Int): Void {
      var args = new ArrayList();
      if (strId != null) {
          args.append(strId);
      }
      if (popupFlags != null) {
          args.append(popupFlags);
      }
      NativeObject.callStatic('ImGui', 'OpenPopupOnItemClick', args);
  }
  public static function plotHistogram(label: String, values: ArrayList, valuesCount: Int): Void {
      var args = new ArrayList();
      args.append(label);
      args.append(values);
      args.append(valuesCount);
      NativeObject.callStatic('ImGui', 'PlotHistogram', args);
  }
  public static function plotHistogramEx(label: String, values: ArrayList, valuesCount: Int, ?valuesOffset: Int, ?overlayText: String, ?scaleMin: Float, ?scaleMax: Float, ?graphSize: Vector2, ?stride: Int): Void {
      var args = new ArrayList();
      args.append(label);
      args.append(values);
      args.append(valuesCount);
      if (valuesOffset != null) {
          args.append(valuesOffset);
      }
      if (overlayText != null) {
          args.append(overlayText);
      }
      if (scaleMin != null) {
          args.append(scaleMin);
      }
      if (scaleMax != null) {
          args.append(scaleMax);
      }
      if (graphSize != null) {
          args.append(graphSize);
      }
      if (stride != null) {
          args.append(stride);
      }
      NativeObject.callStatic('ImGui', 'PlotHistogramEx', args);
  }
  public static function plotLines(label: String, values: ArrayList, valuesCount: Int): Void {
      var args = new ArrayList();
      args.append(label);
      args.append(values);
      args.append(valuesCount);
      NativeObject.callStatic('ImGui', 'PlotLines', args);
  }
  public static function plotLinesEx(label: String, values: ArrayList, valuesCount: Int, ?valuesOffset: Int, ?overlayText: String, ?scaleMin: Float, ?scaleMax: Float, ?graphSize: Vector2, ?stride: Int): Void {
      var args = new ArrayList();
      args.append(label);
      args.append(values);
      args.append(valuesCount);
      if (valuesOffset != null) {
          args.append(valuesOffset);
      }
      if (overlayText != null) {
          args.append(overlayText);
      }
      if (scaleMin != null) {
          args.append(scaleMin);
      }
      if (scaleMax != null) {
          args.append(scaleMax);
      }
      if (graphSize != null) {
          args.append(graphSize);
      }
      if (stride != null) {
          args.append(stride);
      }
      NativeObject.callStatic('ImGui', 'PlotLinesEx', args);
  }
  public static function popClipRect(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'PopClipRect', args);
  }
  public static function popFont(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'PopFont', args);
  }
  public static function popId(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'PopID', args);
  }
  public static function popItemFlag(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'PopItemFlag', args);
  }
  public static function popItemWidth(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'PopItemWidth', args);
  }
  public static function popStyleColor(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'PopStyleColor', args);
  }
  public static function popStyleColorEx(?count: Int): Void {
      var args = new ArrayList();
      if (count != null) {
          args.append(count);
      }
      NativeObject.callStatic('ImGui', 'PopStyleColorEx', args);
  }
  public static function popStyleVar(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'PopStyleVar', args);
  }
  public static function popStyleVarEx(?count: Int): Void {
      var args = new ArrayList();
      if (count != null) {
          args.append(count);
      }
      NativeObject.callStatic('ImGui', 'PopStyleVarEx', args);
  }
  public static function popTextWrapPos(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'PopTextWrapPos', args);
  }
  public static function progressBar(fraction: Float, ?sizeArg: Vector2, ?overlay: String): Void {
      var args = new ArrayList();
      args.append(fraction);
      if (sizeArg != null) {
          args.append(sizeArg);
      }
      if (overlay != null) {
          args.append(overlay);
      }
      NativeObject.callStatic('ImGui', 'ProgressBar', args);
  }
  public static function pushClipRect(clipRectMin: Vector2, clipRectMax: Vector2, intersectWithCurrentClipRect: Bool): Void {
      var args = new ArrayList();
      args.append(clipRectMin);
      args.append(clipRectMax);
      args.append(intersectWithCurrentClipRect);
      NativeObject.callStatic('ImGui', 'PushClipRect', args);
  }
  public static function pushFont(font: Int): Void {
      var args = new ArrayList();
      args.append(font);
      NativeObject.callStatic('ImGui', 'PushFont', args);
  }
  public static function pushId(strId: String): Void {
      var args = new ArrayList();
      args.append(strId);
      NativeObject.callStatic('ImGui', 'PushID', args);
  }
  public static function pushIdInt(intId: Int): Void {
      var args = new ArrayList();
      args.append(intId);
      NativeObject.callStatic('ImGui', 'PushIDInt', args);
  }
  public static function pushIdStr(strIdBegin: String, strIdEnd: String): Void {
      var args = new ArrayList();
      args.append(strIdBegin);
      args.append(strIdEnd);
      NativeObject.callStatic('ImGui', 'PushIDStr', args);
  }
  public static function pushItemFlag(option: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(option);
      args.append(enabled);
      NativeObject.callStatic('ImGui', 'PushItemFlag', args);
  }
  public static function pushItemWidth(itemWidth: Float): Void {
      var args = new ArrayList();
      args.append(itemWidth);
      NativeObject.callStatic('ImGui', 'PushItemWidth', args);
  }
  public static function pushStyleColor(idx: Int, col: Color): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(col);
      NativeObject.callStatic('ImGui', 'PushStyleColor', args);
  }
  public static function pushStyleColorImVec4(idx: Int, col: Color): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(col);
      NativeObject.callStatic('ImGui', 'PushStyleColorImVec4', args);
  }
  public static function pushStyleVar(idx: Int, val: Float): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(val);
      NativeObject.callStatic('ImGui', 'PushStyleVar', args);
  }
  public static function pushStyleVarImVec2(idx: Int, val: Vector2): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(val);
      NativeObject.callStatic('ImGui', 'PushStyleVarImVec2', args);
  }
  public static function pushStyleVarX(idx: Int, valX: Float): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(valX);
      NativeObject.callStatic('ImGui', 'PushStyleVarX', args);
  }
  public static function pushStyleVarY(idx: Int, valY: Float): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(valY);
      NativeObject.callStatic('ImGui', 'PushStyleVarY', args);
  }
  public static function pushTextWrapPos(?wrapLocalPosX: Float): Void {
      var args = new ArrayList();
      if (wrapLocalPosX != null) {
          args.append(wrapLocalPosX);
      }
      NativeObject.callStatic('ImGui', 'PushTextWrapPos', args);
  }
  public static function radioButton(label: String, active: Bool): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(active);
      return NativeObject.callStatic('ImGui', 'RadioButton', args);
  }
  public static function radioButtonIntPtr(label: String, v: ArrayList, vButton: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vButton);
      return NativeObject.callStatic('ImGui', 'RadioButtonIntPtr', args);
  }
  public static function resetMouseDragDelta(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'ResetMouseDragDelta', args);
  }
  public static function resetMouseDragDeltaEx(?button: Int): Void {
      var args = new ArrayList();
      if (button != null) {
          args.append(button);
      }
      NativeObject.callStatic('ImGui', 'ResetMouseDragDeltaEx', args);
  }
  public static function sameLine(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'SameLine', args);
  }
  public static function sameLineEx(?offsetFromStartX: Float, ?spacing: Float): Void {
      var args = new ArrayList();
      if (offsetFromStartX != null) {
          args.append(offsetFromStartX);
      }
      if (spacing != null) {
          args.append(spacing);
      }
      NativeObject.callStatic('ImGui', 'SameLineEx', args);
  }
  public static function saveIniSettingsToDisk(iniFilename: String): Void {
      var args = new ArrayList();
      args.append(iniFilename);
      NativeObject.callStatic('ImGui', 'SaveIniSettingsToDisk', args);
  }
  public static function selectable(label: String): Bool {
      var args = new ArrayList();
      args.append(label);
      return NativeObject.callStatic('ImGui', 'Selectable', args);
  }
  public static function selectableBoolPtr(label: String, pSelected: ArrayList, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(pSelected);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'SelectableBoolPtr', args);
  }
  public static function selectableBoolPtrEx(label: String, pSelected: ArrayList, ?flags: Int, ?size: Vector2): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(pSelected);
      if (flags != null) {
          args.append(flags);
      }
      if (size != null) {
          args.append(size);
      }
      return NativeObject.callStatic('ImGui', 'SelectableBoolPtrEx', args);
  }
  public static function selectableEx(label: String, ?selected: Bool, ?flags: Int, ?size: Vector2): Bool {
      var args = new ArrayList();
      args.append(label);
      if (selected != null) {
          args.append(selected);
      }
      if (flags != null) {
          args.append(flags);
      }
      if (size != null) {
          args.append(size);
      }
      return NativeObject.callStatic('ImGui', 'SelectableEx', args);
  }
  public static function separator(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'Separator', args);
  }
  public static function separatorText(label: String): Void {
      var args = new ArrayList();
      args.append(label);
      NativeObject.callStatic('ImGui', 'SeparatorText', args);
  }
  public static function setClipboardText(text: String): Void {
      var args = new ArrayList();
      args.append(text);
      NativeObject.callStatic('ImGui', 'SetClipboardText', args);
  }
  public static function setColorEditOptions(flags: Int): Void {
      var args = new ArrayList();
      args.append(flags);
      NativeObject.callStatic('ImGui', 'SetColorEditOptions', args);
  }
  public static function setColumnOffset(columnIndex: Int, offsetX: Float): Void {
      var args = new ArrayList();
      args.append(columnIndex);
      args.append(offsetX);
      NativeObject.callStatic('ImGui', 'SetColumnOffset', args);
  }
  public static function setColumnWidth(columnIndex: Int, width: Float): Void {
      var args = new ArrayList();
      args.append(columnIndex);
      args.append(width);
      NativeObject.callStatic('ImGui', 'SetColumnWidth', args);
  }
  public static function setCursorPos(localPos: Vector2): Void {
      var args = new ArrayList();
      args.append(localPos);
      NativeObject.callStatic('ImGui', 'SetCursorPos', args);
  }
  public static function setCursorPosX(localX: Float): Void {
      var args = new ArrayList();
      args.append(localX);
      NativeObject.callStatic('ImGui', 'SetCursorPosX', args);
  }
  public static function setCursorPosY(localY: Float): Void {
      var args = new ArrayList();
      args.append(localY);
      NativeObject.callStatic('ImGui', 'SetCursorPosY', args);
  }
  public static function setCursorScreenPos(pos: Vector2): Void {
      var args = new ArrayList();
      args.append(pos);
      NativeObject.callStatic('ImGui', 'SetCursorScreenPos', args);
  }
  public static function setItemDefaultFocus(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'SetItemDefaultFocus', args);
  }
  public static function setItemKeyOwner(key: Int): Void {
      var args = new ArrayList();
      args.append(key);
      NativeObject.callStatic('ImGui', 'SetItemKeyOwner', args);
  }
  public static function setItemTooltip(fmt: String): Void {
      var args = new ArrayList();
      args.append(fmt);
      NativeObject.callStatic('ImGui', 'SetItemTooltip', args);
  }
  public static function setKeyboardFocusHere(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'SetKeyboardFocusHere', args);
  }
  public static function setKeyboardFocusHereEx(?offset: Int): Void {
      var args = new ArrayList();
      if (offset != null) {
          args.append(offset);
      }
      NativeObject.callStatic('ImGui', 'SetKeyboardFocusHereEx', args);
  }
  public static function setMouseCursor(cursorType: Int): Void {
      var args = new ArrayList();
      args.append(cursorType);
      NativeObject.callStatic('ImGui', 'SetMouseCursor', args);
  }
  public static function setNavCursorVisible(visible: Bool): Void {
      var args = new ArrayList();
      args.append(visible);
      NativeObject.callStatic('ImGui', 'SetNavCursorVisible', args);
  }
  public static function setNextFrameWantCaptureKeyboard(wantCaptureKeyboard: Bool): Void {
      var args = new ArrayList();
      args.append(wantCaptureKeyboard);
      NativeObject.callStatic('ImGui', 'SetNextFrameWantCaptureKeyboard', args);
  }
  public static function setNextFrameWantCaptureMouse(wantCaptureMouse: Bool): Void {
      var args = new ArrayList();
      args.append(wantCaptureMouse);
      NativeObject.callStatic('ImGui', 'SetNextFrameWantCaptureMouse', args);
  }
  public static function setNextItemAllowOverlap(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'SetNextItemAllowOverlap', args);
  }
  public static function setNextItemOpen(isOpen: Bool, ?cond: Int): Void {
      var args = new ArrayList();
      args.append(isOpen);
      if (cond != null) {
          args.append(cond);
      }
      NativeObject.callStatic('ImGui', 'SetNextItemOpen', args);
  }
  public static function setNextItemSelectionUserData(selectionUserData: Int): Void {
      var args = new ArrayList();
      args.append(selectionUserData);
      NativeObject.callStatic('ImGui', 'SetNextItemSelectionUserData', args);
  }
  public static function setNextItemStorageId(storageId: Int): Void {
      var args = new ArrayList();
      args.append(storageId);
      NativeObject.callStatic('ImGui', 'SetNextItemStorageID', args);
  }
  public static function setNextItemWidth(itemWidth: Float): Void {
      var args = new ArrayList();
      args.append(itemWidth);
      NativeObject.callStatic('ImGui', 'SetNextItemWidth', args);
  }
  public static function setNextWindowBgAlpha(alpha: Float): Void {
      var args = new ArrayList();
      args.append(alpha);
      NativeObject.callStatic('ImGui', 'SetNextWindowBgAlpha', args);
  }
  public static function setNextWindowClass(windowClass: ImGuiWindowClassPtr): Void {
      var args = new ArrayList();
      args.append(windowClass.native);
      NativeObject.callStatic('ImGui', 'SetNextWindowClass', args);
  }
  public static function setNextWindowCollapsed(collapsed: Bool, ?cond: Int): Void {
      var args = new ArrayList();
      args.append(collapsed);
      if (cond != null) {
          args.append(cond);
      }
      NativeObject.callStatic('ImGui', 'SetNextWindowCollapsed', args);
  }
  public static function setNextWindowContentSize(size: Vector2): Void {
      var args = new ArrayList();
      args.append(size);
      NativeObject.callStatic('ImGui', 'SetNextWindowContentSize', args);
  }
  public static function setNextWindowDockId(dockId: Int, ?cond: Int): Void {
      var args = new ArrayList();
      args.append(dockId);
      if (cond != null) {
          args.append(cond);
      }
      NativeObject.callStatic('ImGui', 'SetNextWindowDockID', args);
  }
  public static function setNextWindowFocus(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'SetNextWindowFocus', args);
  }
  public static function setNextWindowPos(pos: Vector2, ?cond: Int): Void {
      var args = new ArrayList();
      args.append(pos);
      if (cond != null) {
          args.append(cond);
      }
      NativeObject.callStatic('ImGui', 'SetNextWindowPos', args);
  }
  public static function setNextWindowPosEx(pos: Vector2, ?cond: Int, ?pivot: Vector2): Void {
      var args = new ArrayList();
      args.append(pos);
      if (cond != null) {
          args.append(cond);
      }
      if (pivot != null) {
          args.append(pivot);
      }
      NativeObject.callStatic('ImGui', 'SetNextWindowPosEx', args);
  }
  public static function setNextWindowScroll(scroll: Vector2): Void {
      var args = new ArrayList();
      args.append(scroll);
      NativeObject.callStatic('ImGui', 'SetNextWindowScroll', args);
  }
  public static function setNextWindowSize(size: Vector2, ?cond: Int): Void {
      var args = new ArrayList();
      args.append(size);
      if (cond != null) {
          args.append(cond);
      }
      NativeObject.callStatic('ImGui', 'SetNextWindowSize', args);
  }
  public static function setNextWindowViewport(viewportId: Int): Void {
      var args = new ArrayList();
      args.append(viewportId);
      NativeObject.callStatic('ImGui', 'SetNextWindowViewport', args);
  }
  public static function setScrollFromPosX(localX: Float, ?centerXRatio: Float): Void {
      var args = new ArrayList();
      args.append(localX);
      if (centerXRatio != null) {
          args.append(centerXRatio);
      }
      NativeObject.callStatic('ImGui', 'SetScrollFromPosX', args);
  }
  public static function setScrollFromPosY(localY: Float, ?centerYRatio: Float): Void {
      var args = new ArrayList();
      args.append(localY);
      if (centerYRatio != null) {
          args.append(centerYRatio);
      }
      NativeObject.callStatic('ImGui', 'SetScrollFromPosY', args);
  }
  public static function setScrollHereX(?centerXRatio: Float): Void {
      var args = new ArrayList();
      if (centerXRatio != null) {
          args.append(centerXRatio);
      }
      NativeObject.callStatic('ImGui', 'SetScrollHereX', args);
  }
  public static function setScrollHereY(?centerYRatio: Float): Void {
      var args = new ArrayList();
      if (centerYRatio != null) {
          args.append(centerYRatio);
      }
      NativeObject.callStatic('ImGui', 'SetScrollHereY', args);
  }
  public static function setScrollX(scrollX: Float): Void {
      var args = new ArrayList();
      args.append(scrollX);
      NativeObject.callStatic('ImGui', 'SetScrollX', args);
  }
  public static function setScrollY(scrollY: Float): Void {
      var args = new ArrayList();
      args.append(scrollY);
      NativeObject.callStatic('ImGui', 'SetScrollY', args);
  }
  public static function setTabItemClosed(tabOrDockedWindowLabel: String): Void {
      var args = new ArrayList();
      args.append(tabOrDockedWindowLabel);
      NativeObject.callStatic('ImGui', 'SetTabItemClosed', args);
  }
  public static function setTooltip(fmt: String): Void {
      var args = new ArrayList();
      args.append(fmt);
      NativeObject.callStatic('ImGui', 'SetTooltip', args);
  }
  public static function setWindowCollapsed(collapsed: Bool, ?cond: Int): Void {
      var args = new ArrayList();
      args.append(collapsed);
      if (cond != null) {
          args.append(cond);
      }
      NativeObject.callStatic('ImGui', 'SetWindowCollapsed', args);
  }
  public static function setWindowCollapsedStr(name: String, collapsed: Bool, ?cond: Int): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(collapsed);
      if (cond != null) {
          args.append(cond);
      }
      NativeObject.callStatic('ImGui', 'SetWindowCollapsedStr', args);
  }
  public static function setWindowFocus(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'SetWindowFocus', args);
  }
  public static function setWindowFocusStr(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      NativeObject.callStatic('ImGui', 'SetWindowFocusStr', args);
  }
  public static function setWindowFontScale(scale: Float): Void {
      var args = new ArrayList();
      args.append(scale);
      NativeObject.callStatic('ImGui', 'SetWindowFontScale', args);
  }
  public static function setWindowPos(pos: Vector2, ?cond: Int): Void {
      var args = new ArrayList();
      args.append(pos);
      if (cond != null) {
          args.append(cond);
      }
      NativeObject.callStatic('ImGui', 'SetWindowPos', args);
  }
  public static function setWindowPosStr(name: String, pos: Vector2, ?cond: Int): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(pos);
      if (cond != null) {
          args.append(cond);
      }
      NativeObject.callStatic('ImGui', 'SetWindowPosStr', args);
  }
  public static function setWindowSize(size: Vector2, ?cond: Int): Void {
      var args = new ArrayList();
      args.append(size);
      if (cond != null) {
          args.append(cond);
      }
      NativeObject.callStatic('ImGui', 'SetWindowSize', args);
  }
  public static function setWindowSizeStr(name: String, size: Vector2, ?cond: Int): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(size);
      if (cond != null) {
          args.append(cond);
      }
      NativeObject.callStatic('ImGui', 'SetWindowSizeStr', args);
  }
  public static function showAboutWindow(?pOpen: ArrayList): Void {
      var args = new ArrayList();
      if (pOpen != null) {
          args.append(pOpen);
      }
      NativeObject.callStatic('ImGui', 'ShowAboutWindow', args);
  }
  public static function showDebugLogWindow(?pOpen: ArrayList): Void {
      var args = new ArrayList();
      if (pOpen != null) {
          args.append(pOpen);
      }
      NativeObject.callStatic('ImGui', 'ShowDebugLogWindow', args);
  }
  public static function showDemoWindow(?pOpen: ArrayList): Void {
      var args = new ArrayList();
      if (pOpen != null) {
          args.append(pOpen);
      }
      NativeObject.callStatic('ImGui', 'ShowDemoWindow', args);
  }
  public static function showFontSelector(label: String): Void {
      var args = new ArrayList();
      args.append(label);
      NativeObject.callStatic('ImGui', 'ShowFontSelector', args);
  }
  public static function showIdStackToolWindow(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'ShowIDStackToolWindow', args);
  }
  public static function showIdStackToolWindowEx(?pOpen: ArrayList): Void {
      var args = new ArrayList();
      if (pOpen != null) {
          args.append(pOpen);
      }
      NativeObject.callStatic('ImGui', 'ShowIDStackToolWindowEx', args);
  }
  public static function showMetricsWindow(?pOpen: ArrayList): Void {
      var args = new ArrayList();
      if (pOpen != null) {
          args.append(pOpen);
      }
      NativeObject.callStatic('ImGui', 'ShowMetricsWindow', args);
  }
  public static function showStyleEditor(?ref: ImGuiStylePtr): Void {
      var args = new ArrayList();
      if (ref != null) {
          args.append(ref.native);
      }
      NativeObject.callStatic('ImGui', 'ShowStyleEditor', args);
  }
  public static function showStyleSelector(label: String): Bool {
      var args = new ArrayList();
      args.append(label);
      return NativeObject.callStatic('ImGui', 'ShowStyleSelector', args);
  }
  public static function showUserGuide(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'ShowUserGuide', args);
  }
  public static function sliderAngle(label: String, vRad: ArrayList): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(vRad);
      return NativeObject.callStatic('ImGui', 'SliderAngle', args);
  }
  public static function sliderAngleEx(label: String, vRad: ArrayList, ?vDegreesMin: Float, ?vDegreesMax: Float, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(vRad);
      if (vDegreesMin != null) {
          args.append(vDegreesMin);
      }
      if (vDegreesMax != null) {
          args.append(vDegreesMax);
      }
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'SliderAngleEx', args);
  }
  public static function sliderFloat(label: String, v: ArrayList, vMin: Float, vMax: Float): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      return NativeObject.callStatic('ImGui', 'SliderFloat', args);
  }
  public static function sliderFloat2(label: String, v: ArrayList, vMin: Float, vMax: Float): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      return NativeObject.callStatic('ImGui', 'SliderFloat2', args);
  }
  public static function sliderFloat2Ex(label: String, v: ArrayList, vMin: Float, vMax: Float, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'SliderFloat2Ex', args);
  }
  public static function sliderFloat3(label: String, v: ArrayList, vMin: Float, vMax: Float): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      return NativeObject.callStatic('ImGui', 'SliderFloat3', args);
  }
  public static function sliderFloat3Ex(label: String, v: ArrayList, vMin: Float, vMax: Float, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'SliderFloat3Ex', args);
  }
  public static function sliderFloat4(label: String, v: ArrayList, vMin: Float, vMax: Float): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      return NativeObject.callStatic('ImGui', 'SliderFloat4', args);
  }
  public static function sliderFloat4Ex(label: String, v: ArrayList, vMin: Float, vMax: Float, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'SliderFloat4Ex', args);
  }
  public static function sliderFloatEx(label: String, v: ArrayList, vMin: Float, vMax: Float, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'SliderFloatEx', args);
  }
  public static function sliderInt(label: String, v: ArrayList, vMin: Int, vMax: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      return NativeObject.callStatic('ImGui', 'SliderInt', args);
  }
  public static function sliderInt2(label: String, v: ArrayList, vMin: Int, vMax: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      return NativeObject.callStatic('ImGui', 'SliderInt2', args);
  }
  public static function sliderInt2Ex(label: String, v: ArrayList, vMin: Int, vMax: Int, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'SliderInt2Ex', args);
  }
  public static function sliderInt3(label: String, v: ArrayList, vMin: Int, vMax: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      return NativeObject.callStatic('ImGui', 'SliderInt3', args);
  }
  public static function sliderInt3Ex(label: String, v: ArrayList, vMin: Int, vMax: Int, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'SliderInt3Ex', args);
  }
  public static function sliderInt4(label: String, v: ArrayList, vMin: Int, vMax: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      return NativeObject.callStatic('ImGui', 'SliderInt4', args);
  }
  public static function sliderInt4Ex(label: String, v: ArrayList, vMin: Int, vMax: Int, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'SliderInt4Ex', args);
  }
  public static function sliderIntEx(label: String, v: ArrayList, vMin: Int, vMax: Int, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'SliderIntEx', args);
  }
  public static function smallButton(label: String): Bool {
      var args = new ArrayList();
      args.append(label);
      return NativeObject.callStatic('ImGui', 'SmallButton', args);
  }
  public static function spacing(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'Spacing', args);
  }
  public static function styleColorsClassic(?dst: ImGuiStylePtr): Void {
      var args = new ArrayList();
      if (dst != null) {
          args.append(dst.native);
      }
      NativeObject.callStatic('ImGui', 'StyleColorsClassic', args);
  }
  public static function styleColorsDark(?dst: ImGuiStylePtr): Void {
      var args = new ArrayList();
      if (dst != null) {
          args.append(dst.native);
      }
      NativeObject.callStatic('ImGui', 'StyleColorsDark', args);
  }
  public static function styleColorsLight(?dst: ImGuiStylePtr): Void {
      var args = new ArrayList();
      if (dst != null) {
          args.append(dst.native);
      }
      NativeObject.callStatic('ImGui', 'StyleColorsLight', args);
  }
  public static function tabItemButton(label: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'TabItemButton', args);
  }
  public static function tableAngledHeadersRow(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'TableAngledHeadersRow', args);
  }
  public static function tableGetColumnCount(): Int {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'TableGetColumnCount', args);
  }
  public static function tableGetColumnFlags(?columnN: Int): Int {
      var args = new ArrayList();
      if (columnN != null) {
          args.append(columnN);
      }
      return NativeObject.callStatic('ImGui', 'TableGetColumnFlags', args);
  }
  public static function tableGetColumnIndex(): Int {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'TableGetColumnIndex', args);
  }
  public static function tableGetColumnName(?columnN: Int): String {
      var args = new ArrayList();
      if (columnN != null) {
          args.append(columnN);
      }
      return NativeObject.callStatic('ImGui', 'TableGetColumnName', args);
  }
  public static function tableGetHoveredColumn(): Int {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'TableGetHoveredColumn', args);
  }
  public static function tableGetRowIndex(): Int {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'TableGetRowIndex', args);
  }
  public static function tableGetSortSpecs(): ImGuiTableSortSpecsPtr {
      var args = new ArrayList();
      var ref: NativeReference = NativeObject.callStatic('ImGui', 'TableGetSortSpecs', args);
      return new ImGuiTableSortSpecsPtr(ref);
  }
  public static function tableHeader(label: String): Void {
      var args = new ArrayList();
      args.append(label);
      NativeObject.callStatic('ImGui', 'TableHeader', args);
  }
  public static function tableHeadersRow(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'TableHeadersRow', args);
  }
  public static function tableNextColumn(): Bool {
      var args = new ArrayList();
      return NativeObject.callStatic('ImGui', 'TableNextColumn', args);
  }
  public static function tableNextRow(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'TableNextRow', args);
  }
  public static function tableNextRowEx(?rowFlags: Int, ?minRowHeight: Float): Void {
      var args = new ArrayList();
      if (rowFlags != null) {
          args.append(rowFlags);
      }
      if (minRowHeight != null) {
          args.append(minRowHeight);
      }
      NativeObject.callStatic('ImGui', 'TableNextRowEx', args);
  }
  public static function tableSetBgColor(target: Int, color: Color, ?columnN: Int): Void {
      var args = new ArrayList();
      args.append(target);
      args.append(color);
      if (columnN != null) {
          args.append(columnN);
      }
      NativeObject.callStatic('ImGui', 'TableSetBgColor', args);
  }
  public static function tableSetColumnEnabled(columnN: Int, v: Bool): Void {
      var args = new ArrayList();
      args.append(columnN);
      args.append(v);
      NativeObject.callStatic('ImGui', 'TableSetColumnEnabled', args);
  }
  public static function tableSetColumnIndex(columnN: Int): Bool {
      var args = new ArrayList();
      args.append(columnN);
      return NativeObject.callStatic('ImGui', 'TableSetColumnIndex', args);
  }
  public static function tableSetupColumn(label: String, ?flags: Int): Void {
      var args = new ArrayList();
      args.append(label);
      if (flags != null) {
          args.append(flags);
      }
      NativeObject.callStatic('ImGui', 'TableSetupColumn', args);
  }
  public static function tableSetupColumnEx(label: String, ?flags: Int, ?initWidthOrWeight: Float, ?userId: Int): Void {
      var args = new ArrayList();
      args.append(label);
      if (flags != null) {
          args.append(flags);
      }
      if (initWidthOrWeight != null) {
          args.append(initWidthOrWeight);
      }
      if (userId != null) {
          args.append(userId);
      }
      NativeObject.callStatic('ImGui', 'TableSetupColumnEx', args);
  }
  public static function tableSetupScrollFreeze(cols: Int, rows: Int): Void {
      var args = new ArrayList();
      args.append(cols);
      args.append(rows);
      NativeObject.callStatic('ImGui', 'TableSetupScrollFreeze', args);
  }
  public static function text(fmt: String): Void {
      var args = new ArrayList();
      args.append(fmt);
      NativeObject.callStatic('ImGui', 'Text', args);
  }
  public static function textColored(col: Color, fmt: String): Void {
      var args = new ArrayList();
      args.append(col);
      args.append(fmt);
      NativeObject.callStatic('ImGui', 'TextColored', args);
  }
  public static function textDisabled(fmt: String): Void {
      var args = new ArrayList();
      args.append(fmt);
      NativeObject.callStatic('ImGui', 'TextDisabled', args);
  }
  public static function textLink(label: String): Bool {
      var args = new ArrayList();
      args.append(label);
      return NativeObject.callStatic('ImGui', 'TextLink', args);
  }
  public static function textLinkOpenUrl(label: String): Void {
      var args = new ArrayList();
      args.append(label);
      NativeObject.callStatic('ImGui', 'TextLinkOpenURL', args);
  }
  public static function textLinkOpenUrlEx(label: String, ?url: String): Void {
      var args = new ArrayList();
      args.append(label);
      if (url != null) {
          args.append(url);
      }
      NativeObject.callStatic('ImGui', 'TextLinkOpenURLEx', args);
  }
  public static function textWrapped(fmt: String): Void {
      var args = new ArrayList();
      args.append(fmt);
      NativeObject.callStatic('ImGui', 'TextWrapped', args);
  }
  public static function treeNode(label: String): Bool {
      var args = new ArrayList();
      args.append(label);
      return NativeObject.callStatic('ImGui', 'TreeNode', args);
  }
  public static function treeNodeEx(label: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'TreeNodeEx', args);
  }
  public static function treeNodeExStr(strId: String, flags: Int, fmt: String): Bool {
      var args = new ArrayList();
      args.append(strId);
      args.append(flags);
      args.append(fmt);
      return NativeObject.callStatic('ImGui', 'TreeNodeExStr', args);
  }
  public static function treeNodeStr(strId: String, fmt: String): Bool {
      var args = new ArrayList();
      args.append(strId);
      args.append(fmt);
      return NativeObject.callStatic('ImGui', 'TreeNodeStr', args);
  }
  public static function treePop(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'TreePop', args);
  }
  public static function treePush(strId: String): Void {
      var args = new ArrayList();
      args.append(strId);
      NativeObject.callStatic('ImGui', 'TreePush', args);
  }
  public static function unindent(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('ImGui', 'Unindent', args);
  }
  public static function unindentEx(?indentW: Float): Void {
      var args = new ArrayList();
      if (indentW != null) {
          args.append(indentW);
      }
      NativeObject.callStatic('ImGui', 'UnindentEx', args);
  }
  public static function vSliderFloat(label: String, size: Vector2, v: ArrayList, vMin: Float, vMax: Float): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(size);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      return NativeObject.callStatic('ImGui', 'VSliderFloat', args);
  }
  public static function vSliderFloatEx(label: String, size: Vector2, v: ArrayList, vMin: Float, vMax: Float, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(size);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'VSliderFloatEx', args);
  }
  public static function vSliderInt(label: String, size: Vector2, v: ArrayList, vMin: Int, vMax: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(size);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      return NativeObject.callStatic('ImGui', 'VSliderInt', args);
  }
  public static function vSliderIntEx(label: String, size: Vector2, v: ArrayList, vMin: Int, vMax: Int, ?format: String, ?flags: Int): Bool {
      var args = new ArrayList();
      args.append(label);
      args.append(size);
      args.append(v);
      args.append(vMin);
      args.append(vMax);
      if (format != null) {
          args.append(format);
      }
      if (flags != null) {
          args.append(flags);
      }
      return NativeObject.callStatic('ImGui', 'VSliderIntEx', args);
  }
}
