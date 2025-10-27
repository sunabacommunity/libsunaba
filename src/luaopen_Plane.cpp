#include "Runtime.h"

void Runtime::luaopen_Plane() {
	lua_state.new_usertype<Plane>("Plane",
		sol::constructors<
			Plane(),
			Plane(float, float, float, float),
			Plane(Vector3),
			Plane(Vector3, float)>(),
		"d", sol::property(
			[](Plane& plane) {
				return plane.d;
			},
			[](Plane& plane, float d) {
				plane.d = d;
			}
		),
		"normal", sol::property(
			[](Plane& plane) {
				return plane.normal;
			},
			[](Plane& plane, Vector3& normal) {
				plane.normal = normal;
			}
		),
		"distanceTo", &Plane::distance_to,
		"getCenter", &Plane::get_center,
		"hasPoint", &Plane::has_point,
		"intersect3", &Plane::intersect_3,
		"intersectRay", &Plane::intersects_ray,
		"intersectsSegment", &Plane::intersects_segment,
		"isEqualApprox", &Plane::is_equal_approx,
		"isFinite", &Plane::is_finite,
		"isPointOver", &Plane::is_point_over,
		"normalized", &Plane::normalized,
		"project", &Plane::project,
		"tostring", [](const Plane& plane) {
			return std::string((plane.operator String()).utf8().get_data());
		}
	);
}
