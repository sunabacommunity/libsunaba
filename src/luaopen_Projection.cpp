#include "Runtime.h"

void Runtime::luaopen_Projection() {
	lua_state.new_usertype<Projection>("Projection",
		sol::constructors<
			Projection(),
			Projection(Transform3D),
			Projection(Vector4, Vector4, Vector4, Vector4)>(),
		"w", sol::property(
			[](const Projection& projection) {
				return projection.columns[3];
			},
			[](Projection& projection, const Vector4& vector4) {
				projection.columns[3] = vector4;
			}
		),
		"x", sol::property(
			[](const Projection& projection) {
				return projection.columns[0];
			},
			[](Projection& projection, const Vector4& vector4) {
				projection.columns[0] = vector4;
			}
		),
		"y", sol::property(
			[](const Projection& projection) {
				return projection.columns[1];
			},
			[](Projection& projection, const Vector4& vector4) {
				projection.columns[1] = vector4;
			}
		),
		"z", sol::property(
			[](const Projection& projection) {
				return projection.columns[2];
			},
			[](Projection& projection, const Vector4& vector4) {
				projection.columns[2] = vector4;
			}
		),
		"createDepthCorrection", &Projection::create_depth_correction,
		"createFitAabb", &Projection::create_fit_aabb,
		"createForHmd", &Projection::create_for_hmd,
		"createFrustum", &Projection::create_frustum,
		"createFrustumAspect", &Projection::create_frustum_aspect,
		"createLightAtlasRect", &Projection::create_light_atlas_rect,
		"createOrthogonal", &Projection::create_orthogonal,
		"createOrthogonalAspect", &Projection::create_orthogonal_aspect,
		"determinant", &Projection::determinant,
		"flippedY", &Projection::flipped_y,
		"getAspect", &Projection::get_aspect,
		"getFarPlaneHalfExtents", &Projection::get_far_plane_half_extents,
		"getFov", &Projection::get_fov,
		"getFovy", &Projection::get_fovy,
		"getLodMultiplier", &Projection::get_lod_multiplier,
		"getPixelsPerMeter", &Projection::get_pixels_per_meter,
		"getProjectionPlane", &Projection::get_projection_plane,
		"getViewportHalfExtents", &Projection::get_viewport_half_extents,
		"getZFar", &Projection::get_z_far,
		"getZNear", &Projection::get_z_near,
		"inverse", &Projection::inverse,
		"isOrthogonal", &Projection::is_orthogonal,
		"jitterOffseted", &Projection::jitter_offseted,
		"perspectiveZnearAdjusted", &Projection::perspective_znear_adjusted,
		"tostring", [](const Projection& proj) { return std::string((proj.operator String()).utf8().get_data()); }
	);
}
