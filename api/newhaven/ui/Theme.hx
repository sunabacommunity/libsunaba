package newhaven.ui;

import newhaven.core.native.NativeReference;
import newhaven.core.native.NativeObject;
import newhaven.core.Variant;
import newhaven.core.Reference;
import newhaven.core.Object;
import newhaven.Resource;
import newhaven.Font;
import newhaven.core.ArrayList;
import newhaven.core.Color;
import newhaven.core.TypedArray;
import newhaven.Texture2D;

class Theme extends Resource {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('Theme');
        }
        native = _native;
    }

    public var defaultBaseScale(get, set): Float;
    function get_defaultBaseScale(): Float {
        return native.get('default_base_scale');
    }
    function set_defaultBaseScale(value: Float): Float {
      native.set('default_base_scale', value);
        return value;
    }
    public var defaultFont(get, set): Font;
    function get_defaultFont(): Font {
        var ref: NativeReference = native.get('default_font');
        return new Font(ref);
    }
    function set_defaultFont(value: Font): Font {
      native.set('default_font', value.native);
        return value;
    }
    public var defaultFontSize(get, set): Int;
    function get_defaultFontSize(): Int {
        return native.get('default_font_size');
    }
    function set_defaultFontSize(value: Int): Int {
      native.set('default_font_size', value);
        return value;
    }

  public function addType(themeType: String): Void {
      var args = new ArrayList();
      args.append(themeType);
      native.call('add_type', args);
  }
  public function clear(): Void {
      var args = new ArrayList();
      native.call('clear', args);
  }
  public function clearColor(name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      native.call('clear_color', args);
  }
  public function clearConstant(name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      native.call('clear_constant', args);
  }
  public function clearFont(name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      native.call('clear_font', args);
  }
  public function clearFontSize(name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      native.call('clear_font_size', args);
  }
  public function clearIcon(name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      native.call('clear_icon', args);
  }
  public function clearStylebox(name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      native.call('clear_stylebox', args);
  }
  public function clearThemeItem(dataType: Int, name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(dataType);
      args.append(name);
      args.append(themeType);
      native.call('clear_theme_item', args);
  }
  public function clearTypeVariation(themeType: String): Void {
      var args = new ArrayList();
      args.append(themeType);
      native.call('clear_type_variation', args);
  }
  public function getColor(name: String, themeType: String): Color {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      return native.call('get_color', args);
  }
  public function getColorList(themeType: String): TypedArray<String> {
      var args = new ArrayList();
      args.append(themeType);
      return native.call('get_color_list', args);
  }
  public function getColorTypeList(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_color_type_list', args);
  }
  public function getConstant(name: String, themeType: String): Int {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      return native.call('get_constant', args);
  }
  public function getConstantList(themeType: String): TypedArray<String> {
      var args = new ArrayList();
      args.append(themeType);
      return native.call('get_constant_list', args);
  }
  public function getConstantTypeList(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_constant_type_list', args);
  }
  public function getFont(name: String, themeType: String): Font {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      var ref: NativeReference = native.call('get_font', args);
      return new Font(ref);
  }
  public function getFontList(themeType: String): TypedArray<String> {
      var args = new ArrayList();
      args.append(themeType);
      return native.call('get_font_list', args);
  }
  public function getFontSize(name: String, themeType: String): Int {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      return native.call('get_font_size', args);
  }
  public function getFontSizeList(themeType: String): TypedArray<String> {
      var args = new ArrayList();
      args.append(themeType);
      return native.call('get_font_size_list', args);
  }
  public function getFontSizeTypeList(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_font_size_type_list', args);
  }
  public function getFontTypeList(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_font_type_list', args);
  }
  public function getIcon(name: String, themeType: String): Texture2D {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      var ref: NativeReference = native.call('get_icon', args);
      return new Texture2D(ref);
  }
  public function getIconList(themeType: String): TypedArray<String> {
      var args = new ArrayList();
      args.append(themeType);
      return native.call('get_icon_list', args);
  }
  public function getIconTypeList(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_icon_type_list', args);
  }
  public function getStylebox(name: String, themeType: String): StyleBox {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      var ref: NativeReference = native.call('get_stylebox', args);
      return new StyleBox(ref);
  }
  public function getStyleboxList(themeType: String): TypedArray<String> {
      var args = new ArrayList();
      args.append(themeType);
      return native.call('get_stylebox_list', args);
  }
  public function getStyleboxTypeList(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_stylebox_type_list', args);
  }
  public function getThemeItem(dataType: Int, name: String, themeType: String): Variant {
      var args = new ArrayList();
      args.append(dataType);
      args.append(name);
      args.append(themeType);
      return native.call('get_theme_item', args);
  }
  public function getThemeItemList(dataType: Int, themeType: String): TypedArray<String> {
      var args = new ArrayList();
      args.append(dataType);
      args.append(themeType);
      return native.call('get_theme_item_list', args);
  }
  public function getThemeItemTypeList(dataType: Int): TypedArray<String> {
      var args = new ArrayList();
      args.append(dataType);
      return native.call('get_theme_item_type_list', args);
  }
  public function getTypeList(): TypedArray<String> {
      var args = new ArrayList();
      return native.call('get_type_list', args);
  }
  public function getTypeVariationBase(themeType: String): String {
      var args = new ArrayList();
      args.append(themeType);
      return native.call('get_type_variation_base', args);
  }
  public function getTypeVariationList(baseType: String): TypedArray<String> {
      var args = new ArrayList();
      args.append(baseType);
      return native.call('get_type_variation_list', args);
  }
  public function hasColor(name: String, themeType: String): Bool {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      return native.call('has_color', args);
  }
  public function hasConstant(name: String, themeType: String): Bool {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      return native.call('has_constant', args);
  }
  public function hasDefaultBaseScale(): Bool {
      var args = new ArrayList();
      return native.call('has_default_base_scale', args);
  }
  public function hasDefaultFont(): Bool {
      var args = new ArrayList();
      return native.call('has_default_font', args);
  }
  public function hasDefaultFontSize(): Bool {
      var args = new ArrayList();
      return native.call('has_default_font_size', args);
  }
  public function hasFont(name: String, themeType: String): Bool {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      return native.call('has_font', args);
  }
  public function hasFontSize(name: String, themeType: String): Bool {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      return native.call('has_font_size', args);
  }
  public function hasIcon(name: String, themeType: String): Bool {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      return native.call('has_icon', args);
  }
  public function hasStylebox(name: String, themeType: String): Bool {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      return native.call('has_stylebox', args);
  }
  public function hasThemeItem(dataType: Int, name: String, themeType: String): Bool {
      var args = new ArrayList();
      args.append(dataType);
      args.append(name);
      args.append(themeType);
      return native.call('has_theme_item', args);
  }
  public function isTypeVariation(themeType: String, baseType: String): Bool {
      var args = new ArrayList();
      args.append(themeType);
      args.append(baseType);
      return native.call('is_type_variation', args);
  }
  public function mergeWith(other: Theme): Void {
      var args = new ArrayList();
      args.append(other.native);
      native.call('merge_with', args);
  }
  public function removeType(themeType: String): Void {
      var args = new ArrayList();
      args.append(themeType);
      native.call('remove_type', args);
  }
  public function renameColor(oldName: String, name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(oldName);
      args.append(name);
      args.append(themeType);
      native.call('rename_color', args);
  }
  public function renameConstant(oldName: String, name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(oldName);
      args.append(name);
      args.append(themeType);
      native.call('rename_constant', args);
  }
  public function renameFont(oldName: String, name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(oldName);
      args.append(name);
      args.append(themeType);
      native.call('rename_font', args);
  }
  public function renameFontSize(oldName: String, name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(oldName);
      args.append(name);
      args.append(themeType);
      native.call('rename_font_size', args);
  }
  public function renameIcon(oldName: String, name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(oldName);
      args.append(name);
      args.append(themeType);
      native.call('rename_icon', args);
  }
  public function renameStylebox(oldName: String, name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(oldName);
      args.append(name);
      args.append(themeType);
      native.call('rename_stylebox', args);
  }
  public function renameThemeItem(dataType: Int, oldName: String, name: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(dataType);
      args.append(oldName);
      args.append(name);
      args.append(themeType);
      native.call('rename_theme_item', args);
  }
  public function renameType(oldThemeType: String, themeType: String): Void {
      var args = new ArrayList();
      args.append(oldThemeType);
      args.append(themeType);
      native.call('rename_type', args);
  }
  public function setColor(name: String, themeType: String, color: Color): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      args.append(color);
      native.call('set_color', args);
  }
  public function setConstant(name: String, themeType: String, constant: Int): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      args.append(constant);
      native.call('set_constant', args);
  }
  public function setFont(name: String, themeType: String, font: Font): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      args.append(font.native);
      native.call('set_font', args);
  }
  public function setFontSize(name: String, themeType: String, fontSize: Int): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      args.append(fontSize);
      native.call('set_font_size', args);
  }
  public function setIcon(name: String, themeType: String, texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      args.append(texture.native);
      native.call('set_icon', args);
  }
  public function setStylebox(name: String, themeType: String, texture: StyleBox): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(themeType);
      args.append(texture.native);
      native.call('set_stylebox', args);
  }
  public function setThemeItem(dataType: Int, name: String, themeType: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(dataType);
      args.append(name);
      args.append(themeType);
      args.append(value);
      native.call('set_theme_item', args);
  }
  public function setTypeVariation(themeType: String, baseType: String): Void {
      var args = new ArrayList();
      args.append(themeType);
      args.append(baseType);
      native.call('set_type_variation', args);
  }
}
