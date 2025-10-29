package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.input.InputEvent;
import sunaba.networking.MultiplayerAPI;
import sunaba.core.Signal;
import sunaba.desktop.Window;

class Node extends Object {
    public function new(?_native: NativeObject) {
        super();
        if (_native == null) {
            _native = new NativeObject('Node');
        }
        native = _native;
    }

	public function initializeProxy() {
		var proxy = new NativeObject("res://Engine/NodeProxy.gd", new ArrayList(), ScriptType.gdscript);
		proxy.set("instance", VariantNative.fromBaseClass(this));
		var args = new ArrayList();
		args.append(proxy);
		proxy.set("name", "Proxy");
		native.call("add_child", args);
	}
    public function onReady() {

    }
    public function onEnterTree() {

    }
    public function onExitTree() {

    }
    public function onProcess(delta: Float) {

    }
    public function onPhysicsProcess(delta: Float) {

    }
    public function onNotification(what: Int) {

    }
    public function onInput(event: InputEvent) {

    }
    public function onUnhandledInput(event: InputEvent) {

    }
    public function onUnhandledKeyInput(event: InputEvent) {

    }
    public function onShortcutInput(event: InputEvent) {

    }
    public function _onInput(event: NativeReference) {
		if (event == null) return;
        onInput(new InputEvent(event));
    }
    public function _onUnhandledInput(event: NativeReference) {
		if (event == null) return;
        onUnhandledInput(new InputEvent(event));
    }
    public function _onUnhandledKeyInput(event: NativeReference) {
		if (event == null) return;
        onUnhandledKeyInput(new InputEvent(event));
    }
    public function _onShortcutInput(event: NativeReference) {
		if (event == null) return;
        onShortcutInput(new InputEvent(event));
    }

    public var autoTranslateMode(get, set): Int;
    function get_autoTranslateMode(): Int {
        return native.get('auto_translate_mode');
    }
    function set_autoTranslateMode(value: Int): Int {
      native.set('auto_translate_mode', value);
        return value;
    }
    public var editorDescription(get, set): String;
    function get_editorDescription(): String {
        return native.get('editor_description');
    }
    function set_editorDescription(value: String): String {
      native.set('editor_description', value);
        return value;
    }
    public var multiplayer(get, set): MultiplayerAPI;
    function get_multiplayer(): MultiplayerAPI {
        var ref: NativeReference = native.get('multiplayer');
        return new MultiplayerAPI(ref);
    }
    function set_multiplayer(value: MultiplayerAPI): MultiplayerAPI {
      native.set('multiplayer', value.native);
        return value;
    }
    public var name(get, set): String;
    function get_name(): String {
        return native.get('name');
    }
    function set_name(value: String): String {
      native.set('name', value);
        return value;
    }
    public var owner(get, set): Node;
    function get_owner(): Node {
        var ref: NativeObject = native.get('owner');
        return new Node(ref);
    }
    function set_owner(value: Node): Node {
      native.set('owner', value.native);
        return value;
    }
    public var physicsInterpolationMode(get, set): Int;
    function get_physicsInterpolationMode(): Int {
        return native.get('physics_interpolation_mode');
    }
    function set_physicsInterpolationMode(value: Int): Int {
      native.set('physics_interpolation_mode', value);
        return value;
    }
    public var processMode(get, set): Int;
    function get_processMode(): Int {
        return native.get('process_mode');
    }
    function set_processMode(value: Int): Int {
      native.set('process_mode', value);
        return value;
    }
    public var processPhysicsPriority(get, set): Int;
    function get_processPhysicsPriority(): Int {
        return native.get('process_physics_priority');
    }
    function set_processPhysicsPriority(value: Int): Int {
      native.set('process_physics_priority', value);
        return value;
    }
    public var processPriority(get, set): Int;
    function get_processPriority(): Int {
        return native.get('process_priority');
    }
    function set_processPriority(value: Int): Int {
      native.set('process_priority', value);
        return value;
    }
    public var processThreadGroup(get, set): Int;
    function get_processThreadGroup(): Int {
        return native.get('process_thread_group');
    }
    function set_processThreadGroup(value: Int): Int {
      native.set('process_thread_group', value);
        return value;
    }
    public var processThreadGroupOrder(get, set): Int;
    function get_processThreadGroupOrder(): Int {
        return native.get('process_thread_group_order');
    }
    function set_processThreadGroupOrder(value: Int): Int {
      native.set('process_thread_group_order', value);
        return value;
    }
    public var processThreadMessages(get, set): Int;
    function get_processThreadMessages(): Int {
        return native.get('process_thread_messages');
    }
    function set_processThreadMessages(value: Int): Int {
      native.set('process_thread_messages', value);
        return value;
    }
    public var sceneFilePath(get, set): String;
    function get_sceneFilePath(): String {
        return native.get('scene_file_path');
    }
    function set_sceneFilePath(value: String): String {
      native.set('scene_file_path', value);
        return value;
    }
    public var uniqueNameInOwner(get, set): Bool;
    function get_uniqueNameInOwner(): Bool {
        return native.get('unique_name_in_owner');
    }
    function set_uniqueNameInOwner(value: Bool): Bool {
      native.set('unique_name_in_owner', value);
        return value;
    }

