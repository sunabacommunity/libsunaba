package sunaba.ui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.Texture2D;
import sunaba.core.Color;
import sunaba.Font;
import sunaba.core.Rect2;
import sunaba.core.Dictionary;

class TreeItem extends Object {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('TreeItem');
        }
        native = _native;
    }

    public var collapsed(get, set): Bool;
    function get_collapsed(): Bool {
        return native.get('collapsed');
    }
    function set_collapsed(value: Bool): Bool {
      native.set('collapsed', value);
        return value;
    }
    public var customMinimumHeight(get, set): Int;
    function get_customMinimumHeight(): Int {
        return native.get('custom_minimum_height');
    }
    function set_customMinimumHeight(value: Int): Int {
      native.set('custom_minimum_height', value);
        return value;
    }
    public var disableFolding(get, set): Bool;
    function get_disableFolding(): Bool {
        return native.get('disable_folding');
    }
    function set_disableFolding(value: Bool): Bool {
      native.set('disable_folding', value);
        return value;
    }
    public var visible(get, set): Bool;
    function get_visible(): Bool {
        return native.get('visible');
    }
    function set_visible(value: Bool): Bool {
      native.set('visible', value);
        return value;
    }


  public function addButton(column: Int, button: Texture2D, ?id: Int, ?disabled: Bool, ?tooltipText: String, ?description: String): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(button.native);
      if (id != null) {
          args.append(id);
      }
      if (disabled != null) {
          args.append(disabled);
      }
      if (tooltipText != null) {
          args.append(tooltipText);
      }
      if (description != null) {
          args.append(description);
      }
      native.call('add_button', args);
  }
  public function addChild(child: TreeItem): Void {
      var args = new ArrayList();
      args.append(child.native);
      native.call('add_child', args);
  }
  public function callRecursive(method: String): Void {
      var args = new ArrayList();
      args.append(method);
      native.call('call_recursive', args);
  }
  public function clearButtons(): Void {
      var args = new ArrayList();
      native.call('clear_buttons', args);
  }
  public function clearCustomBgColor(column: Int): Void {
      var args = new ArrayList();
      args.append(column);
      native.call('clear_custom_bg_color', args);
  }
  public function clearCustomColor(column: Int): Void {
      var args = new ArrayList();
      args.append(column);
      native.call('clear_custom_color', args);
  }
  public function createChild(?index: Int): TreeItem {
      var args = new ArrayList();
      if (index != null) {
          args.append(index);
      }
      var ref: NativeObject = native.call('create_child', args);
      return new TreeItem(ref);
  }
  public function deselect(column: Int): Void {
      var args = new ArrayList();
      args.append(column);
      native.call('deselect', args);
  }
  public function eraseButton(column: Int, buttonIndex: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(buttonIndex);
      native.call('erase_button', args);
  }
  public function getAutoTranslateMode(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_auto_translate_mode', args);
  }
  public function getAutowrapMode(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_autowrap_mode', args);
  }
  public function getButton(column: Int, buttonIndex: Int): Texture2D {
      var args = new ArrayList();
      args.append(column);
      args.append(buttonIndex);
      var ref: NativeReference = native.call('get_button', args);
      return new Texture2D(ref);
  }
  public function getButtonById(column: Int, id: Int): Int {
      var args = new ArrayList();
      args.append(column);
      args.append(id);
      return native.call('get_button_by_id', args);
  }
  public function getButtonColor(column: Int, id: Int): Color {
      var args = new ArrayList();
      args.append(column);
      args.append(id);
      return native.call('get_button_color', args);
  }
  public function getButtonCount(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_button_count', args);
  }
  public function getButtonId(column: Int, buttonIndex: Int): Int {
      var args = new ArrayList();
      args.append(column);
      args.append(buttonIndex);
      return native.call('get_button_id', args);
  }
  public function getButtonTooltipText(column: Int, buttonIndex: Int): String {
      var args = new ArrayList();
      args.append(column);
      args.append(buttonIndex);
      return native.call('get_button_tooltip_text', args);
  }
  public function getCellMode(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_cell_mode', args);
  }
  public function getChild(index: Int): TreeItem {
      var args = new ArrayList();
      args.append(index);
      var ref: NativeObject = native.call('get_child', args);
      return new TreeItem(ref);
  }
  public function getChildCount(): Int {
      var args = new ArrayList();
      return native.call('get_child_count', args);
  }
  public function getCustomBgColor(column: Int): Color {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_custom_bg_color', args);
  }
  public function getCustomColor(column: Int): Color {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_custom_color', args);
  }
  public function getCustomFont(column: Int): Font {
      var args = new ArrayList();
      args.append(column);
      var ref: NativeReference = native.call('get_custom_font', args);
      return new Font(ref);
  }
  public function getCustomFontSize(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_custom_font_size', args);
  }
  public function getDescription(column: Int): String {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_description', args);
  }
  public function getExpandRight(column: Int): Bool {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_expand_right', args);
  }
  public function getFirstChild(): TreeItem {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_first_child', args);
      return new TreeItem(ref);
  }
  public function getIcon(column: Int): Texture2D {
      var args = new ArrayList();
      args.append(column);
      var ref: NativeReference = native.call('get_icon', args);
      return new Texture2D(ref);
  }
  public function getIconMaxWidth(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_icon_max_width', args);
  }
  public function getIconModulate(column: Int): Color {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_icon_modulate', args);
  }
  public function getIconOverlay(column: Int): Texture2D {
      var args = new ArrayList();
      args.append(column);
      var ref: NativeReference = native.call('get_icon_overlay', args);
      return new Texture2D(ref);
  }
  public function getIconRegion(column: Int): Rect2 {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_icon_region', args);
  }
  public function getIndex(): Int {
      var args = new ArrayList();
      return native.call('get_index', args);
  }
  public function getLanguage(column: Int): String {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_language', args);
  }
  public function getMetadata(column: Int): Variant {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_metadata', args);
  }
  public function getNext(): TreeItem {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_next', args);
      return new TreeItem(ref);
  }
  public function getNextInTree(?wrap: Bool): TreeItem {
      var args = new ArrayList();
      if (wrap != null) {
          args.append(wrap);
      }
      var ref: NativeObject = native.call('get_next_in_tree', args);
      return new TreeItem(ref);
  }
  public function getNextVisible(?wrap: Bool): TreeItem {
      var args = new ArrayList();
      if (wrap != null) {
          args.append(wrap);
      }
      var ref: NativeObject = native.call('get_next_visible', args);
      return new TreeItem(ref);
  }
  public function getParent(): TreeItem {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_parent', args);
      return new TreeItem(ref);
  }
  public function getPrev(): TreeItem {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_prev', args);
      return new TreeItem(ref);
  }
  public function getPrevInTree(?wrap: Bool): TreeItem {
      var args = new ArrayList();
      if (wrap != null) {
          args.append(wrap);
      }
      var ref: NativeObject = native.call('get_prev_in_tree', args);
      return new TreeItem(ref);
  }
  public function getPrevVisible(?wrap: Bool): TreeItem {
      var args = new ArrayList();
      if (wrap != null) {
          args.append(wrap);
      }
      var ref: NativeObject = native.call('get_prev_visible', args);
      return new TreeItem(ref);
  }
  public function getRange(column: Int): Float {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_range', args);
  }
  public function getRangeConfig(column: Int): Dictionary {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_range_config', args);
  }
  public function getStructuredTextBidiOverride(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_structured_text_bidi_override', args);
  }
  public function getStructuredTextBidiOverrideOptions(column: Int): ArrayList {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_structured_text_bidi_override_options', args);
  }
  public function getSuffix(column: Int): String {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_suffix', args);
  }
  public function getText(column: Int): String {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_text', args);
  }
  public function getTextAlignment(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_text_alignment', args);
  }
  public function getTextDirection(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_text_direction', args);
  }
  public function getTextOverrunBehavior(column: Int): Int {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_text_overrun_behavior', args);
  }
  public function getTooltipText(column: Int): String {
      var args = new ArrayList();
      args.append(column);
      return native.call('get_tooltip_text', args);
  }
  public function getTree(): Tree {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_tree', args);
      return new Tree(ref);
  }
  public function isAnyCollapsed(?onlyVisible: Bool): Bool {
      var args = new ArrayList();
      if (onlyVisible != null) {
          args.append(onlyVisible);
      }
      return native.call('is_any_collapsed', args);
  }
  public function isButtonDisabled(column: Int, buttonIndex: Int): Bool {
      var args = new ArrayList();
      args.append(column);
      args.append(buttonIndex);
      return native.call('is_button_disabled', args);
  }
  public function isChecked(column: Int): Bool {
      var args = new ArrayList();
      args.append(column);
      return native.call('is_checked', args);
  }
  public function isCustomSetAsButton(column: Int): Bool {
      var args = new ArrayList();
      args.append(column);
      return native.call('is_custom_set_as_button', args);
  }
  public function isEditMultiline(column: Int): Bool {
      var args = new ArrayList();
      args.append(column);
      return native.call('is_edit_multiline', args);
  }
  public function isEditable(column: Int): Bool {
      var args = new ArrayList();
      args.append(column);
      return native.call('is_editable', args);
  }
  public function isIndeterminate(column: Int): Bool {
      var args = new ArrayList();
      args.append(column);
      return native.call('is_indeterminate', args);
  }
  public function isSelectable(column: Int): Bool {
      var args = new ArrayList();
      args.append(column);
      return native.call('is_selectable', args);
  }
  public function isSelected(column: Int): Bool {
      var args = new ArrayList();
      args.append(column);
      return native.call('is_selected', args);
  }
  public function isVisibleInTree(): Bool {
      var args = new ArrayList();
      return native.call('is_visible_in_tree', args);
  }
  public function moveAfter(item: TreeItem): Void {
      var args = new ArrayList();
      args.append(item.native);
      native.call('move_after', args);
  }
  public function moveBefore(item: TreeItem): Void {
      var args = new ArrayList();
      args.append(item.native);
      native.call('move_before', args);
  }
  public function propagateCheck(column: Int, ?emitSignal: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      if (emitSignal != null) {
          args.append(emitSignal);
      }
      native.call('propagate_check', args);
  }
  public function removeChild(child: TreeItem): Void {
      var args = new ArrayList();
      args.append(child.native);
      native.call('remove_child', args);
  }
  public function select(column: Int): Void {
      var args = new ArrayList();
      args.append(column);
      native.call('select', args);
  }
  public function setAutoTranslateMode(column: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(mode);
      native.call('set_auto_translate_mode', args);
  }
  public function setAutowrapMode(column: Int, autowrapMode: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(autowrapMode);
      native.call('set_autowrap_mode', args);
  }
  public function setButton(column: Int, buttonIndex: Int, button: Texture2D): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(buttonIndex);
      args.append(button.native);
      native.call('set_button', args);
  }
  public function setButtonColor(column: Int, buttonIndex: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(buttonIndex);
      args.append(color);
      native.call('set_button_color', args);
  }
  public function setButtonDescription(column: Int, buttonIndex: Int, description: String): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(buttonIndex);
      args.append(description);
      native.call('set_button_description', args);
  }
  public function setButtonDisabled(column: Int, buttonIndex: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(buttonIndex);
      args.append(disabled);
      native.call('set_button_disabled', args);
  }
  public function setButtonTooltipText(column: Int, buttonIndex: Int, tooltip: String): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(buttonIndex);
      args.append(tooltip);
      native.call('set_button_tooltip_text', args);
  }
  public function setCellMode(column: Int, mode: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(mode);
      native.call('set_cell_mode', args);
  }
  public function setChecked(column: Int, checked: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(checked);
      native.call('set_checked', args);
  }
  public function setCollapsedRecursive(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      native.call('set_collapsed_recursive', args);
  }
  public function setCustomAsButton(column: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(enable);
      native.call('set_custom_as_button', args);
  }
  public function setCustomBgColor(column: Int, color: Color, ?justOutline: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(color);
      if (justOutline != null) {
          args.append(justOutline);
      }
      native.call('set_custom_bg_color', args);
  }
  public function setCustomColor(column: Int, color: Color): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(color);
      native.call('set_custom_color', args);
  }
  public function setCustomDraw(column: Int, object: Variant, callback: String): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(object);
      args.append(callback);
      native.call('set_custom_draw', args);
  }
  public function setCustomDrawCallback(column: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(callback);
      native.call('set_custom_draw_callback', args);
  }
  public function setCustomFont(column: Int, font: Font): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(font.native);
      native.call('set_custom_font', args);
  }
  public function setCustomFontSize(column: Int, fontSize: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(fontSize);
      native.call('set_custom_font_size', args);
  }
  public function setDescription(column: Int, description: String): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(description);
      native.call('set_description', args);
  }
  public function setEditMultiline(column: Int, multiline: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(multiline);
      native.call('set_edit_multiline', args);
  }
  public function setEditable(column: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(enabled);
      native.call('set_editable', args);
  }
  public function setExpandRight(column: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(enable);
      native.call('set_expand_right', args);
  }
  public function setIcon(column: Int, texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(texture.native);
      native.call('set_icon', args);
  }
  public function setIconMaxWidth(column: Int, width: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(width);
      native.call('set_icon_max_width', args);
  }
  public function setIconModulate(column: Int, modulate: Color): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(modulate);
      native.call('set_icon_modulate', args);
  }
  public function setIconOverlay(column: Int, texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(texture.native);
      native.call('set_icon_overlay', args);
  }
  public function setIconRegion(column: Int, region: Rect2): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(region);
      native.call('set_icon_region', args);
  }
  public function setIndeterminate(column: Int, indeterminate: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(indeterminate);
      native.call('set_indeterminate', args);
  }
  public function setLanguage(column: Int, language: String): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(language);
      native.call('set_language', args);
  }
  public function setMetadata(column: Int, meta: Variant): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(meta);
      native.call('set_metadata', args);
  }
  public function setRange(column: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(value);
      native.call('set_range', args);
  }
  public function setRangeConfig(column: Int, min: Float, max: Float, step: Float, ?expr: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(min);
      args.append(max);
      args.append(step);
      if (expr != null) {
          args.append(expr);
      }
      native.call('set_range_config', args);
  }
  public function setSelectable(column: Int, selectable: Bool): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(selectable);
      native.call('set_selectable', args);
  }
  public function setStructuredTextBidiOverride(column: Int, parser: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(parser);
      native.call('set_structured_text_bidi_override', args);
  }
  public function setStructuredTextBidiOverrideOptions(column: Int, args: ArrayList): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(args);
      native.call('set_structured_text_bidi_override_options', args);
  }
  public function setSuffix(column: Int, text: String): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(text);
      native.call('set_suffix', args);
  }
  public function setText(column: Int, text: String): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(text);
      native.call('set_text', args);
  }
  public function setTextAlignment(column: Int, textAlignment: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(textAlignment);
      native.call('set_text_alignment', args);
  }
  public function setTextDirection(column: Int, direction: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(direction);
      native.call('set_text_direction', args);
  }
  public function setTextOverrunBehavior(column: Int, overrunBehavior: Int): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(overrunBehavior);
      native.call('set_text_overrun_behavior', args);
  }
  public function setTooltipText(column: Int, tooltip: String): Void {
      var args = new ArrayList();
      args.append(column);
      args.append(tooltip);
      native.call('set_tooltip_text', args);
  }
  public function uncollapseTree(): Void {
      var args = new ArrayList();
      native.call('uncollapse_tree', args);
  }
}
