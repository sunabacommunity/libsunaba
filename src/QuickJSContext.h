#pragma once

#include "JavaScriptContext.h"
#include <quickjs.h>
#include "QuickJSRuntime.h"

using namespace godot;

class QuickJSContext : public JavaScriptContext {
	GDCLASS(QuickJSContext, JavaScriptContext)

protected:
	static void _bind_methods();

	JSContext *ctx;

public:
	QuickJSContext();
	~QuickJSContext();

	virtual void eval(const String &code) override;
};