	private var _childEnteredTree: Signal;
	public var childEnteredTree(get, default): Signal;
	function get_childEnteredTree(): Signal {
	    if (_childEnteredTree == null) {
	        _childEnteredTree = Signal.createFromObject(native, 'child_entered_tree');
	    }
	    return _childEnteredTree;
	}
	private var _childExitingTree: Signal;
	public var childExitingTree(get, default): Signal;
	function get_childExitingTree(): Signal {
	    if (_childExitingTree == null) {
	        _childExitingTree = Signal.createFromObject(native, 'child_exiting_tree');
	    }
	    return _childExitingTree;
	}
	private var _childOrderChanged: Signal;
	public var childOrderChanged(get, default): Signal;
	function get_childOrderChanged(): Signal {
	    if (_childOrderChanged == null) {
	        _childOrderChanged = Signal.createFromObject(native, 'child_order_changed');
	    }
	    return _childOrderChanged;
	}
	private var _editorDescriptionChanged: Signal;
	public var editorDescriptionChanged(get, default): Signal;
	function get_editorDescriptionChanged(): Signal {
	    if (_editorDescriptionChanged == null) {
	        _editorDescriptionChanged = Signal.createFromObject(native, 'editor_description_changed');
	    }
	    return _editorDescriptionChanged;
	}
	private var _editorStateChanged: Signal;
	public var editorStateChanged(get, default): Signal;
	function get_editorStateChanged(): Signal {
	    if (_editorStateChanged == null) {
	        _editorStateChanged = Signal.createFromObject(native, 'editor_state_changed');
	    }
	    return _editorStateChanged;
	}
	private var _ready: Signal;
	public var ready(get, default): Signal;
	function get_ready(): Signal {
	    if (_ready == null) {
	        _ready = Signal.createFromObject(native, 'ready');
	    }
	    return _ready;
	}
	private var _renamed: Signal;
	public var renamed(get, default): Signal;
	function get_renamed(): Signal {
	    if (_renamed == null) {
	        _renamed = Signal.createFromObject(native, 'renamed');
	    }
	    return _renamed;
	}
	private var _replacingBy: Signal;
	public var replacingBy(get, default): Signal;
	function get_replacingBy(): Signal {
	    if (_replacingBy == null) {
	        _replacingBy = Signal.createFromObject(native, 'replacing_by');
	    }
	    return _replacingBy;
	}
	private var _treeEntered: Signal;
	public var treeEntered(get, default): Signal;
	function get_treeEntered(): Signal {
	    if (_treeEntered == null) {
	        _treeEntered = Signal.createFromObject(native, 'tree_entered');
	    }
	    return _treeEntered;
	}
	private var _treeExited: Signal;
	public var treeExited(get, default): Signal;
	function get_treeExited(): Signal {
	    if (_treeExited == null) {
	        _treeExited = Signal.createFromObject(native, 'tree_exited');
	    }
	    return _treeExited;
	}
	private var _treeExiting: Signal;
	public var treeExiting(get, default): Signal;
	function get_treeExiting(): Signal {
	    if (_treeExiting == null) {
	        _treeExiting = Signal.createFromObject(native, 'tree_exiting');
	    }
	    return _treeExiting;
	}

