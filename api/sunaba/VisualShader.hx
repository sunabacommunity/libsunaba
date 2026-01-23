package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.core.Signal;
import sunaba.core.TypedArray;

class VisualShader extends Shader {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('VisualShader');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['VisualShader', native];
        scriptLoader.call('loadScript', args);
    }

    public var graphOffset(get, set): Vector2;
    function get_graphOffset(): Vector2 {
        return native.get('graph_offset');
    }
    function set_graphOffset(value: Vector2): Vector2 {
      native.set('graph_offset', value);
        return value;
    }


  public function addNode(type: Int, node: VisualShaderNode, position: Vector2, id: Int): Void {
      var args = new ArrayList();
      args.append(type);
      args.append(node.native);
      args.append(position);
      args.append(id);
      native.call('add_node', args);
  }
  public function addVarying(name: String, mode: Int, type: Int): Void {
      var args = new ArrayList();
      args.append(name);
      args.append(mode);
      args.append(type);
      native.call('add_varying', args);
  }
  public function attachNodeToFrame(type: Int, id: Int, frame: Int): Void {
      var args = new ArrayList();
      args.append(type);
      args.append(id);
      args.append(frame);
      native.call('attach_node_to_frame', args);
  }
  public function canConnectNodes(type: Int, fromNode: Int, fromPort: Int, toNode: Int, toPort: Int): Bool {
      var args = new ArrayList();
      args.append(type);
      args.append(fromNode);
      args.append(fromPort);
      args.append(toNode);
      args.append(toPort);
      return native.call('can_connect_nodes', args);
  }
  public function connectNodes(type: Int, fromNode: Int, fromPort: Int, toNode: Int, toPort: Int): Int {
      var args = new ArrayList();
      args.append(type);
      args.append(fromNode);
      args.append(fromPort);
      args.append(toNode);
      args.append(toPort);
      return native.call('connect_nodes', args);
  }
  public function connectNodesForced(type: Int, fromNode: Int, fromPort: Int, toNode: Int, toPort: Int): Void {
      var args = new ArrayList();
      args.append(type);
      args.append(fromNode);
      args.append(fromPort);
      args.append(toNode);
      args.append(toPort);
      native.call('connect_nodes_forced', args);
  }
  public function detachNodeFromFrame(type: Int, id: Int): Void {
      var args = new ArrayList();
      args.append(type);
      args.append(id);
      native.call('detach_node_from_frame', args);
  }
  public function disconnectNodes(type: Int, fromNode: Int, fromPort: Int, toNode: Int, toPort: Int): Void {
      var args = new ArrayList();
      args.append(type);
      args.append(fromNode);
      args.append(fromPort);
      args.append(toNode);
      args.append(toPort);
      native.call('disconnect_nodes', args);
  }
  public function getNode(type: Int, id: Int): VisualShaderNode {
      var args = new ArrayList();
      args.append(type);
      args.append(id);
      var ref: NativeReference = native.call('get_node', args);
      return new VisualShaderNode(ref);
  }
  public function getNodeConnections(type: Int): ArrayList {
      var args = new ArrayList();
      args.append(type);
      return native.call('get_node_connections', args);
  }
  public function getNodeList(type: Int): TypedArray<Int> {
      var args = new ArrayList();
      args.append(type);
      return native.call('get_node_list', args);
  }
  public function getNodePosition(type: Int, id: Int): Vector2 {
      var args = new ArrayList();
      args.append(type);
      args.append(id);
      return native.call('get_node_position', args);
  }
  public function getValidNodeId(type: Int): Int {
      var args = new ArrayList();
      args.append(type);
      return native.call('get_valid_node_id', args);
  }
  public function hasVarying(name: String): Bool {
      var args = new ArrayList();
      args.append(name);
      return native.call('has_varying', args);
  }
  public function isNodeConnection(type: Int, fromNode: Int, fromPort: Int, toNode: Int, toPort: Int): Bool {
      var args = new ArrayList();
      args.append(type);
      args.append(fromNode);
      args.append(fromPort);
      args.append(toNode);
      args.append(toPort);
      return native.call('is_node_connection', args);
  }
  public function removeNode(type: Int, id: Int): Void {
      var args = new ArrayList();
      args.append(type);
      args.append(id);
      native.call('remove_node', args);
  }
  public function removeVarying(name: String): Void {
      var args = new ArrayList();
      args.append(name);
      native.call('remove_varying', args);
  }
  public function replaceNode(type: Int, id: Int, newClass: String): Void {
      var args = new ArrayList();
      args.append(type);
      args.append(id);
      args.append(newClass);
      native.call('replace_node', args);
  }
  public function setMode(mode: Int): Void {
      var args = new ArrayList();
      args.append(mode);
      native.call('set_mode', args);
  }
  public function setNodePosition(type: Int, id: Int, position: Vector2): Void {
      var args = new ArrayList();
      args.append(type);
      args.append(id);
      args.append(position);
      native.call('set_node_position', args);
  }
}
