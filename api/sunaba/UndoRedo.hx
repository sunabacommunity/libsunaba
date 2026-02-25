package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;

class UndoRedo extends Object {
    public override function nativeInit(?_native: NativeObject) {
        if (_native == null) {
            _native = new NativeObject('UndoRedo');
        }
        this.native = _native;
    }

    public var maxSteps(get, set): Int;
    function get_maxSteps(): Int {
        return native.get('max_steps');
    }
    function set_maxSteps(value: Int): Int {
      native.set('max_steps', value);
        return value;
    }

	private var _versionChanged: Signal;
	public var versionChanged(get, default): Signal;
	function get_versionChanged(): Signal {
	    if (_versionChanged == null) {
	        _versionChanged = Signal.createFromObject(native, 'version_changed');
	    }
	    return _versionChanged;
	}

  public function addDoMethod(callable: Variant): Void {
      var args = new ArrayList();
      args.append(callable);
      native.call('add_do_method', args);
  }
  public function addDoProperty(object: Variant, property: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(object);
      args.append(property);
      args.append(value);
      native.call('add_do_property', args);
  }
  public function addDoReference(object: Variant): Void {
      var args = new ArrayList();
      args.append(object);
      native.call('add_do_reference', args);
  }
  public function addUndoMethod(callable: Variant): Void {
      var args = new ArrayList();
      args.append(callable);
      native.call('add_undo_method', args);
  }
  public function addUndoProperty(object: Variant, property: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(object);
      args.append(property);
      args.append(value);
      native.call('add_undo_property', args);
  }
  public function addUndoReference(object: Variant): Void {
      var args = new ArrayList();
      args.append(object);
      native.call('add_undo_reference', args);
  }
  public function clearHistory(?increaseVersion: Bool): Void {
      var args = new ArrayList();
      if (increaseVersion != null) {
          args.append(increaseVersion);
      }
      native.call('clear_history', args);
  }
  public function commitAction(?execute: Bool): Void {
      var args = new ArrayList();
      if (execute != null) {
          args.append(execute);
      }
      native.call('commit_action', args);
  }
  public function createAction(name: String, ?mergeMode: Int, ?backwardUndoOps: Bool): Void {
      var args = new ArrayList();
      args.append(name);
      if (mergeMode != null) {
          args.append(mergeMode);
      }
      if (backwardUndoOps != null) {
          args.append(backwardUndoOps);
      }
      native.call('create_action', args);
  }
  public function endForceKeepInMergeEnds(): Void {
      var args = new ArrayList();
      native.call('end_force_keep_in_merge_ends', args);
  }
  public function getActionName(id: Int): String {
      var args = new ArrayList();
      args.append(id);
      return native.call('get_action_name', args);
  }
  public function getCurrentAction(): Int {
      var args = new ArrayList();
      return native.call('get_current_action', args);
  }
  public function getCurrentActionName(): String {
      var args = new ArrayList();
      return native.call('get_current_action_name', args);
  }
  public function getHistoryCount(): Int {
      var args = new ArrayList();
      return native.call('get_history_count', args);
  }
  public function getVersion(): Int {
      var args = new ArrayList();
      return native.call('get_version', args);
  }
  public function hasRedo(): Bool {
      var args = new ArrayList();
      return native.call('has_redo', args);
  }
  public function hasUndo(): Bool {
      var args = new ArrayList();
      return native.call('has_undo', args);
  }
  public function isCommittingAction(): Bool {
      var args = new ArrayList();
      return native.call('is_committing_action', args);
  }
  public function redo(): Bool {
      var args = new ArrayList();
      return native.call('redo', args);
  }
  public function startForceKeepInMergeEnds(): Void {
      var args = new ArrayList();
      native.call('start_force_keep_in_merge_ends', args);
  }
  public function undo(): Bool {
      var args = new ArrayList();
      return native.call('undo', args);
  }
}
