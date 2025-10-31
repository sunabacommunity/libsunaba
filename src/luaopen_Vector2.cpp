#include "Runtime.h"

void Runtime::luaopen_Vector2() {
	sol::usertype<Vector2> ut = lua_state.new_usertype<Vector2>(
		"Vector2",
		sol::constructors<Vector2(), Vector2(float, float)>(),
		"x", &Vector2::x,
		"y", &Vector2::y,
		"normalize", &Vector2::normalize,
		"normalized", &Vector2::normalized,
		"isNormalized", &Vector2::is_normalized,
		"length", &Vector2::length,
		"lengthSquared", &Vector2::length_squared,
		"limitLength", &Vector2::limit_length,
		"min", &Vector2::min,
		"max", &Vector2::max,
		"distanceTo", &Vector2::distance_to,
		"distanceSquaredTo", &Vector2::distance_squared_to,
		"angleTo", &Vector2::angle_to,
		"angleToPoint", &Vector2::angle_to_point,
		"dot", &Vector2::dot,
		"posmod", &Vector2::posmod,
		"posmodv", &Vector2::posmodv,
		"project", &Vector2::project,
		"planeProject", &Vector2::plane_project,
		"lerp", &Vector2::lerp,
		"slerp", &Vector2::slerp,
		"cubicInterpolate", &Vector2::cubic_interpolate,
		"cubicInterpolateInTime", &Vector2::cubic_interpolate_in_time,
		"bezierInterpolate", &Vector2::bezier_interpolate,
		"moveToward", &Vector2::move_toward,
		"slide", &Vector2::slide,
		"bounce", &Vector2::bounce,
		"reflect", &Vector2::reflect,
		"isEqualApprox", &Vector2::is_equal_approx,
		"isZeroApprox", &Vector2::is_zero_approx,
		"angle", &Vector2::angle,
		"abs", &Vector2::abs,
		"rotated", &Vector2::rotated,
		"orthogonal", &Vector2::orthogonal,
		"sign", &Vector2::sign,
		"floor", &Vector2::floor,
		"ceil", &Vector2::ceil,
		"round", &Vector2::round,
		"snapped", &Vector2::snapped,
		"clamp", &Vector2::clamp,
		"aspect", &Vector2::aspect,
		"tostring", [](const Vector2& v) { return std::string((v.operator String()).utf8().get_data()); }
	);
	/*
	ut["add"] = [](const Vector2& a, const Variant& b) {
		if (b.get_type() == Variant::TRANSFORM2D) {
			Transform2D t2d = b;
			return a + t2d.get_origin();
		}
		else if (b.get_type() == Variant::VECTOR2) {
			Vector2 v2 = b;
			return a + v2;
		}
		else if (b.get_type() == Variant::INT) {
			int i = b;
			Vector2 c = Vector2(a);
			c.x = a.x + i;
			c.y = a.x + i;
			return c;
		}
		else if (b.get_type() == Variant::FLOAT) {
			float f = b;
			Vector2 c = Vector2(a);
			c.x = a.x + f;
			c.y = a.y + f;
			return c;
		}
		else {
			return a;
		}
	};

	ut["sub"] = [](const Vector2& a, const Variant& b) {
		if (b.get_type() == Variant::TRANSFORM2D) {
			Transform2D t2d = b;
			return a - t2d.get_origin();
		}
		else if (b.get_type() == Variant::VECTOR2) {
			Vector2 v2 = b;
			return a - v2;
		}
		else if (b.get_type() == Variant::INT) {
			int i = b;
			Vector2 c = Vector2(a);
			c.x = a.x - i;
			c.y = a.x - i;
			return c;
		}
		else if (b.get_type() == Variant::FLOAT) {
			float f = b;
			Vector2 c = Vector2(a);
			c.x = a.x - f;
			c.y = a.y - f;
			return c;
		}
		else {
			return a;
		}
	};

	ut["mul"] = [](const Vector2& a, const Variant& b) {
		if (b.get_type() == Variant::TRANSFORM2D) {
			Transform2D t2d = b;
			return a * t2d.get_origin();
		}
		else if (b.get_type() == Variant::VECTOR2) {
			Vector2 v2 = b;
			return a * v2;
		}
		else if (b.get_type() == Variant::INT) {
			int i = b;
			Vector2 c = Vector2(a);
			c.x = a.x * i;
			c.y = a.x * i;
			return c;
		}
		else if (b.get_type() == Variant::FLOAT) {
			float f = b;
			Vector2 c = Vector2(a);
			c.x = a.x * f;
			c.y = a.y * f;
			return c;
		}
		else {
			return a;
		}
	};

	ut["div"] = [](const Vector2& a, const Variant& b) {
		if (b.get_type() == Variant::TRANSFORM2D) {
			Transform2D t2d = b;
			return a / t2d.get_origin();
		}
		else if (b.get_type() == Variant::VECTOR2) {
			Vector2 v2 = b;
			return a / v2;
		}
		else if (b.get_type() == Variant::INT) {
			int i = b;
			Vector2 c = Vector2();
			c.x = a.x / i;
			c.y = a.y / i;
			return c;
		}
		else if (b.get_type() == Variant::FLOAT) {
			float f = b;
			Vector2 c = Vector2(a);
			c.x = a.x / f;
			c.y = a.y / f;
			return c;
		}
		else {
			return a;
		}
	};*/

	ut["eq"] = [](const Vector2& a, const Vector2& b) {
		return a== b;
	};

	ut["gt"] = [](const Vector2& a, const Vector2& b) {
		return a < b;
	};

	ut["lt"] = [](const Vector2& a, const Vector2& b) {
		return a > b;
	};

	ut["gte"] = [](const Vector2& a, const Vector2& b) {
		return a <= b;
	};

	ut["lte"] = [](const Vector2& a, const Vector2& b) {
		return a >= b;
	};
}
