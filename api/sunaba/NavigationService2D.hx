package .Users.Shared.libsunaba.xmlgdapi.service.base;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.NavigationPolygon;
import sunaba.core.Vector2;
import sunaba.core.TypedArray;
import sunaba.Node;
import sunaba.core.Rect2;

class NavigationService2D extends BaseClass {
     private static var _native: NativeObject
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('NavigationService2D');
        }
        return _native;
    }


	private static var _avoidanceDebugChanged: Signal;
	public static var avoidanceDebugChanged(get, default): Signal;
	static function get_avoidanceDebugChanged(): Signal {
	    if (_avoidanceDebugChanged == null) {
	        _avoidanceDebugChanged = Signal.createFromObject(getNative(), 'avoidance_debug_changed');
	    }
	    return _avoidanceDebugChanged;
	}
	private static var _mapChanged: Signal;
	public static var mapChanged(get, default): Signal;
	static function get_mapChanged(): Signal {
	    if (_mapChanged == null) {
	        _mapChanged = Signal.createFromObject(getNative(), 'map_changed');
	    }
	    return _mapChanged;
	}
	private static var _navigationDebugChanged: Signal;
	public static var navigationDebugChanged(get, default): Signal;
	static function get_navigationDebugChanged(): Signal {
	    if (_navigationDebugChanged == null) {
	        _navigationDebugChanged = Signal.createFromObject(getNative(), 'navigation_debug_changed');
	    }
	    return _navigationDebugChanged;
	}

  public function agentCreate(): Int {
      var args = new ArrayList();
      return getNative().call('agent_create', args);
  }
  public function agentGetAvoidanceEnabled(agent: Int): Bool {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_avoidance_enabled', args);
  }
  public function agentGetAvoidanceLayers(agent: Int): Int {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_avoidance_layers', args);
  }
  public function agentGetAvoidanceMask(agent: Int): Int {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_avoidance_mask', args);
  }
  public function agentGetAvoidancePriority(agent: Int): Float {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_avoidance_priority', args);
  }
  public function agentGetMap(agent: Int): Int {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_map', args);
  }
  public function agentGetMaxNeighbors(agent: Int): Int {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_max_neighbors', args);
  }
  public function agentGetMaxSpeed(agent: Int): Float {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_max_speed', args);
  }
  public function agentGetNeighborDistance(agent: Int): Float {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_neighbor_distance', args);
  }
  public function agentGetPaused(agent: Int): Bool {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_paused', args);
  }
  public function agentGetPosition(agent: Int): Vector2 {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_position', args);
  }
  public function agentGetRadius(agent: Int): Float {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_radius', args);
  }
  public function agentGetTimeHorizonAgents(agent: Int): Float {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_time_horizon_agents', args);
  }
  public function agentGetTimeHorizonObstacles(agent: Int): Float {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_time_horizon_obstacles', args);
  }
  public function agentGetVelocity(agent: Int): Vector2 {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_velocity', args);
  }
  public function agentHasAvoidanceCallback(agent: Int): Bool {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_has_avoidance_callback', args);
  }
  public function agentIsMapChanged(agent: Int): Bool {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_is_map_changed', args);
  }
  public function agentSetAvoidanceCallback(agent: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(callback);
      getNative().call('agent_set_avoidance_callback', args);
  }
  public function agentSetAvoidanceEnabled(agent: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(enabled);
      getNative().call('agent_set_avoidance_enabled', args);
  }
  public function agentSetAvoidanceLayers(agent: Int, layers: Int): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(layers);
      getNative().call('agent_set_avoidance_layers', args);
  }
  public function agentSetAvoidanceMask(agent: Int, mask: Int): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(mask);
      getNative().call('agent_set_avoidance_mask', args);
  }
  public function agentSetAvoidancePriority(agent: Int, priority: Float): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(priority);
      getNative().call('agent_set_avoidance_priority', args);
  }
  public function agentSetMap(agent: Int, map: Int): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(map);
      getNative().call('agent_set_map', args);
  }
  public function agentSetMaxNeighbors(agent: Int, count: Int): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(count);
      getNative().call('agent_set_max_neighbors', args);
  }
  public function agentSetMaxSpeed(agent: Int, maxSpeed: Float): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(maxSpeed);
      getNative().call('agent_set_max_speed', args);
  }
  public function agentSetNeighborDistance(agent: Int, distance: Float): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(distance);
      getNative().call('agent_set_neighbor_distance', args);
  }
  public function agentSetPaused(agent: Int, paused: Bool): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(paused);
      getNative().call('agent_set_paused', args);
  }
  public function agentSetPosition(agent: Int, position: Vector2): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(position);
      getNative().call('agent_set_position', args);
  }
  public function agentSetRadius(agent: Int, radius: Float): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(radius);
      getNative().call('agent_set_radius', args);
  }
  public function agentSetTimeHorizonAgents(agent: Int, timeHorizon: Float): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(timeHorizon);
      getNative().call('agent_set_time_horizon_agents', args);
  }
  public function agentSetTimeHorizonObstacles(agent: Int, timeHorizon: Float): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(timeHorizon);
      getNative().call('agent_set_time_horizon_obstacles', args);
  }
  public function agentSetVelocity(agent: Int, velocity: Vector2): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(velocity);
      getNative().call('agent_set_velocity', args);
  }
  public function agentSetVelocityForced(agent: Int, velocity: Vector2): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(velocity);
      getNative().call('agent_set_velocity_forced', args);
  }
  public function bakeFromSourceGeometryData(navigationPolygon: NavigationPolygon, sourceGeometryData: Variant, ?callback: Variant): Void {
      var args = new ArrayList();
      args.append(navigationPolygon.native);
      args.append(sourceGeometryData);
      if (callback != null) {
          args.append(callback);
      }
      getNative().call('bake_from_source_geometry_data', args);
  }
  public function bakeFromSourceGeometryDataAsync(navigationPolygon: NavigationPolygon, sourceGeometryData: Variant, ?callback: Variant): Void {
      var args = new ArrayList();
      args.append(navigationPolygon.native);
      args.append(sourceGeometryData);
      if (callback != null) {
          args.append(callback);
      }
      getNative().call('bake_from_source_geometry_data_async', args);
  }
  public function freeRid(rid: Int): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('free_rid', args);
  }
  public function getDebugEnabled(): Bool {
      var args = new ArrayList();
      return getNative().call('get_debug_enabled', args);
  }
  public function getProcessInfo(processInfo: Int): Int {
      var args = new ArrayList();
      args.append(processInfo);
      return getNative().call('get_process_info', args);
  }
  public function isBakingNavigationPolygon(navigationPolygon: NavigationPolygon): Bool {
      var args = new ArrayList();
      args.append(navigationPolygon.native);
      return getNative().call('is_baking_navigation_polygon', args);
  }
  public function linkCreate(): Int {
      var args = new ArrayList();
      return getNative().call('link_create', args);
  }
  public function linkGetEnabled(link: Int): Bool {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_enabled', args);
  }
  public function linkGetEndPosition(link: Int): Vector2 {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_end_position', args);
  }
  public function linkGetEnterCost(link: Int): Float {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_enter_cost', args);
  }
  public function linkGetIterationId(link: Int): Int {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_iteration_id', args);
  }
  public function linkGetMap(link: Int): Int {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_map', args);
  }
  public function linkGetNavigationLayers(link: Int): Int {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_navigation_layers', args);
  }
  public function linkGetOwnerId(link: Int): Int {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_owner_id', args);
  }
  public function linkGetStartPosition(link: Int): Vector2 {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_start_position', args);
  }
  public function linkGetTravelCost(link: Int): Float {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_travel_cost', args);
  }
  public function linkIsBidirectional(link: Int): Bool {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_is_bidirectional', args);
  }
  public function linkSetBidirectional(link: Int, bidirectional: Bool): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(bidirectional);
      getNative().call('link_set_bidirectional', args);
  }
  public function linkSetEnabled(link: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(enabled);
      getNative().call('link_set_enabled', args);
  }
  public function linkSetEndPosition(link: Int, position: Vector2): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(position);
      getNative().call('link_set_end_position', args);
  }
  public function linkSetEnterCost(link: Int, enterCost: Float): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(enterCost);
      getNative().call('link_set_enter_cost', args);
  }
  public function linkSetMap(link: Int, map: Int): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(map);
      getNative().call('link_set_map', args);
  }
  public function linkSetNavigationLayers(link: Int, navigationLayers: Int): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(navigationLayers);
      getNative().call('link_set_navigation_layers', args);
  }
  public function linkSetOwnerId(link: Int, ownerId: Int): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(ownerId);
      getNative().call('link_set_owner_id', args);
  }
  public function linkSetStartPosition(link: Int, position: Vector2): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(position);
      getNative().call('link_set_start_position', args);
  }
  public function linkSetTravelCost(link: Int, travelCost: Float): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(travelCost);
      getNative().call('link_set_travel_cost', args);
  }
  public function mapCreate(): Int {
      var args = new ArrayList();
      return getNative().call('map_create', args);
  }
  public function mapForceUpdate(map: Int): Void {
      var args = new ArrayList();
      args.append(map);
      getNative().call('map_force_update', args);
  }
  public function mapGetCellSize(map: Int): Float {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_cell_size', args);
  }
  public function mapGetClosestPoint(map: Int, toPoint: Vector2): Vector2 {
      var args = new ArrayList();
      args.append(map);
      args.append(toPoint);
      return getNative().call('map_get_closest_point', args);
  }
  public function mapGetClosestPointOwner(map: Int, toPoint: Vector2): Int {
      var args = new ArrayList();
      args.append(map);
      args.append(toPoint);
      return getNative().call('map_get_closest_point_owner', args);
  }
  public function mapGetEdgeConnectionMargin(map: Int): Float {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_edge_connection_margin', args);
  }
  public function mapGetIterationId(map: Int): Int {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_iteration_id', args);
  }
  public function mapGetLinkConnectionRadius(map: Int): Float {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_link_connection_radius', args);
  }
  public function mapGetMergeRasterizerCellScale(map: Int): Float {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_merge_rasterizer_cell_scale', args);
  }
  public function mapGetPath(map: Int, origin: Vector2, destination: Vector2, optimize: Bool, ?navigationLayers: Int): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(map);
      args.append(origin);
      args.append(destination);
      args.append(optimize);
      if (navigationLayers != null) {
          args.append(navigationLayers);
      }
      return getNative().call('map_get_path', args);
  }
  public function mapGetRandomPoint(map: Int, navigationLayers: Int, uniformly: Bool): Vector2 {
      var args = new ArrayList();
      args.append(map);
      args.append(navigationLayers);
      args.append(uniformly);
      return getNative().call('map_get_random_point', args);
  }
  public function mapGetUseAsyncIterations(map: Int): Bool {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_use_async_iterations', args);
  }
  public function mapGetUseEdgeConnections(map: Int): Bool {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_use_edge_connections', args);
  }
  public function mapIsActive(map: Int): Bool {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_is_active', args);
  }
  public function mapSetActive(map: Int, active: Bool): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(active);
      getNative().call('map_set_active', args);
  }
  public function mapSetCellSize(map: Int, cellSize: Float): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(cellSize);
      getNative().call('map_set_cell_size', args);
  }
  public function mapSetEdgeConnectionMargin(map: Int, margin: Float): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(margin);
      getNative().call('map_set_edge_connection_margin', args);
  }
  public function mapSetLinkConnectionRadius(map: Int, radius: Float): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(radius);
      getNative().call('map_set_link_connection_radius', args);
  }
  public function mapSetMergeRasterizerCellScale(map: Int, scale: Float): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(scale);
      getNative().call('map_set_merge_rasterizer_cell_scale', args);
  }
  public function mapSetUseAsyncIterations(map: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(enabled);
      getNative().call('map_set_use_async_iterations', args);
  }
  public function mapSetUseEdgeConnections(map: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(enabled);
      getNative().call('map_set_use_edge_connections', args);
  }
  public function obstacleCreate(): Int {
      var args = new ArrayList();
      return getNative().call('obstacle_create', args);
  }
  public function obstacleGetAvoidanceEnabled(obstacle: Int): Bool {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_avoidance_enabled', args);
  }
  public function obstacleGetAvoidanceLayers(obstacle: Int): Int {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_avoidance_layers', args);
  }
  public function obstacleGetMap(obstacle: Int): Int {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_map', args);
  }
  public function obstacleGetPaused(obstacle: Int): Bool {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_paused', args);
  }
  public function obstacleGetPosition(obstacle: Int): Vector2 {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_position', args);
  }
  public function obstacleGetRadius(obstacle: Int): Float {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_radius', args);
  }
  public function obstacleGetVelocity(obstacle: Int): Vector2 {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_velocity', args);
  }
  public function obstacleGetVertices(obstacle: Int): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_vertices', args);
  }
  public function obstacleSetAvoidanceEnabled(obstacle: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(enabled);
      getNative().call('obstacle_set_avoidance_enabled', args);
  }
  public function obstacleSetAvoidanceLayers(obstacle: Int, layers: Int): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(layers);
      getNative().call('obstacle_set_avoidance_layers', args);
  }
  public function obstacleSetMap(obstacle: Int, map: Int): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(map);
      getNative().call('obstacle_set_map', args);
  }
  public function obstacleSetPaused(obstacle: Int, paused: Bool): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(paused);
      getNative().call('obstacle_set_paused', args);
  }
  public function obstacleSetPosition(obstacle: Int, position: Vector2): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(position);
      getNative().call('obstacle_set_position', args);
  }
  public function obstacleSetRadius(obstacle: Int, radius: Float): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(radius);
      getNative().call('obstacle_set_radius', args);
  }
  public function obstacleSetVelocity(obstacle: Int, velocity: Vector2): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(velocity);
      getNative().call('obstacle_set_velocity', args);
  }
  public function obstacleSetVertices(obstacle: Int, vertices: TypedArray<Vector2>): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(vertices);
      getNative().call('obstacle_set_vertices', args);
  }
  public function parseSourceGeometryData(navigationPolygon: NavigationPolygon, sourceGeometryData: Variant, rootNode: Node, ?callback: Variant): Void {
      var args = new ArrayList();
      args.append(navigationPolygon.native);
      args.append(sourceGeometryData);
      args.append(rootNode.native);
      if (callback != null) {
          args.append(callback);
      }
      getNative().call('parse_source_geometry_data', args);
  }
  public function queryPath(parameters: Variant, result: Variant, ?callback: Variant): Void {
      var args = new ArrayList();
      args.append(parameters);
      args.append(result);
      if (callback != null) {
          args.append(callback);
      }
      getNative().call('query_path', args);
  }
  public function regionCreate(): Int {
      var args = new ArrayList();
      return getNative().call('region_create', args);
  }
  public function regionGetBounds(region: Int): Rect2 {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_bounds', args);
  }
  public function regionGetClosestPoint(region: Int, toPoint: Vector2): Vector2 {
      var args = new ArrayList();
      args.append(region);
      args.append(toPoint);
      return getNative().call('region_get_closest_point', args);
  }
  public function regionGetConnectionPathwayEnd(region: Int, connection: Int): Vector2 {
      var args = new ArrayList();
      args.append(region);
      args.append(connection);
      return getNative().call('region_get_connection_pathway_end', args);
  }
  public function regionGetConnectionPathwayStart(region: Int, connection: Int): Vector2 {
      var args = new ArrayList();
      args.append(region);
      args.append(connection);
      return getNative().call('region_get_connection_pathway_start', args);
  }
  public function regionGetConnectionsCount(region: Int): Int {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_connections_count', args);
  }
  public function regionGetEnabled(region: Int): Bool {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_enabled', args);
  }
  public function regionGetEnterCost(region: Int): Float {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_enter_cost', args);
  }
  public function regionGetIterationId(region: Int): Int {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_iteration_id', args);
  }
  public function regionGetMap(region: Int): Int {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_map', args);
  }
  public function regionGetNavigationLayers(region: Int): Int {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_navigation_layers', args);
  }
  public function regionGetOwnerId(region: Int): Int {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_owner_id', args);
  }
  public function regionGetRandomPoint(region: Int, navigationLayers: Int, uniformly: Bool): Vector2 {
      var args = new ArrayList();
      args.append(region);
      args.append(navigationLayers);
      args.append(uniformly);
      return getNative().call('region_get_random_point', args);
  }
  public function regionGetTravelCost(region: Int): Float {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_travel_cost', args);
  }
  public function regionGetUseAsyncIterations(region: Int): Bool {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_use_async_iterations', args);
  }
  public function regionGetUseEdgeConnections(region: Int): Bool {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_use_edge_connections', args);
  }
  public function regionOwnsPoint(region: Int, point: Vector2): Bool {
      var args = new ArrayList();
      args.append(region);
      args.append(point);
      return getNative().call('region_owns_point', args);
  }
  public function regionSetEnabled(region: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(enabled);
      getNative().call('region_set_enabled', args);
  }
  public function regionSetEnterCost(region: Int, enterCost: Float): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(enterCost);
      getNative().call('region_set_enter_cost', args);
  }
  public function regionSetMap(region: Int, map: Int): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(map);
      getNative().call('region_set_map', args);
  }
  public function regionSetNavigationLayers(region: Int, navigationLayers: Int): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(navigationLayers);
      getNative().call('region_set_navigation_layers', args);
  }
  public function regionSetNavigationPolygon(region: Int, navigationPolygon: NavigationPolygon): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(navigationPolygon.native);
      getNative().call('region_set_navigation_polygon', args);
  }
  public function regionSetOwnerId(region: Int, ownerId: Int): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(ownerId);
      getNative().call('region_set_owner_id', args);
  }
  public function regionSetTransform(region: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(transform);
      getNative().call('region_set_transform', args);
  }
  public function regionSetTravelCost(region: Int, travelCost: Float): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(travelCost);
      getNative().call('region_set_travel_cost', args);
  }
  public function regionSetUseAsyncIterations(region: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(enabled);
      getNative().call('region_set_use_async_iterations', args);
  }
  public function regionSetUseEdgeConnections(region: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(enabled);
      getNative().call('region_set_use_edge_connections', args);
  }
  public function setActive(active: Bool): Void {
      var args = new ArrayList();
      args.append(active);
      getNative().call('set_active', args);
  }
  public function setDebugEnabled(enabled: Bool): Void {
      var args = new ArrayList();
      args.append(enabled);
      getNative().call('set_debug_enabled', args);
  }
  public function simplifyPath(path: TypedArray<Vector2>, epsilon: Float): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(path);
      args.append(epsilon);
      return getNative().call('simplify_path', args);
  }
  public function sourceGeometryParserCreate(): Int {
      var args = new ArrayList();
      return getNative().call('source_geometry_parser_create', args);
  }
  public function sourceGeometryParserSetCallback(parser: Int, callback: Variant): Void {
      var args = new ArrayList();
      args.append(parser);
      args.append(callback);
      getNative().call('source_geometry_parser_set_callback', args);
  }
}
