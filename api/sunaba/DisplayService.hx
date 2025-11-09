package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.Rect2;
import sunaba.core.Color;
import sunaba.core.Vector2;
import sunaba.core.TypedArray;
import sunaba.core.Rect2i;
import sunaba.core.Vector2i;
import sunaba.core.Dictionary;
import sunaba.core.Vector3i;
import sunaba.core.Vector2;

class DisplayService extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('DisplayServer');
        }
        return _native;
    }



  public static function accessibilityCreateElement(windowId: Int, role: Int): Variant {
      var args = new ArrayList();
      args.append(windowId);
      args.append(role);
      return getNative().call('accessibility_create_element', args);
  }
  public static function accessibilityCreateSubElement(parentRid: Variant, role: Int, ?insertPos: Int): Variant {
      var args = new ArrayList();
      args.append(parentRid);
      args.append(role);
      if (insertPos != null) {
          args.append(insertPos);
      }
      return getNative().call('accessibility_create_sub_element', args);
  }
  public static function accessibilityCreateSubTextEditElements(parentRid: Variant, shapedText: Variant, minHeight: Float, ?insertPos: Int): Variant {
      var args = new ArrayList();
      args.append(parentRid);
      args.append(shapedText);
      args.append(minHeight);
      if (insertPos != null) {
          args.append(insertPos);
      }
      return getNative().call('accessibility_create_sub_text_edit_elements', args);
  }
  public static function accessibilityElementGetMeta(id: Variant): Variant {
      var args = new ArrayList();
      args.append(id);
      return getNative().call('accessibility_element_get_meta', args);
  }
  public static function accessibilityElementSetMeta(id: Variant, meta: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(meta);
      getNative().call('accessibility_element_set_meta', args);
  }
  public static function accessibilityFreeElement(id: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      getNative().call('accessibility_free_element', args);
  }
  public static function accessibilityGetWindowRoot(windowId: Int): Variant {
      var args = new ArrayList();
      args.append(windowId);
      return getNative().call('accessibility_get_window_root', args);
  }
  public static function accessibilityHasElement(id: Variant): Bool {
      var args = new ArrayList();
      args.append(id);
      return getNative().call('accessibility_has_element', args);
  }
  public static function accessibilityScreenReaderActive(): Int {
      var args = new ArrayList();
      return getNative().call('accessibility_screen_reader_active', args);
  }
  public static function accessibilitySetWindowFocused(windowId: Int, focused: Bool): Void {
      var args = new ArrayList();
      args.append(windowId);
      args.append(focused);
      getNative().call('accessibility_set_window_focused', args);
  }
  public static function accessibilitySetWindowRect(windowId: Int, rectOut: Rect2, rectIn: Rect2): Void {
      var args = new ArrayList();
      args.append(windowId);
      args.append(rectOut);
      args.append(rectIn);
      getNative().call('accessibility_set_window_rect', args);
  }
  public static function accessibilityShouldIncreaseContrast(): Int {
      var args = new ArrayList();
      return getNative().call('accessibility_should_increase_contrast', args);
  }
  public static function accessibilityShouldReduceAnimation(): Int {
      var args = new ArrayList();
      return getNative().call('accessibility_should_reduce_animation', args);
  }
  public static function accessibilityShouldReduceTransparency(): Int {
      var args = new ArrayList();
      return getNative().call('accessibility_should_reduce_transparency', args);
  }
  public static function accessibilityUpdateAddAction(id: Variant, action: Int, callable: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(action);
      args.append(callable);
      getNative().call('accessibility_update_add_action', args);
  }
  public static function accessibilityUpdateAddChild(id: Variant, childId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(childId);
      getNative().call('accessibility_update_add_child', args);
  }
  public static function accessibilityUpdateAddCustomAction(id: Variant, actionId: Int, actionDescription: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(actionId);
      args.append(actionDescription);
      getNative().call('accessibility_update_add_custom_action', args);
  }
  public static function accessibilityUpdateAddRelatedControls(id: Variant, relatedId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(relatedId);
      getNative().call('accessibility_update_add_related_controls', args);
  }
  public static function accessibilityUpdateAddRelatedDescribedBy(id: Variant, relatedId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(relatedId);
      getNative().call('accessibility_update_add_related_described_by', args);
  }
  public static function accessibilityUpdateAddRelatedDetails(id: Variant, relatedId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(relatedId);
      getNative().call('accessibility_update_add_related_details', args);
  }
  public static function accessibilityUpdateAddRelatedFlowTo(id: Variant, relatedId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(relatedId);
      getNative().call('accessibility_update_add_related_flow_to', args);
  }
  public static function accessibilityUpdateAddRelatedLabeledBy(id: Variant, relatedId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(relatedId);
      getNative().call('accessibility_update_add_related_labeled_by', args);
  }
  public static function accessibilityUpdateAddRelatedRadioGroup(id: Variant, relatedId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(relatedId);
      getNative().call('accessibility_update_add_related_radio_group', args);
  }
  public static function accessibilityUpdateSetActiveDescendant(id: Variant, otherId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(otherId);
      getNative().call('accessibility_update_set_active_descendant', args);
  }
  public static function accessibilityUpdateSetBackgroundColor(id: Variant, color: Color): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(color);
      getNative().call('accessibility_update_set_background_color', args);
  }
  public static function accessibilityUpdateSetBounds(id: Variant, pRect: Rect2): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(pRect);
      getNative().call('accessibility_update_set_bounds', args);
  }
  public static function accessibilityUpdateSetChecked(id: Variant, checekd: Bool): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(checekd);
      getNative().call('accessibility_update_set_checked', args);
  }
  public static function accessibilityUpdateSetClassname(id: Variant, classname: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(classname);
      getNative().call('accessibility_update_set_classname', args);
  }
  public static function accessibilityUpdateSetColorValue(id: Variant, color: Color): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(color);
      getNative().call('accessibility_update_set_color_value', args);
  }
  public static function accessibilityUpdateSetDescription(id: Variant, description: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(description);
      getNative().call('accessibility_update_set_description', args);
  }
  public static function accessibilityUpdateSetErrorMessage(id: Variant, otherId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(otherId);
      getNative().call('accessibility_update_set_error_message', args);
  }
  public static function accessibilityUpdateSetExtraInfo(id: Variant, name: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(name);
      getNative().call('accessibility_update_set_extra_info', args);
  }
  public static function accessibilityUpdateSetFlag(id: Variant, flag: Int, value: Bool): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(flag);
      args.append(value);
      getNative().call('accessibility_update_set_flag', args);
  }
  public static function accessibilityUpdateSetFocus(id: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      getNative().call('accessibility_update_set_focus', args);
  }
  public static function accessibilityUpdateSetForegroundColor(id: Variant, color: Color): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(color);
      getNative().call('accessibility_update_set_foreground_color', args);
  }
  public static function accessibilityUpdateSetInPageLinkTarget(id: Variant, otherId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(otherId);
      getNative().call('accessibility_update_set_in_page_link_target', args);
  }
  public static function accessibilityUpdateSetLanguage(id: Variant, language: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(language);
      getNative().call('accessibility_update_set_language', args);
  }
  public static function accessibilityUpdateSetListItemCount(id: Variant, size: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(size);
      getNative().call('accessibility_update_set_list_item_count', args);
  }
  public static function accessibilityUpdateSetListItemExpanded(id: Variant, expanded: Bool): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(expanded);
      getNative().call('accessibility_update_set_list_item_expanded', args);
  }
  public static function accessibilityUpdateSetListItemIndex(id: Variant, index: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(index);
      getNative().call('accessibility_update_set_list_item_index', args);
  }
  public static function accessibilityUpdateSetListItemLevel(id: Variant, level: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(level);
      getNative().call('accessibility_update_set_list_item_level', args);
  }
  public static function accessibilityUpdateSetListItemSelected(id: Variant, selected: Bool): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(selected);
      getNative().call('accessibility_update_set_list_item_selected', args);
  }
  public static function accessibilityUpdateSetListOrientation(id: Variant, vertical: Bool): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(vertical);
      getNative().call('accessibility_update_set_list_orientation', args);
  }
  public static function accessibilityUpdateSetLive(id: Variant, live: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(live);
      getNative().call('accessibility_update_set_live', args);
  }
  public static function accessibilityUpdateSetMemberOf(id: Variant, groupId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(groupId);
      getNative().call('accessibility_update_set_member_of', args);
  }
  public static function accessibilityUpdateSetName(id: Variant, name: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(name);
      getNative().call('accessibility_update_set_name', args);
  }
  public static function accessibilityUpdateSetNextOnLine(id: Variant, otherId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(otherId);
      getNative().call('accessibility_update_set_next_on_line', args);
  }
  public static function accessibilityUpdateSetNumJump(id: Variant, jump: Float): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(jump);
      getNative().call('accessibility_update_set_num_jump', args);
  }
  public static function accessibilityUpdateSetNumRange(id: Variant, min: Float, max: Float): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(min);
      args.append(max);
      getNative().call('accessibility_update_set_num_range', args);
  }
  public static function accessibilityUpdateSetNumStep(id: Variant, step: Float): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(step);
      getNative().call('accessibility_update_set_num_step', args);
  }
  public static function accessibilityUpdateSetNumValue(id: Variant, position: Float): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(position);
      getNative().call('accessibility_update_set_num_value', args);
  }
  public static function accessibilityUpdateSetPlaceholder(id: Variant, placeholder: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(placeholder);
      getNative().call('accessibility_update_set_placeholder', args);
  }
  public static function accessibilityUpdateSetPopupType(id: Variant, popup: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(popup);
      getNative().call('accessibility_update_set_popup_type', args);
  }
  public static function accessibilityUpdateSetPreviousOnLine(id: Variant, otherId: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(otherId);
      getNative().call('accessibility_update_set_previous_on_line', args);
  }
  public static function accessibilityUpdateSetRole(id: Variant, role: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(role);
      getNative().call('accessibility_update_set_role', args);
  }
  public static function accessibilityUpdateSetRoleDescription(id: Variant, description: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(description);
      getNative().call('accessibility_update_set_role_description', args);
  }
  public static function accessibilityUpdateSetScrollX(id: Variant, position: Float): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(position);
      getNative().call('accessibility_update_set_scroll_x', args);
  }
  public static function accessibilityUpdateSetScrollXRange(id: Variant, min: Float, max: Float): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(min);
      args.append(max);
      getNative().call('accessibility_update_set_scroll_x_range', args);
  }
  public static function accessibilityUpdateSetScrollY(id: Variant, position: Float): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(position);
      getNative().call('accessibility_update_set_scroll_y', args);
  }
  public static function accessibilityUpdateSetScrollYRange(id: Variant, min: Float, max: Float): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(min);
      args.append(max);
      getNative().call('accessibility_update_set_scroll_y_range', args);
  }
  public static function accessibilityUpdateSetShortcut(id: Variant, shortcut: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(shortcut);
      getNative().call('accessibility_update_set_shortcut', args);
  }
  public static function accessibilityUpdateSetStateDescription(id: Variant, description: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(description);
      getNative().call('accessibility_update_set_state_description', args);
  }
  public static function accessibilityUpdateSetTableCellPosition(id: Variant, rowIndex: Int, columnIndex: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(rowIndex);
      args.append(columnIndex);
      getNative().call('accessibility_update_set_table_cell_position', args);
  }
  public static function accessibilityUpdateSetTableCellSpan(id: Variant, rowSpan: Int, columnSpan: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(rowSpan);
      args.append(columnSpan);
      getNative().call('accessibility_update_set_table_cell_span', args);
  }
  public static function accessibilityUpdateSetTableColumnCount(id: Variant, count: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(count);
      getNative().call('accessibility_update_set_table_column_count', args);
  }
  public static function accessibilityUpdateSetTableColumnIndex(id: Variant, index: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(index);
      getNative().call('accessibility_update_set_table_column_index', args);
  }
  public static function accessibilityUpdateSetTableRowCount(id: Variant, count: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(count);
      getNative().call('accessibility_update_set_table_row_count', args);
  }
  public static function accessibilityUpdateSetTableRowIndex(id: Variant, index: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(index);
      getNative().call('accessibility_update_set_table_row_index', args);
  }
  public static function accessibilityUpdateSetTextAlign(id: Variant, align: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(align);
      getNative().call('accessibility_update_set_text_align', args);
  }
  public static function accessibilityUpdateSetTextDecorations(id: Variant, underline: Bool, strikethrough: Bool, overline: Bool): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(underline);
      args.append(strikethrough);
      args.append(overline);
      getNative().call('accessibility_update_set_text_decorations', args);
  }
  public static function accessibilityUpdateSetTextOrientation(id: Variant, vertical: Bool): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(vertical);
      getNative().call('accessibility_update_set_text_orientation', args);
  }
  public static function accessibilityUpdateSetTextSelection(id: Variant, textStartId: Variant, startChar: Int, textEndId: Variant, endChar: Int): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(textStartId);
      args.append(startChar);
      args.append(textEndId);
      args.append(endChar);
      getNative().call('accessibility_update_set_text_selection', args);
  }
  public static function accessibilityUpdateSetTooltip(id: Variant, tooltip: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(tooltip);
      getNative().call('accessibility_update_set_tooltip', args);
  }
  public static function accessibilityUpdateSetTransform(id: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(transform);
      getNative().call('accessibility_update_set_transform', args);
  }
  public static function accessibilityUpdateSetUrl(id: Variant, url: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(url);
      getNative().call('accessibility_update_set_url', args);
  }
  public static function accessibilityUpdateSetValue(id: Variant, value: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(value);
      getNative().call('accessibility_update_set_value', args);
  }
  public static function beep(): Void {
      var args = new ArrayList();
      getNative().call('beep', args);
  }
  public static function clipboardGet(): String {
      var args = new ArrayList();
      return getNative().call('clipboard_get', args);
  }
  public static function clipboardGetImage(): Image {
      var args = new ArrayList();
      var ref: NativeReference = getNative().call('clipboard_get_image', args);
      return new Image(ref);
  }
  public static function clipboardGetPrimary(): String {
      var args = new ArrayList();
      return getNative().call('clipboard_get_primary', args);
  }
  public static function clipboardHas(): Bool {
      var args = new ArrayList();
      return getNative().call('clipboard_has', args);
  }
  public static function clipboardHasImage(): Bool {
      var args = new ArrayList();
      return getNative().call('clipboard_has_image', args);
  }
  public static function clipboardSet(clipboard: String): Void {
      var args = new ArrayList();
      args.append(clipboard);
      getNative().call('clipboard_set', args);
  }
  public static function clipboardSetPrimary(clipboardPrimary: String): Void {
      var args = new ArrayList();
      args.append(clipboardPrimary);
      getNative().call('clipboard_set_primary', args);
  }
  public static function colorPicker(callback: Variant): Bool {
      var args = new ArrayList();
      args.append(callback);
      return getNative().call('color_picker', args);
  }
  public static function createStatusIndicator(icon: Texture2D, tooltip: String, callback: Variant): Int {
      var args = new ArrayList();
      args.append(icon.native);
      args.append(tooltip);
      args.append(callback);
      return getNative().call('create_status_indicator', args);
  }
  public static function cursorGetShape(): Int {
      var args = new ArrayList();
      return getNative().call('cursor_get_shape', args);
  }
  public static function cursorSetCustomImage(cursor: Resource, ?shape: Int, ?hotspot: Vector2): Void {
      var args = new ArrayList();
      args.append(cursor.native);
      if (shape != null) {
          args.append(shape);
      }
      if (hotspot != null) {
          args.append(hotspot);
      }
      getNative().call('cursor_set_custom_image', args);
  }
  public static function cursorSetShape(shape: Int): Void {
      var args = new ArrayList();
      args.append(shape);
      getNative().call('cursor_set_shape', args);
  }
  public static function deleteStatusIndicator(id: Int): Void {
      var args = new ArrayList();
      args.append(id);
      getNative().call('delete_status_indicator', args);
  }
  public static function dialogInputText(title: String, description: String, existingText: String, callback: Variant): Int {
      var args = new ArrayList();
      args.append(title);
      args.append(description);
      args.append(existingText);
      args.append(callback);
      return getNative().call('dialog_input_text', args);
  }
  public static function dialogShow(title: String, description: String, buttons: TypedArray<String>, callback: Variant): Int {
      var args = new ArrayList();
      args.append(title);
      args.append(description);
      args.append(buttons);
      args.append(callback);
      return getNative().call('dialog_show', args);
  }
  public static function enableForStealingFocus(processId: Int): Void {
      var args = new ArrayList();
      args.append(processId);
      getNative().call('enable_for_stealing_focus', args);
  }
  public static function fileDialogShow(title: String, currentDirectory: String, filename: String, showHidden: Bool, mode: Int, filters: TypedArray<String>, callback: Variant, ?parentWindowId: Int): Int {
      var args = new ArrayList();
      args.append(title);
      args.append(currentDirectory);
      args.append(filename);
      args.append(showHidden);
      args.append(mode);
      args.append(filters);
      args.append(callback);
      if (parentWindowId != null) {
          args.append(parentWindowId);
      }
      return getNative().call('file_dialog_show', args);
  }
  public static function fileDialogWithOptionsShow(title: String, currentDirectory: String, root: String, filename: String, showHidden: Bool, mode: Int, filters: TypedArray<String>, options: Variant, callback: Variant, ?parentWindowId: Int): Int {
      var args = new ArrayList();
      args.append(title);
      args.append(currentDirectory);
      args.append(root);
      args.append(filename);
      args.append(showHidden);
      args.append(mode);
      args.append(filters);
      args.append(options);
      args.append(callback);
      if (parentWindowId != null) {
          args.append(parentWindowId);
      }
      return getNative().call('file_dialog_with_options_show', args);
  }
  public static function forceProcessAndDropEvents(): Void {
      var args = new ArrayList();
      getNative().call('force_process_and_drop_events', args);
  }
  public static function getAccentColor(): Color {
      var args = new ArrayList();
      return getNative().call('get_accent_color', args);
  }
  public static function getBaseColor(): Color {
      var args = new ArrayList();
      return getNative().call('get_base_color', args);
  }
  public static function getDisplaySafeArea(): Rect2i {
      var args = new ArrayList();
      return getNative().call('get_display_safe_area', args);
  }
  public static function getKeyboardFocusScreen(): Int {
      var args = new ArrayList();
      return getNative().call('get_keyboard_focus_screen', args);
  }
  public static function getName(): String {
      var args = new ArrayList();
      return getNative().call('get_name', args);
  }
  public static function getPrimaryScreen(): Int {
      var args = new ArrayList();
      return getNative().call('get_primary_screen', args);
  }
  public static function getScreenCount(): Int {
      var args = new ArrayList();
      return getNative().call('get_screen_count', args);
  }
  public static function getScreenFromRect(rect: Rect2): Int {
      var args = new ArrayList();
      args.append(rect);
      return getNative().call('get_screen_from_rect', args);
  }
  public static function getSwapCancelOk(): Bool {
      var args = new ArrayList();
      return getNative().call('get_swap_cancel_ok', args);
  }
  public static function getWindowAtScreenPosition(position: Vector2i): Int {
      var args = new ArrayList();
      args.append(position);
      return getNative().call('get_window_at_screen_position', args);
  }
  public static function getWindowList(): TypedArray<Int> {
      var args = new ArrayList();
      return getNative().call('get_window_list', args);
  }
  public static function globalMenuAddCheckItem(menuRoot: String, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(label);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('global_menu_add_check_item', args);
  }
  public static function globalMenuAddIconCheckItem(menuRoot: String, icon: Texture2D, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(icon.native);
      args.append(label);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('global_menu_add_icon_check_item', args);
  }
  public static function globalMenuAddIconItem(menuRoot: String, icon: Texture2D, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(icon.native);
      args.append(label);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('global_menu_add_icon_item', args);
  }
  public static function globalMenuAddIconRadioCheckItem(menuRoot: String, icon: Texture2D, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(icon.native);
      args.append(label);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('global_menu_add_icon_radio_check_item', args);
  }
  public static function globalMenuAddItem(menuRoot: String, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(label);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('global_menu_add_item', args);
  }
  public static function globalMenuAddMultistateItem(menuRoot: String, label: String, maxStates: Int, defaultState: Int, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(label);
      args.append(maxStates);
      args.append(defaultState);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('global_menu_add_multistate_item', args);
  }
  public static function globalMenuAddRadioCheckItem(menuRoot: String, label: String, ?callback: Variant, ?keyCallback: Variant, ?tag: Variant, ?accelerator: Int, ?index: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(label);
      if (callback != null) {
          args.append(callback);
      }
      if (keyCallback != null) {
          args.append(keyCallback);
      }
      if (tag != null) {
          args.append(tag);
      }
      if (accelerator != null) {
          args.append(accelerator);
      }
      if (index != null) {
          args.append(index);
      }
      return getNative().call('global_menu_add_radio_check_item', args);
  }
  public static function globalMenuAddSeparator(menuRoot: String, ?index: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      if (index != null) {
          args.append(index);
      }
      return getNative().call('global_menu_add_separator', args);
  }
  public static function globalMenuAddSubmenuItem(menuRoot: String, label: String, submenu: String, ?index: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(label);
      args.append(submenu);
      if (index != null) {
          args.append(index);
      }
      return getNative().call('global_menu_add_submenu_item', args);
  }
  public static function globalMenuClear(menuRoot: String): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      getNative().call('global_menu_clear', args);
  }
  public static function globalMenuGetItemAccelerator(menuRoot: String, idx: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_get_item_accelerator', args);
  }
  public static function globalMenuGetItemCount(menuRoot: String): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      return getNative().call('global_menu_get_item_count', args);
  }
  public static function globalMenuGetItemIcon(menuRoot: String, idx: Int): Texture2D {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      var ref: NativeReference = getNative().call('global_menu_get_item_icon', args);
      return new Texture2D(ref);
  }
  public static function globalMenuGetItemIndentationLevel(menuRoot: String, idx: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_get_item_indentation_level', args);
  }
  public static function globalMenuGetItemIndexFromTag(menuRoot: String, tag: Variant): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(tag);
      return getNative().call('global_menu_get_item_index_from_tag', args);
  }
  public static function globalMenuGetItemIndexFromText(menuRoot: String, text: String): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(text);
      return getNative().call('global_menu_get_item_index_from_text', args);
  }
  public static function globalMenuGetItemMaxStates(menuRoot: String, idx: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_get_item_max_states', args);
  }
  public static function globalMenuGetItemState(menuRoot: String, idx: Int): Int {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_get_item_state', args);
  }
  public static function globalMenuGetItemSubmenu(menuRoot: String, idx: Int): String {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_get_item_submenu', args);
  }
  public static function globalMenuGetItemTag(menuRoot: String, idx: Int): Variant {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_get_item_tag', args);
  }
  public static function globalMenuGetItemText(menuRoot: String, idx: Int): String {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_get_item_text', args);
  }
  public static function globalMenuGetItemTooltip(menuRoot: String, idx: Int): String {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_get_item_tooltip', args);
  }
  public static function globalMenuGetSystemMenuRoots(): Dictionary {
      var args = new ArrayList();
      return getNative().call('global_menu_get_system_menu_roots', args);
  }
  public static function globalMenuIsItemCheckable(menuRoot: String, idx: Int): Bool {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_is_item_checkable', args);
  }
  public static function globalMenuIsItemChecked(menuRoot: String, idx: Int): Bool {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_is_item_checked', args);
  }
  public static function globalMenuIsItemDisabled(menuRoot: String, idx: Int): Bool {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_is_item_disabled', args);
  }
  public static function globalMenuIsItemHidden(menuRoot: String, idx: Int): Bool {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_is_item_hidden', args);
  }
  public static function globalMenuIsItemRadioCheckable(menuRoot: String, idx: Int): Bool {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      return getNative().call('global_menu_is_item_radio_checkable', args);
  }
  public static function globalMenuRemoveItem(menuRoot: String, idx: Int): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      getNative().call('global_menu_remove_item', args);
  }
  public static function globalMenuSetItemAccelerator(menuRoot: String, idx: Int, keycode: Int): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(keycode);
      getNative().call('global_menu_set_item_accelerator', args);
  }
  public static function globalMenuSetItemCallback(menuRoot: String, idx: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(callback);
      getNative().call('global_menu_set_item_callback', args);
  }
  public static function globalMenuSetItemCheckable(menuRoot: String, idx: Int, checkable: Bool): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(checkable);
      getNative().call('global_menu_set_item_checkable', args);
  }
  public static function globalMenuSetItemChecked(menuRoot: String, idx: Int, checked: Bool): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(checked);
      getNative().call('global_menu_set_item_checked', args);
  }
  public static function globalMenuSetItemDisabled(menuRoot: String, idx: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(disabled);
      getNative().call('global_menu_set_item_disabled', args);
  }
  public static function globalMenuSetItemHidden(menuRoot: String, idx: Int, hidden: Bool): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(hidden);
      getNative().call('global_menu_set_item_hidden', args);
  }
  public static function globalMenuSetItemHoverCallbacks(menuRoot: String, idx: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(callback);
      getNative().call('global_menu_set_item_hover_callbacks', args);
  }
  public static function globalMenuSetItemIcon(menuRoot: String, idx: Int, icon: Texture2D): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(icon.native);
      getNative().call('global_menu_set_item_icon', args);
  }
  public static function globalMenuSetItemIndentationLevel(menuRoot: String, idx: Int, level: Int): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(level);
      getNative().call('global_menu_set_item_indentation_level', args);
  }
  public static function globalMenuSetItemKeyCallback(menuRoot: String, idx: Int, keyCallback: Variant): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(keyCallback);
      getNative().call('global_menu_set_item_key_callback', args);
  }
  public static function globalMenuSetItemMaxStates(menuRoot: String, idx: Int, maxStates: Int): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(maxStates);
      getNative().call('global_menu_set_item_max_states', args);
  }
  public static function globalMenuSetItemRadioCheckable(menuRoot: String, idx: Int, checkable: Bool): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(checkable);
      getNative().call('global_menu_set_item_radio_checkable', args);
  }
  public static function globalMenuSetItemState(menuRoot: String, idx: Int, state: Int): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(state);
      getNative().call('global_menu_set_item_state', args);
  }
  public static function globalMenuSetItemSubmenu(menuRoot: String, idx: Int, submenu: String): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(submenu);
      getNative().call('global_menu_set_item_submenu', args);
  }
  public static function globalMenuSetItemTag(menuRoot: String, idx: Int, tag: Variant): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(tag);
      getNative().call('global_menu_set_item_tag', args);
  }
  public static function globalMenuSetItemText(menuRoot: String, idx: Int, text: String): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(text);
      getNative().call('global_menu_set_item_text', args);
  }
  public static function globalMenuSetItemTooltip(menuRoot: String, idx: Int, tooltip: String): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(idx);
      args.append(tooltip);
      getNative().call('global_menu_set_item_tooltip', args);
  }
  public static function globalMenuSetPopupCallbacks(menuRoot: String, openCallback: Variant, closeCallback: Variant): Void {
      var args = new ArrayList();
      args.append(menuRoot);
      args.append(openCallback);
      args.append(closeCallback);
      getNative().call('global_menu_set_popup_callbacks', args);
  }
  public static function hasAdditionalOutputs(): Bool {
      var args = new ArrayList();
      return getNative().call('has_additional_outputs', args);
  }
  public static function hasFeature(feature: Int): Bool {
      var args = new ArrayList();
      args.append(feature);
      return getNative().call('has_feature', args);
  }
  public static function hasHardwareKeyboard(): Bool {
      var args = new ArrayList();
      return getNative().call('has_hardware_keyboard', args);
  }
  public static function helpSetSearchCallbacks(searchCallback: Variant, actionCallback: Variant): Void {
      var args = new ArrayList();
      args.append(searchCallback);
      args.append(actionCallback);
      getNative().call('help_set_search_callbacks', args);
  }
  public static function imeGetSelection(): Vector2i {
      var args = new ArrayList();
      return getNative().call('ime_get_selection', args);
  }
  public static function imeGetText(): String {
      var args = new ArrayList();
      return getNative().call('ime_get_text', args);
  }
  public static function isDarkMode(): Bool {
      var args = new ArrayList();
      return getNative().call('is_dark_mode', args);
  }
  public static function isDarkModeSupported(): Bool {
      var args = new ArrayList();
      return getNative().call('is_dark_mode_supported', args);
  }
  public static function isTouchscreenAvailable(): Bool {
      var args = new ArrayList();
      return getNative().call('is_touchscreen_available', args);
  }
  public static function isWindowTransparencyAvailable(): Bool {
      var args = new ArrayList();
      return getNative().call('is_window_transparency_available', args);
  }
  public static function keyboardGetCurrentLayout(): Int {
      var args = new ArrayList();
      return getNative().call('keyboard_get_current_layout', args);
  }
  public static function keyboardGetKeycodeFromPhysical(keycode: Int): Int {
      var args = new ArrayList();
      args.append(keycode);
      return getNative().call('keyboard_get_keycode_from_physical', args);
  }
  public static function keyboardGetLabelFromPhysical(keycode: Int): Int {
      var args = new ArrayList();
      args.append(keycode);
      return getNative().call('keyboard_get_label_from_physical', args);
  }
  public static function keyboardGetLayoutCount(): Int {
      var args = new ArrayList();
      return getNative().call('keyboard_get_layout_count', args);
  }
  public static function keyboardGetLayoutLanguage(index: Int): String {
      var args = new ArrayList();
      args.append(index);
      return getNative().call('keyboard_get_layout_language', args);
  }
  public static function keyboardGetLayoutName(index: Int): String {
      var args = new ArrayList();
      args.append(index);
      return getNative().call('keyboard_get_layout_name', args);
  }
  public static function keyboardSetCurrentLayout(index: Int): Void {
      var args = new ArrayList();
      args.append(index);
      getNative().call('keyboard_set_current_layout', args);
  }
  public static function mouseGetButtonState(): Int {
      var args = new ArrayList();
      return getNative().call('mouse_get_button_state', args);
  }
  public static function mouseGetMode(): Int {
      var args = new ArrayList();
      return getNative().call('mouse_get_mode', args);
  }
  public static function mouseGetPosition(): Vector2i {
      var args = new ArrayList();
      return getNative().call('mouse_get_position', args);
  }
  public static function mouseSetMode(mouseMode: Int): Void {
      var args = new ArrayList();
      args.append(mouseMode);
      getNative().call('mouse_set_mode', args);
  }
  public static function processEvents(): Void {
      var args = new ArrayList();
      getNative().call('process_events', args);
  }
  public static function registerAdditionalOutput(object: Variant): Void {
      var args = new ArrayList();
      args.append(object);
      getNative().call('register_additional_output', args);
  }
  public static function screenGetDpi(?screen: Int): Int {
      var args = new ArrayList();
      if (screen != null) {
          args.append(screen);
      }
      return getNative().call('screen_get_dpi', args);
  }
  public static function screenGetImage(?screen: Int): Image {
      var args = new ArrayList();
      if (screen != null) {
          args.append(screen);
      }
      var ref: NativeReference = getNative().call('screen_get_image', args);
      return new Image(ref);
  }
  public static function screenGetImageRect(rect: Rect2i): Image {
      var args = new ArrayList();
      args.append(rect);
      var ref: NativeReference = getNative().call('screen_get_image_rect', args);
      return new Image(ref);
  }
  public static function screenGetMaxScale(): Float {
      var args = new ArrayList();
      return getNative().call('screen_get_max_scale', args);
  }
  public static function screenGetOrientation(?screen: Int): Int {
      var args = new ArrayList();
      if (screen != null) {
          args.append(screen);
      }
      return getNative().call('screen_get_orientation', args);
  }
  public static function screenGetPixel(position: Vector2i): Color {
      var args = new ArrayList();
      args.append(position);
      return getNative().call('screen_get_pixel', args);
  }
  public static function screenGetPosition(?screen: Int): Vector2i {
      var args = new ArrayList();
      if (screen != null) {
          args.append(screen);
      }
      return getNative().call('screen_get_position', args);
  }
  public static function screenGetRefreshRate(?screen: Int): Float {
      var args = new ArrayList();
      if (screen != null) {
          args.append(screen);
      }
      return getNative().call('screen_get_refresh_rate', args);
  }
  public static function screenGetScale(?screen: Int): Float {
      var args = new ArrayList();
      if (screen != null) {
          args.append(screen);
      }
      return getNative().call('screen_get_scale', args);
  }
  public static function screenGetSize(?screen: Int): Vector2i {
      var args = new ArrayList();
      if (screen != null) {
          args.append(screen);
      }
      return getNative().call('screen_get_size', args);
  }
  public static function screenGetUsableRect(?screen: Int): Rect2i {
      var args = new ArrayList();
      if (screen != null) {
          args.append(screen);
      }
      return getNative().call('screen_get_usable_rect', args);
  }
  public static function screenIsKeptOn(): Bool {
      var args = new ArrayList();
      return getNative().call('screen_is_kept_on', args);
  }
  public static function screenSetKeepOn(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      getNative().call('screen_set_keep_on', args);
  }
  public static function screenSetOrientation(orientation: Int, ?screen: Int): Void {
      var args = new ArrayList();
      args.append(orientation);
      if (screen != null) {
          args.append(screen);
      }
      getNative().call('screen_set_orientation', args);
  }
  public static function setHardwareKeyboardConnectionChangeCallback(callable: Variant): Void {
      var args = new ArrayList();
      args.append(callable);
      getNative().call('set_hardware_keyboard_connection_change_callback', args);
  }
  public static function setIcon(image: Image): Void {
      var args = new ArrayList();
      args.append(image.native);
      getNative().call('set_icon', args);
  }
  public static function setNativeIcon(filename: String): Void {
      var args = new ArrayList();
      args.append(filename);
      getNative().call('set_native_icon', args);
  }
  public static function setSystemThemeChangeCallback(callable: Variant): Void {
      var args = new ArrayList();
      args.append(callable);
      getNative().call('set_system_theme_change_callback', args);
  }
  public static function showEmojiAndSymbolPicker(): Void {
      var args = new ArrayList();
      getNative().call('show_emoji_and_symbol_picker', args);
  }
  public static function statusIndicatorGetRect(id: Int): Rect2 {
      var args = new ArrayList();
      args.append(id);
      return getNative().call('status_indicator_get_rect', args);
  }
  public static function statusIndicatorSetCallback(id: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(callback);
      getNative().call('status_indicator_set_callback', args);
  }
  public static function statusIndicatorSetIcon(id: Int, icon: Texture2D): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(icon.native);
      getNative().call('status_indicator_set_icon', args);
  }
  public static function statusIndicatorSetMenu(id: Int, menuRid: Variant): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(menuRid);
      getNative().call('status_indicator_set_menu', args);
  }
  public static function statusIndicatorSetTooltip(id: Int, tooltip: String): Void {
      var args = new ArrayList();
      args.append(id);
      args.append(tooltip);
      getNative().call('status_indicator_set_tooltip', args);
  }
  public static function tabletGetCurrentDriver(): String {
      var args = new ArrayList();
      return getNative().call('tablet_get_current_driver', args);
  }
  public static function tabletGetDriverCount(): Int {
      var args = new ArrayList();
      return getNative().call('tablet_get_driver_count', args);
  }
  public static function tabletGetDriverName(idx: Int): String {
      var args = new ArrayList();
      args.append(idx);
      return getNative().call('tablet_get_driver_name', args);
  }
  public static function tabletSetCurrentDriver(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      getNative().call('tablet_set_current_driver', args);
  }
  public static function ttsGetVoicesForLanguage(language: String): TypedArray<String> {
      var args = new ArrayList();
      args.append(language);
      return getNative().call('tts_get_voices_for_language', args);
  }
  public static function ttsIsPaused(): Bool {
      var args = new ArrayList();
      return getNative().call('tts_is_paused', args);
  }
  public static function ttsIsSpeaking(): Bool {
      var args = new ArrayList();
      return getNative().call('tts_is_speaking', args);
  }
  public static function ttsPause(): Void {
      var args = new ArrayList();
      getNative().call('tts_pause', args);
  }
  public static function ttsResume(): Void {
      var args = new ArrayList();
      getNative().call('tts_resume', args);
  }
  public static function ttsSetUtteranceCallback(event: Int, callable: Variant): Void {
      var args = new ArrayList();
      args.append(event);
      args.append(callable);
      getNative().call('tts_set_utterance_callback', args);
  }
  public static function ttsSpeak(text: String, voice: String, ?volume: Int, ?pitch: Float, ?rate: Float, ?utteranceId: Int, ?interrupt: Bool): Void {
      var args = new ArrayList();
      args.append(text);
      args.append(voice);
      if (volume != null) {
          args.append(volume);
      }
      if (pitch != null) {
          args.append(pitch);
      }
      if (rate != null) {
          args.append(rate);
      }
      if (utteranceId != null) {
          args.append(utteranceId);
      }
      if (interrupt != null) {
          args.append(interrupt);
      }
      getNative().call('tts_speak', args);
  }
  public static function ttsStop(): Void {
      var args = new ArrayList();
      getNative().call('tts_stop', args);
  }
  public static function unregisterAdditionalOutput(object: Variant): Void {
      var args = new ArrayList();
      args.append(object);
      getNative().call('unregister_additional_output', args);
  }
  public static function virtualKeyboardGetHeight(): Int {
      var args = new ArrayList();
      return getNative().call('virtual_keyboard_get_height', args);
  }
  public static function virtualKeyboardHide(): Void {
      var args = new ArrayList();
      getNative().call('virtual_keyboard_hide', args);
  }
  public static function virtualKeyboardShow(existingText: String, ?position: Rect2, ?type: Int, ?maxLength: Int, ?cursorStart: Int, ?cursorEnd: Int): Void {
      var args = new ArrayList();
      args.append(existingText);
      if (position != null) {
          args.append(position);
      }
      if (type != null) {
          args.append(type);
      }
      if (maxLength != null) {
          args.append(maxLength);
      }
      if (cursorStart != null) {
          args.append(cursorStart);
      }
      if (cursorEnd != null) {
          args.append(cursorEnd);
      }
      getNative().call('virtual_keyboard_show', args);
  }
  public static function warpMouse(position: Vector2i): Void {
      var args = new ArrayList();
      args.append(position);
      getNative().call('warp_mouse', args);
  }
  public static function windowCanDraw(?windowId: Int): Bool {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_can_draw', args);
  }
  public static function windowGetActivePopup(): Int {
      var args = new ArrayList();
      return getNative().call('window_get_active_popup', args);
  }
  public static function windowGetAttachedInstanceId(?windowId: Int): Int {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_attached_instance_id', args);
  }
  public static function windowGetCurrentScreen(?windowId: Int): Int {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_current_screen', args);
  }
  public static function windowGetFlag(flag: Int, ?windowId: Int): Bool {
      var args = new ArrayList();
      args.append(flag);
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_flag', args);
  }
  public static function windowGetMaxSize(?windowId: Int): Vector2i {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_max_size', args);
  }
  public static function windowGetMinSize(?windowId: Int): Vector2i {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_min_size', args);
  }
  public static function windowGetMode(?windowId: Int): Int {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_mode', args);
  }
  public static function windowGetNativeHandle(handleType: Int, ?windowId: Int): Int {
      var args = new ArrayList();
      args.append(handleType);
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_native_handle', args);
  }
  public static function windowGetPopupSafeRect(window: Int): Rect2i {
      var args = new ArrayList();
      args.append(window);
      return getNative().call('window_get_popup_safe_rect', args);
  }
  public static function windowGetPosition(?windowId: Int): Vector2i {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_position', args);
  }
  public static function windowGetPositionWithDecorations(?windowId: Int): Vector2i {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_position_with_decorations', args);
  }
  public static function windowGetSafeTitleMargins(?windowId: Int): Vector3i {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_safe_title_margins', args);
  }
  public static function windowGetSize(?windowId: Int): Vector2i {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_size', args);
  }
  public static function windowGetSizeWithDecorations(?windowId: Int): Vector2i {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_size_with_decorations', args);
  }
  public static function windowGetTitleSize(title: String, ?windowId: Int): Vector2i {
      var args = new ArrayList();
      args.append(title);
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_title_size', args);
  }
  public static function windowGetVsyncMode(?windowId: Int): Int {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_get_vsync_mode', args);
  }
  public static function windowIsFocused(?windowId: Int): Bool {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_is_focused', args);
  }
  public static function windowIsMaximizeAllowed(?windowId: Int): Bool {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      return getNative().call('window_is_maximize_allowed', args);
  }
  public static function windowMaximizeOnTitleDblClick(): Bool {
      var args = new ArrayList();
      return getNative().call('window_maximize_on_title_dbl_click', args);
  }
  public static function windowMinimizeOnTitleDblClick(): Bool {
      var args = new ArrayList();
      return getNative().call('window_minimize_on_title_dbl_click', args);
  }
  public static function windowMoveToForeground(?windowId: Int): Void {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_move_to_foreground', args);
  }
  public static function windowRequestAttention(?windowId: Int): Void {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_request_attention', args);
  }
  public static function windowSetCurrentScreen(screen: Int, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(screen);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_current_screen', args);
  }
  public static function windowSetDropFilesCallback(callback: Variant, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(callback);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_drop_files_callback', args);
  }
  public static function windowSetExclusive(windowId: Int, exclusive: Bool): Void {
      var args = new ArrayList();
      args.append(windowId);
      args.append(exclusive);
      getNative().call('window_set_exclusive', args);
  }
  public static function windowSetFlag(flag: Int, enabled: Bool, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(flag);
      args.append(enabled);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_flag', args);
  }
  public static function windowSetImeActive(active: Bool, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(active);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_ime_active', args);
  }
  public static function windowSetImePosition(position: Vector2i, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(position);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_ime_position', args);
  }
  public static function windowSetInputEventCallback(callback: Variant, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(callback);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_input_event_callback', args);
  }
  public static function windowSetInputTextCallback(callback: Variant, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(callback);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_input_text_callback', args);
  }
  public static function windowSetMaxSize(maxSize: Vector2i, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(maxSize);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_max_size', args);
  }
  public static function windowSetMinSize(minSize: Vector2i, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(minSize);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_min_size', args);
  }
  public static function windowSetMode(mode: Int, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(mode);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_mode', args);
  }
  public static function windowSetMousePassthrough(region: TypedArray<Vector2>, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(region);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_mouse_passthrough', args);
  }
  public static function windowSetPopupSafeRect(window: Int, rect: Rect2i): Void {
      var args = new ArrayList();
      args.append(window);
      args.append(rect);
      getNative().call('window_set_popup_safe_rect', args);
  }
  public static function windowSetPosition(position: Vector2i, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(position);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_position', args);
  }
  public static function windowSetRectChangedCallback(callback: Variant, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(callback);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_rect_changed_callback', args);
  }
  public static function windowSetSize(size: Vector2i, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(size);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_size', args);
  }
  public static function windowSetTitle(title: String, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(title);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_title', args);
  }
  public static function windowSetTransient(windowId: Int, parentWindowId: Int): Void {
      var args = new ArrayList();
      args.append(windowId);
      args.append(parentWindowId);
      getNative().call('window_set_transient', args);
  }
  public static function windowSetVsyncMode(vsyncMode: Int, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(vsyncMode);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_vsync_mode', args);
  }
  public static function windowSetWindowButtonsOffset(offset: Vector2i, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(offset);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_window_buttons_offset', args);
  }
  public static function windowSetWindowEventCallback(callback: Variant, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(callback);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_set_window_event_callback', args);
  }
  public static function windowStartDrag(?windowId: Int): Void {
      var args = new ArrayList();
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_start_drag', args);
  }
  public static function windowStartResize(edge: Int, ?windowId: Int): Void {
      var args = new ArrayList();
      args.append(edge);
      if (windowId != null) {
          args.append(windowId);
      }
      getNative().call('window_start_resize', args);
  }
}
