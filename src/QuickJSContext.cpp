#include "QuickJSContext.h"

void QuickJSContext::_bind_methods() {
	// Binding methods can be added here if needed
}

QuickJSContext::QuickJSContext() {
	ctx = JS_NewContext(QuickJSRuntime::singleton->rt);
	if (!ctx) {
		ERR_PRINT("Failed to create QuickJS context");
	}
	JS_AddIntrinsicBaseObjects(ctx);
	JS_AddIntrinsicDate(ctx);
	JS_AddIntrinsicBigInt(ctx);
	JS_AddIntrinsicEval(ctx);
	JS_AddIntrinsicJSON(ctx);
	JS_AddIntrinsicMapSet(ctx);
	JS_AddIntrinsicPromise(ctx);
	JS_AddIntrinsicProxy(ctx);
	JS_AddIntrinsicRegExp(ctx);
	JS_AddIntrinsicRegExpCompiler(ctx);
	JS_AddIntrinsicTypedArrays(ctx);
}

QuickJSContext::~QuickJSContext() {
	if (ctx) {
		JS_FreeContext(ctx);
	}
}

void QuickJSContext::eval(const String &code) {
	if (!ctx) {
		ERR_PRINT("QuickJS context is not initialized");
		return;
	}

	// Convert Godot String to C string
	CharString utf8_code = code.utf8();
	const char* c_code = utf8_code.get_data();

	// Evaluate the JavaScript code
	JSValue result = JS_Eval(ctx, c_code, strlen(c_code), "<eval>", JS_EVAL_TYPE_GLOBAL);

	// Check for errors
	if (JS_IsException(result)) {
		JSValue exception = JS_GetException(ctx);
		const char* error_str = JS_ToCString(ctx, exception);
		if (error_str) {
			ERR_PRINT("JavaScript error: " + String(error_str));
			JS_FreeCString(ctx, error_str);
		}
		JS_FreeValue(ctx, exception);
	}

	// Free the result
	JS_FreeValue(ctx, result);
}
