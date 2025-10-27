#include "Runtime.h"

void Runtime::luaopen_Transform2D() {
	lua_state.new_usertype<Transform2D>("Transform2D",
		sol::constructors<
			Transform2D(),
			Transform2D(float, Vector2),
			Transform2D(float, Vector2, float, Vector2),
			Transform2D(Vector2, Vector2, Vector2)>(),
		"origin", sol::property(
			[](Transform2D& t2d) {
				return t2d.get_origin();
			},
			[](Transform2D& t2d, Vector2& origin) {
				t2d.set_origin(origin);
			}
		),
		"x", sol::property(
			[](Transform2D& t2d) {
				return t2d.columns[0];
			},
			[](Transform2D& t2d, Vector2 value) {
				t2d.columns[0] = value;
			}
		),
		"y", sol::property(
			[](Transform2D& t2d) {
				return t2d.columns[0];
			},
			[](Transform2D& t2d, Vector2 value) {
				t2d.columns[1] = value;
			}
		),
		"affineInverse", &Transform2D::affine_inverse,
		"basisXform", &Transform2D::basis_xform,
		"basisXformInv", &Transform2D::basis_xform_inv,
		"determinant", &Transform2D::determinant,
		"getOrigin", &Transform2D::get_origin,
		"getRotation", &Transform2D::get_rotation,
		"getScale", &Transform2D::get_scale,
		"getSkew", &Transform2D::get_skew,
		"interpolateWith", &Transform2D::interpolate_with,
		"inverse", &Transform2D::inverse,
		"isConformal", &Transform2D::is_conformal,
		"isEqualApprox", &Transform2D::is_equal_approx,
		//"isFinite", &Transform2D::is_finite,
		"lookingAt", &Transform2D::looking_at,
		"orthonormalized", &Transform2D::orthonormalized,
		"rotated", &Transform2D::rotated,
		"rotatedLocal", &Transform2D::rotated_local,
		"scaled", &Transform2D::scaled,
		"scaledLocal", &Transform2D::scaled_local,
		"translated", &Transform2D::translated,
		"translatedLocal", &Transform2D::translated_local,
		"tostring", [](const Transform2D& t) { return std::string((t.operator String()).utf8().get_data()); }
	);
}
