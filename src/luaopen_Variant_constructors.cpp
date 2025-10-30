#include "Runtime.h"
#include "io/ByteArray.h"
#include "NativeObject.h"
#include "NativeReference.h"
#include "ScriptFunction.h"
#include "ScriptObject.h"

void Runtime::luaopen_Variant_constructors() {
    lua_state.new_usertype<Variant>("Variant",
        sol::constructors<
            Variant(),
            Variant(int),
            Variant(float),
            Variant(bool),
            //Variant(long),
            //Variant(double),
            Variant(String),
            Variant(Vector2),
            Variant(Vector2i),
            Variant(Rect2),
            Variant(Rect2i),
            Variant(Basis),
            Variant(Vector3),
            Variant(Vector3i),
            Variant(Transform2D),
            Variant(Transform3D),
            Variant(Vector4),
            Variant(Vector4i),
            Variant(Plane),
            Variant(Quaternion),
            Variant(AABB),
            Variant(Color),
            Variant(Projection),
            //Variant(Array),
            Variant(Dictionary),
            Variant(Callable),
            Variant(Signal)>()
    );
}
