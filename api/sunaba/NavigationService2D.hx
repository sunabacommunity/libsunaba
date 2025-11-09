package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.Vector2;
import sunaba.core.Vector2;
import sunaba.core.TypedArray;
import sunaba.core.Rect2;

class NavigationService2D extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('NavigationServer2D');
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

  public static function agentCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('agent_create', args);
  }
  public static function agentGetAvoidanceEnabled(agent: Variant): Bool {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_avoidance_enabled', args);
  }
  public static function agentGetAvoidanceLayers(agent: Variant): Int {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_avoidance_layers', args);
  }
  public static function agentGetAvoidanceMask(agent: Variant): Int {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_avoidance_mask', args);
  }
  public static function agentGetAvoidancePriority(agent: Variant): Float {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_avoidance_priority', args);
  }
  public static function agentGetMap(agent: Variant): Variant {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_map', args);
  }
  public static function agentGetMaxNeighbors(agent: Variant): Int {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_max_neighbors', args);
  }
  public static function agentGetMaxSpeed(agent: Variant): Float {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_max_speed', args);
  }
  public static function agentGetNeighborDistance(agent: Variant): Float {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_neighbor_distance', args);
  }
  public static function agentGetPaused(agent: Variant): Bool {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_paused', args);
  }
  public static function agentGetPosition(agent: Variant): Vector2 {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_position', args);
  }
  public static function agentGetRadius(agent: Variant): Float {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_radius', args);
  }
  public static function agentGetTimeHorizonAgents(agent: Variant): Float {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_time_horizon_agents', args);
  }
  public static function agentGetTimeHorizonObstacles(agent: Variant): Float {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_time_horizon_obstacles', args);
  }
  public static function agentGetVelocity(agent: Variant): Vector2 {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_get_velocity', args);
  }
  public static function agentHasAvoidanceCallback(agent: Variant): Bool {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_has_avoidance_callback', args);
  }
  public static function agentIsMapChanged(agent: Variant): Bool {
      var args = new ArrayList();
      args.append(agent);
      return getNative().call('agent_is_map_changed', args);
  }
  public static function agentSetAvoidanceCallback(agent: Variant, callback: Variant): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(callback);
      getNative().call('agent_set_avoidance_callback', args);
  }
  public static function agentSetAvoidanceEnabled(agent: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(enabled);
      getNative().call('agent_set_avoidance_enabled', args);
  }
  public static function agentSetAvoidanceLayers(agent: Variant, layers: Int): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(layers);
      getNative().call('agent_set_avoidance_layers', args);
  }
  public static function agentSetAvoidanceMask(agent: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(mask);
      getNative().call('agent_set_avoidance_mask', args);
  }
  public static function agentSetAvoidancePriority(agent: Variant, priority: Float): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(priority);
      getNative().call('agent_set_avoidance_priority', args);
  }
  public static function agentSetMap(agent: Variant, map: Variant): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(map);
      getNative().call('agent_set_map', args);
  }
  public static function agentSetMaxNeighbors(agent: Variant, count: Int): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(count);
      getNative().call('agent_set_max_neighbors', args);
  }
  public static function agentSetMaxSpeed(agent: Variant, maxSpeed: Float): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(maxSpeed);
      getNative().call('agent_set_max_speed', args);
  }
  public static function agentSetNeighborDistance(agent: Variant, distance: Float): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(distance);
      getNative().call('agent_set_neighbor_distance', args);
  }
  public static function agentSetPaused(agent: Variant, paused: Bool): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(paused);
      getNative().call('agent_set_paused', args);
  }
  public static function agentSetPosition(agent: Variant, position: Vector2): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(position);
      getNative().call('agent_set_position', args);
  }
  public static function agentSetRadius(agent: Variant, radius: Float): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(radius);
      getNative().call('agent_set_radius', args);
  }
  public static function agentSetTimeHorizonAgents(agent: Variant, timeHorizon: Float): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(timeHorizon);
      getNative().call('agent_set_time_horizon_agents', args);
  }
  public static function agentSetTimeHorizonObstacles(agent: Variant, timeHorizon: Float): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(timeHorizon);
      getNative().call('agent_set_time_horizon_obstacles', args);
  }
  public static function agentSetVelocity(agent: Variant, velocity: Vector2): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(velocity);
      getNative().call('agent_set_velocity', args);
  }
  public static function agentSetVelocityForced(agent: Variant, velocity: Vector2): Void {
      var args = new ArrayList();
      args.append(agent);
      args.append(velocity);
      getNative().call('agent_set_velocity_forced', args);
  }
  public static function bakeFromSourceGeometryData(navigationPolygon: NavigationPolygon, sourceGeometryData: Variant, ?callback: Variant): Void {
      var args = new ArrayList();
      args.append(navigationPolygon.native);
      args.append(sourceGeometryData);
      if (callback != null) {
          args.append(callback);
      }
      getNative().call('bake_from_source_geometry_data', args);
  }
  public static function bakeFromSourceGeometryDataAsync(navigationPolygon: NavigationPolygon, sourceGeometryData: Variant, ?callback: Variant): Void {
      var args = new ArrayList();
      args.append(navigationPolygon.native);
      args.append(sourceGeometryData);
      if (callback != null) {
          args.append(callback);
      }
      getNative().call('bake_from_source_geometry_data_async', args);
  }
  public static function freeRid(rid: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('free_rid', args);
  }
  public static function getDebugEnabled(): Bool {
      var args = new ArrayList();
      return getNative().call('get_debug_enabled', args);
  }
  public static function getProcessInfo(processInfo: Int): Int {
      var args = new ArrayList();
      args.append(processInfo);
      return getNative().call('get_process_info', args);
  }
  public static function isBakingNavigationPolygon(navigationPolygon: NavigationPolygon): Bool {
      var args = new ArrayList();
      args.append(navigationPolygon.native);
      return getNative().call('is_baking_navigation_polygon', args);
  }
  public static function linkCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('link_create', args);
  }
  public static function linkGetEnabled(link: Variant): Bool {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_enabled', args);
  }
  public static function linkGetEndPosition(link: Variant): Vector2 {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_end_position', args);
  }
  public static function linkGetEnterCost(link: Variant): Float {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_enter_cost', args);
  }
  public static function linkGetIterationId(link: Variant): Int {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_iteration_id', args);
  }
  public static function linkGetMap(link: Variant): Variant {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_map', args);
  }
  public static function linkGetNavigationLayers(link: Variant): Int {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_navigation_layers', args);
  }
  public static function linkGetOwnerId(link: Variant): Int {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_owner_id', args);
  }
  public static function linkGetStartPosition(link: Variant): Vector2 {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_start_position', args);
  }
  public static function linkGetTravelCost(link: Variant): Float {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_get_travel_cost', args);
  }
  public static function linkIsBidirectional(link: Variant): Bool {
      var args = new ArrayList();
      args.append(link);
      return getNative().call('link_is_bidirectional', args);
  }
  public static function linkSetBidirectional(link: Variant, bidirectional: Bool): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(bidirectional);
      getNative().call('link_set_bidirectional', args);
  }
  public static function linkSetEnabled(link: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(enabled);
      getNative().call('link_set_enabled', args);
  }
  public static function linkSetEndPosition(link: Variant, position: Vector2): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(position);
      getNative().call('link_set_end_position', args);
  }
  public static function linkSetEnterCost(link: Variant, enterCost: Float): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(enterCost);
      getNative().call('link_set_enter_cost', args);
  }
  public static function linkSetMap(link: Variant, map: Variant): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(map);
      getNative().call('link_set_map', args);
  }
  public static function linkSetNavigationLayers(link: Variant, navigationLayers: Int): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(navigationLayers);
      getNative().call('link_set_navigation_layers', args);
  }
  public static function linkSetOwnerId(link: Variant, ownerId: Int): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(ownerId);
      getNative().call('link_set_owner_id', args);
  }
  public static function linkSetStartPosition(link: Variant, position: Vector2): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(position);
      getNative().call('link_set_start_position', args);
  }
  public static function linkSetTravelCost(link: Variant, travelCost: Float): Void {
      var args = new ArrayList();
      args.append(link);
      args.append(travelCost);
      getNative().call('link_set_travel_cost', args);
  }
  public static function mapCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('map_create', args);
  }
  public static function mapForceUpdate(map: Variant): Void {
      var args = new ArrayList();
      args.append(map);
      getNative().call('map_force_update', args);
  }
  public static function mapGetCellSize(map: Variant): Float {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_cell_size', args);
  }
  public static function mapGetClosestPoint(map: Variant, toPoint: Vector2): Vector2 {
      var args = new ArrayList();
      args.append(map);
      args.append(toPoint);
      return getNative().call('map_get_closest_point', args);
  }
  public static function mapGetClosestPointOwner(map: Variant, toPoint: Vector2): Variant {
      var args = new ArrayList();
      args.append(map);
      args.append(toPoint);
      return getNative().call('map_get_closest_point_owner', args);
  }
  public static function mapGetEdgeConnectionMargin(map: Variant): Float {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_edge_connection_margin', args);
  }
  public static function mapGetIterationId(map: Variant): Int {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_iteration_id', args);
  }
  public static function mapGetLinkConnectionRadius(map: Variant): Float {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_link_connection_radius', args);
  }
  public static function mapGetMergeRasterizerCellScale(map: Variant): Float {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_merge_rasterizer_cell_scale', args);
  }
  public static function mapGetPath(map: Variant, origin: Vector2, destination: Vector2, optimize: Bool, ?navigationLayers: Int): TypedArray<Vector2> {
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
  public static function mapGetRandomPoint(map: Variant, navigationLayers: Int, uniformly: Bool): Vector2 {
      var args = new ArrayList();
      args.append(map);
      args.append(navigationLayers);
      args.append(uniformly);
      return getNative().call('map_get_random_point', args);
  }
  public static function mapGetUseAsyncIterations(map: Variant): Bool {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_use_async_iterations', args);
  }
  public static function mapGetUseEdgeConnections(map: Variant): Bool {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_get_use_edge_connections', args);
  }
  public static function mapIsActive(map: Variant): Bool {
      var args = new ArrayList();
      args.append(map);
      return getNative().call('map_is_active', args);
  }
  public static function mapSetActive(map: Variant, active: Bool): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(active);
      getNative().call('map_set_active', args);
  }
  public static function mapSetCellSize(map: Variant, cellSize: Float): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(cellSize);
      getNative().call('map_set_cell_size', args);
  }
  public static function mapSetEdgeConnectionMargin(map: Variant, margin: Float): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(margin);
      getNative().call('map_set_edge_connection_margin', args);
  }
  public static function mapSetLinkConnectionRadius(map: Variant, radius: Float): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(radius);
      getNative().call('map_set_link_connection_radius', args);
  }
  public static function mapSetMergeRasterizerCellScale(map: Variant, scale: Float): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(scale);
      getNative().call('map_set_merge_rasterizer_cell_scale', args);
  }
  public static function mapSetUseAsyncIterations(map: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(enabled);
      getNative().call('map_set_use_async_iterations', args);
  }
  public static function mapSetUseEdgeConnections(map: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(map);
      args.append(enabled);
      getNative().call('map_set_use_edge_connections', args);
  }
  public static function obstacleCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('obstacle_create', args);
  }
  public static function obstacleGetAvoidanceEnabled(obstacle: Variant): Bool {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_avoidance_enabled', args);
  }
  public static function obstacleGetAvoidanceLayers(obstacle: Variant): Int {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_avoidance_layers', args);
  }
  public static function obstacleGetMap(obstacle: Variant): Variant {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_map', args);
  }
  public static function obstacleGetPaused(obstacle: Variant): Bool {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_paused', args);
  }
  public static function obstacleGetPosition(obstacle: Variant): Vector2 {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_position', args);
  }
  public static function obstacleGetRadius(obstacle: Variant): Float {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_radius', args);
  }
  public static function obstacleGetVelocity(obstacle: Variant): Vector2 {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_velocity', args);
  }
  public static function obstacleGetVertices(obstacle: Variant): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(obstacle);
      return getNative().call('obstacle_get_vertices', args);
  }
  public static function obstacleSetAvoidanceEnabled(obstacle: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(enabled);
      getNative().call('obstacle_set_avoidance_enabled', args);
  }
  public static function obstacleSetAvoidanceLayers(obstacle: Variant, layers: Int): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(layers);
      getNative().call('obstacle_set_avoidance_layers', args);
  }
  public static function obstacleSetMap(obstacle: Variant, map: Variant): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(map);
      getNative().call('obstacle_set_map', args);
  }
  public static function obstacleSetPaused(obstacle: Variant, paused: Bool): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(paused);
      getNative().call('obstacle_set_paused', args);
  }
  public static function obstacleSetPosition(obstacle: Variant, position: Vector2): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(position);
      getNative().call('obstacle_set_position', args);
  }
  public static function obstacleSetRadius(obstacle: Variant, radius: Float): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(radius);
      getNative().call('obstacle_set_radius', args);
  }
  public static function obstacleSetVelocity(obstacle: Variant, velocity: Vector2): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(velocity);
      getNative().call('obstacle_set_velocity', args);
  }
  public static function obstacleSetVertices(obstacle: Variant, vertices: TypedArray<Vector2>): Void {
      var args = new ArrayList();
      args.append(obstacle);
      args.append(vertices);
      getNative().call('obstacle_set_vertices', args);
  }
  public static function parseSourceGeometryData(navigationPolygon: NavigationPolygon, sourceGeometryData: Variant, rootNode: Node, ?callback: Variant): Void {
      var args = new ArrayList();
      args.append(navigationPolygon.native);
      args.append(sourceGeometryData);
      args.append(rootNode.native);
      if (callback != null) {
          args.append(callback);
      }
      getNative().call('parse_source_geometry_data', args);
  }
  public static function queryPath(parameters: Variant, result: Variant, ?callback: Variant): Void {
      var args = new ArrayList();
      args.append(parameters);
      args.append(result);
      if (callback != null) {
          args.append(callback);
      }
      getNative().call('query_path', args);
  }
  public static function regionCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('region_create', args);
  }
  public static function regionGetBounds(region: Variant): Rect2 {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_bounds', args);
  }
  public static function regionGetClosestPoint(region: Variant, toPoint: Vector2): Vector2 {
      var args = new ArrayList();
      args.append(region);
      args.append(toPoint);
      return getNative().call('region_get_closest_point', args);
  }
  public static function regionGetConnectionPathwayEnd(region: Variant, connection: Int): Vector2 {
      var args = new ArrayList();
      args.append(region);
      args.append(connection);
      return getNative().call('region_get_connection_pathway_end', args);
  }
  public static function regionGetConnectionPathwayStart(region: Variant, connection: Int): Vector2 {
      var args = new ArrayList();
      args.append(region);
      args.append(connection);
      return getNative().call('region_get_connection_pathway_start', args);
  }
  public static function regionGetConnectionsCount(region: Variant): Int {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_connections_count', args);
  }
  public static function regionGetEnabled(region: Variant): Bool {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_enabled', args);
  }
  public static function regionGetEnterCost(region: Variant): Float {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_enter_cost', args);
  }
  public static function regionGetIterationId(region: Variant): Int {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_iteration_id', args);
  }
  public static function regionGetMap(region: Variant): Variant {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_map', args);
  }
  public static function regionGetNavigationLayers(region: Variant): Int {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_navigation_layers', args);
  }
  public static function regionGetOwnerId(region: Variant): Int {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_owner_id', args);
  }
  public static function regionGetRandomPoint(region: Variant, navigationLayers: Int, uniformly: Bool): Vector2 {
      var args = new ArrayList();
      args.append(region);
      args.append(navigationLayers);
      args.append(uniformly);
      return getNative().call('region_get_random_point', args);
  }
  public static function regionGetTravelCost(region: Variant): Float {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_travel_cost', args);
  }
  public static function regionGetUseAsyncIterations(region: Variant): Bool {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_use_async_iterations', args);
  }
  public static function regionGetUseEdgeConnections(region: Variant): Bool {
      var args = new ArrayList();
      args.append(region);
      return getNative().call('region_get_use_edge_connections', args);
  }
  public static function regionOwnsPoint(region: Variant, point: Vector2): Bool {
      var args = new ArrayList();
      args.append(region);
      args.append(point);
      return getNative().call('region_owns_point', args);
  }
  public static function regionSetEnabled(region: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(enabled);
      getNative().call('region_set_enabled', args);
  }
  public static function regionSetEnterCost(region: Variant, enterCost: Float): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(enterCost);
      getNative().call('region_set_enter_cost', args);
  }
  public static function regionSetMap(region: Variant, map: Variant): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(map);
      getNative().call('region_set_map', args);
  }
  public static function regionSetNavigationLayers(region: Variant, navigationLayers: Int): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(navigationLayers);
      getNative().call('region_set_navigation_layers', args);
  }
  public static function regionSetNavigationPolygon(region: Variant, navigationPolygon: NavigationPolygon): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(navigationPolygon.native);
      getNative().call('region_set_navigation_polygon', args);
  }
  public static function regionSetOwnerId(region: Variant, ownerId: Int): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(ownerId);
      getNative().call('region_set_owner_id', args);
  }
  public static function regionSetTransform(region: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(transform);
      getNative().call('region_set_transform', args);
  }
  public static function regionSetTravelCost(region: Variant, travelCost: Float): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(travelCost);
      getNative().call('region_set_travel_cost', args);
  }
  public static function regionSetUseAsyncIterations(region: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(enabled);
      getNative().call('region_set_use_async_iterations', args);
  }
  public static function regionSetUseEdgeConnections(region: Variant, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(region);
      args.append(enabled);
      getNative().call('region_set_use_edge_connections', args);
  }
  public static function setActive(active: Bool): Void {
      var args = new ArrayList();
      args.append(active);
      getNative().call('set_active', args);
  }
  public static function setDebugEnabled(enabled: Bool): Void {
      var args = new ArrayList();
      args.append(enabled);
      getNative().call('set_debug_enabled', args);
  }
  public static function simplifyPath(path: TypedArray<Vector2>, epsilon: Float): TypedArray<Vector2> {
      var args = new ArrayList();
      args.append(path);
      args.append(epsilon);
      return getNative().call('simplify_path', args);
  }
  public static function sourceGeometryParserCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('source_geometry_parser_create', args);
  }
  public static function sourceGeometryParserSetCallback(parser: Variant, callback: Variant): Void {
      var args = new ArrayList();
      args.append(parser);
      args.append(callback);
      getNative().call('source_geometry_parser_set_callback', args);
  }
}
