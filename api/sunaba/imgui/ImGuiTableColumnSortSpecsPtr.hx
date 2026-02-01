package sunaba.imgui;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class ImGuiTableColumnSortSpecsPtr extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('ImGuiTableColumnSortSpecsPtr');
        }
        this.native = _native;
    }

    public var columnIndex(get, set): Int;
    function get_columnIndex(): Int {
        return native.get('ColumnIndex');
    }
    function set_columnIndex(value: Int): Int {
      native.set('ColumnIndex', value);
        return value;
    }
    public var columnUserId(get, set): Int;
    function get_columnUserId(): Int {
        return native.get('ColumnUserID');
    }
    function set_columnUserId(value: Int): Int {
      native.set('ColumnUserID', value);
        return value;
    }
    public var sortDirection(get, set): Int;
    function get_sortDirection(): Int {
        return native.get('SortDirection');
    }
    function set_sortDirection(value: Int): Int {
      native.set('SortDirection', value);
        return value;
    }
    public var sortOrder(get, set): Int;
    function get_sortOrder(): Int {
        return native.get('SortOrder');
    }
    function set_sortOrder(value: Int): Int {
      native.set('SortOrder', value);
        return value;
    }


}
