extends App

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	init(false, [])
	load_app("res://tests/test2/bin/Test2.snb")
