extends Object
class_name ScriptFunctionWrapper

var function: ScriptFunction = null

func call_func(...args) -> void:
	var array = []
	for arg in args:
		array.append(arg)
	function.call_func(array)

func to_callable() -> Callable:
	return Callable(self, "call_func")