  public function addChild(node: Node, ?forceReadableName: Bool, ?internal: Int): Void {
      var args = new ArrayList();
      args.append(node.native);
      if (forceReadableName != null) {
          args.append(forceReadableName);
      }
      if (internal != null) {
          args.append(internal);
      }
      native.call('add_child', args);
  }
  public function addSibling(sibling: Node, ?forceReadableName: Bool): Void {
      var args = new ArrayList();
      args.append(sibling.native);
      if (forceReadableName != null) {
          args.append(forceReadableName);
      }
      native.call('add_sibling', args);
  }
  public function addToGroup(group: String, ?persistent: Bool): Void {
      var args = new ArrayList();
      args.append(group);
      if (persistent != null) {
          args.append(persistent);
      }
      native.call('add_to_group', args);
  }
  public function atr(message: String, ?context: String): String {
      var args = new ArrayList();
      args.append(message);
      if (context != null) {
          args.append(context);
      }
      return native.call('atr', args);
  }
  public function atrN(message: String, pluralMessage: String, n: Int, ?context: String): String {
      var args = new ArrayList();
      args.append(message);
      args.append(pluralMessage);
      args.append(n);
      if (context != null) {
          args.append(context);
      }
      return native.call('atr_n', args);
  }
  public function callDeferredThreadGroup(method: String): Variant {
      var args = new ArrayList();
      args.append(method);
      return native.call('call_deferred_thread_group', args);
  }
  public function callThreadSafe(method: String): Variant {
      var args = new ArrayList();
      args.append(method);
      return native.call('call_thread_safe', args);
  }
  public function canAutoTranslate(): Bool {
      var args = new ArrayList();
      return native.call('can_auto_translate', args);
  }
  public function canProcess(): Bool {
      var args = new ArrayList();
      return native.call('can_process', args);
  }
  public function duplicate(?flags: Int): Node {
      var args = new ArrayList();
      if (flags != null) {
          args.append(flags);
      }
      var ref: NativeObject = native.call('duplicate', args);
      return new Node(ref);
  }
  public function findChild(pattern: String, ?recursive: Bool, ?owned: Bool): Node {
      var args = new ArrayList();
      args.append(pattern);
      if (recursive != null) {
          args.append(recursive);
      }
      if (owned != null) {
          args.append(owned);
      }
      var ref: NativeObject = native.call('find_child', args);
      return new Node(ref);
  }
  public function findParent(pattern: String): Node {
      var args = new ArrayList();
      args.append(pattern);
      var ref: NativeObject = native.call('find_parent', args);
      return new Node(ref);
  }
  public function getAccessibilityElement(): Int {
      var args = new ArrayList();
      return native.call('get_accessibility_element', args);
  }
  public function getChild(idx: Int, ?includeInternal: Bool): Node {
      var args = new ArrayList();
      args.append(idx);
      if (includeInternal != null) {
          args.append(includeInternal);
      }
      var ref: NativeObject = native.call('get_child', args);
      return new Node(ref);
  }
  public function getChildCount(?includeInternal: Bool): Int {
      var args = new ArrayList();
      if (includeInternal != null) {
          args.append(includeInternal);
      }
      return native.call('get_child_count', args);
  }
  public function getIndex(?includeInternal: Bool): Int {
      var args = new ArrayList();
      if (includeInternal != null) {
          args.append(includeInternal);
      }
      return native.call('get_index', args);
  }
  public function getLastExclusiveWindow(): Window {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_last_exclusive_window', args);
      return new Window(ref);
  }
  public function getMultiplayerAuthority(): Int {
      var args = new ArrayList();
      return native.call('get_multiplayer_authority', args);
  }
  public function getNode(path: String): Node {
      var args = new ArrayList();
      args.append(path);
      var ref: NativeObject = native.call('get_node', args);
      return new Node(ref);
  }
  public function getNodeAndResource(path: String): ArrayList {
      var args = new ArrayList();
      args.append(path);
      return native.call('get_node_and_resource', args);
  }
  public function getNodeOrNull(path: String): Node {
      var args = new ArrayList();
      args.append(path);
      var ref: NativeObject = native.call('get_node_or_null', args);
      return new Node(ref);
  }
  public function getNodeRpcConfig(): Variant {
      var args = new ArrayList();
      return native.call('get_node_rpc_config', args);
  }
  public function getParent(): Node {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_parent', args);
      return new Node(ref);
  }
  public function getPath(): String {
      var args = new ArrayList();
      return native.call('get_path', args);
  }
  public function getPathTo(node: Node, ?useUniquePath: Bool): String {
      var args = new ArrayList();
      args.append(node.native);
      if (useUniquePath != null) {
          args.append(useUniquePath);
      }
      return native.call('get_path_to', args);
  }
  public function getPhysicsProcessDeltaTime(): Float {
      var args = new ArrayList();
      return native.call('get_physics_process_delta_time', args);
  }
  public function getProcessDeltaTime(): Float {
      var args = new ArrayList();
      return native.call('get_process_delta_time', args);
  }
  public function getSceneInstanceLoadPlaceholder(): Bool {
      var args = new ArrayList();
      return native.call('get_scene_instance_load_placeholder', args);
  }
  public function getTreeString(): String {
      var args = new ArrayList();
      return native.call('get_tree_string', args);
  }
  public function getTreeStringPretty(): String {
      var args = new ArrayList();
      return native.call('get_tree_string_pretty', args);
  }
  public function getViewport(): Viewport {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_viewport', args);
      return new Viewport(ref);
  }
  public function getWindow(): Window {
      var args = new ArrayList();
      var ref: NativeObject = native.call('get_window', args);
      return new Window(ref);
  }
  public function hasNode(path: String): Bool {
      var args = new ArrayList();
      args.append(path);
      return native.call('has_node', args);
  }
  public function hasNodeAndResource(path: String): Bool {
      var args = new ArrayList();
      args.append(path);
      return native.call('has_node_and_resource', args);
  }
  public function isAncestorOf(node: Node): Bool {
      var args = new ArrayList();
      args.append(node.native);
      return native.call('is_ancestor_of', args);
  }
  public function isDisplayedFolded(): Bool {
      var args = new ArrayList();
      return native.call('is_displayed_folded', args);
  }
  public function isEditableInstance(node: Node): Bool {
      var args = new ArrayList();
      args.append(node.native);
      return native.call('is_editable_instance', args);
  }
  public function isGreaterThan(node: Node): Bool {
      var args = new ArrayList();
      args.append(node.native);
      return native.call('is_greater_than', args);
  }
  public function isInGroup(group: String): Bool {
      var args = new ArrayList();
      args.append(group);
      return native.call('is_in_group', args);
  }
  public function isInsideTree(): Bool {
      var args = new ArrayList();
      return native.call('is_inside_tree', args);
  }
  public function isMultiplayerAuthority(): Bool {
      var args = new ArrayList();
      return native.call('is_multiplayer_authority', args);
  }
  public function isNodeReady(): Bool {
      var args = new ArrayList();
      return native.call('is_node_ready', args);
  }
  public function isPartOfEditedScene(): Bool {
      var args = new ArrayList();
      return native.call('is_part_of_edited_scene', args);
  }
  public function isPhysicsInterpolated(): Bool {
      var args = new ArrayList();
      return native.call('is_physics_interpolated', args);
  }
  public function isPhysicsInterpolatedAndEnabled(): Bool {
      var args = new ArrayList();
      return native.call('is_physics_interpolated_and_enabled', args);
  }
  public function isPhysicsProcessing(): Bool {
      var args = new ArrayList();
      return native.call('is_physics_processing', args);
  }
  public function isPhysicsProcessingInternal(): Bool {
      var args = new ArrayList();
      return native.call('is_physics_processing_internal', args);
  }
  public function isProcessing(): Bool {
      var args = new ArrayList();
      return native.call('is_processing', args);
  }
  public function isProcessingInput(): Bool {
      var args = new ArrayList();
      return native.call('is_processing_input', args);
  }
  public function isProcessingInternal(): Bool {
      var args = new ArrayList();
      return native.call('is_processing_internal', args);
  }
  public function isProcessingShortcutInput(): Bool {
      var args = new ArrayList();
      return native.call('is_processing_shortcut_input', args);
  }
  public function isProcessingUnhandledInput(): Bool {
      var args = new ArrayList();
      return native.call('is_processing_unhandled_input', args);
  }
  public function isProcessingUnhandledKeyInput(): Bool {
      var args = new ArrayList();
      return native.call('is_processing_unhandled_key_input', args);
  }
  public function moveChild(childNode: Node, toIndex: Int): Void {
      var args = new ArrayList();
      args.append(childNode.native);
      args.append(toIndex);
      native.call('move_child', args);
  }
  public function notifyDeferredThreadGroup(what: Int): Void {
      var args = new ArrayList();
      args.append(what);
      native.call('notify_deferred_thread_group', args);
  }
  public function notifyThreadSafe(what: Int): Void {
      var args = new ArrayList();
      args.append(what);
      native.call('notify_thread_safe', args);
  }
  public static function printOrphanNodes(): Void {
      var args = new ArrayList();
      NativeObject.callStatic('Node', 'print_orphan_nodes', args);
  }
  public function printTree(): Void {
      var args = new ArrayList();
      native.call('print_tree', args);
  }
  public function printTreePretty(): Void {
      var args = new ArrayList();
      native.call('print_tree_pretty', args);
  }
  public function propagateCall(method: String, ?args: ArrayList, ?parentFirst: Bool): Void {
      var args = new ArrayList();
      args.append(method);
      if (args != null) {
          args.append(args);
      }
      if (parentFirst != null) {
          args.append(parentFirst);
      }
      native.call('propagate_call', args);
  }
  public function propagateNotification(what: Int): Void {
      var args = new ArrayList();
      args.append(what);
      native.call('propagate_notification', args);
  }
  public function queueAccessibilityUpdate(): Void {
      var args = new ArrayList();
      native.call('queue_accessibility_update', args);
  }
  public function queueFree(): Void {
      var args = new ArrayList();
      native.call('queue_free', args);
  }
  public function removeChild(node: Node): Void {
      var args = new ArrayList();
      args.append(node.native);
      native.call('remove_child', args);
  }
  public function removeFromGroup(group: String): Void {
      var args = new ArrayList();
      args.append(group);
      native.call('remove_from_group', args);
  }
  public function reparent(newParent: Node, ?keepGlobalTransform: Bool): Void {
      var args = new ArrayList();
      args.append(newParent.native);
      if (keepGlobalTransform != null) {
          args.append(keepGlobalTransform);
      }
      native.call('reparent', args);
  }
  public function replaceBy(node: Node, ?keepGroups: Bool): Void {
      var args = new ArrayList();
      args.append(node.native);
      if (keepGroups != null) {
          args.append(keepGroups);
      }
      native.call('replace_by', args);
  }
  public function requestReady(): Void {
      var args = new ArrayList();
      native.call('request_ready', args);
  }
  public function resetPhysicsInterpolation(): Void {
      var args = new ArrayList();
      native.call('reset_physics_interpolation', args);
  }
  public function rpc(method: String): Int {
      var args = new ArrayList();
      args.append(method);
      return native.call('rpc', args);
  }
  public function rpcConfig(method: String, config: Variant): Void {
      var args = new ArrayList();
      args.append(method);
      args.append(config);
      native.call('rpc_config', args);
  }
  public function rpcId(peerId: Int, method: String): Int {
      var args = new ArrayList();
      args.append(peerId);
      args.append(method);
      return native.call('rpc_id', args);
  }
  public function setDeferredThreadGroup(property: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(property);
      args.append(value);
      native.call('set_deferred_thread_group', args);
  }
  public function setDisplayFolded(fold: Bool): Void {
      var args = new ArrayList();
      args.append(fold);
      native.call('set_display_folded', args);
  }
  public function setEditableInstance(node: Node, isEditable: Bool): Void {
      var args = new ArrayList();
      args.append(node.native);
      args.append(isEditable);
      native.call('set_editable_instance', args);
  }
  public function setMultiplayerAuthority(id: Int, ?recursive: Bool): Void {
      var args = new ArrayList();
      args.append(id);
      if (recursive != null) {
          args.append(recursive);
      }
      native.call('set_multiplayer_authority', args);
  }
  public function setPhysicsProcess(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      native.call('set_physics_process', args);
  }
  public function setPhysicsProcessInternal(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      native.call('set_physics_process_internal', args);
  }
  public function setProcess(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      native.call('set_process', args);
  }
  public function setProcessInput(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      native.call('set_process_input', args);
  }
  public function setProcessInternal(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      native.call('set_process_internal', args);
  }
  public function setProcessShortcutInput(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      native.call('set_process_shortcut_input', args);
  }
  public function setProcessUnhandledInput(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      native.call('set_process_unhandled_input', args);
  }
  public function setProcessUnhandledKeyInput(enable: Bool): Void {
      var args = new ArrayList();
      args.append(enable);
      native.call('set_process_unhandled_key_input', args);
  }
  public function setSceneInstanceLoadPlaceholder(loadPlaceholder: Bool): Void {
      var args = new ArrayList();
      args.append(loadPlaceholder);
      native.call('set_scene_instance_load_placeholder', args);
  }
  public function setThreadSafe(property: String, value: Variant): Void {
      var args = new ArrayList();
      args.append(property);
      args.append(value);
      native.call('set_thread_safe', args);
  }
  public function setTranslationDomainInherited(): Void {
      var args = new ArrayList();
      native.call('set_translation_domain_inherited', args);
  }
  public function updateConfigurationWarnings(): Void {
      var args = new ArrayList();
      native.call('update_configuration_warnings', args);
  }
}
