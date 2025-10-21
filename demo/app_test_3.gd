extends App

# Called when the node enters the scene tree for the first time.
func _init() -> void:
	init(false, [])
	load_app("res://tests/test3/bin/Test3.nhv")

func _ready() -> void:
	var window := get_window()
	var displayScale := DisplayServer.screen_get_scale(window.current_screen)
	if (OS.get_name() != "Linux"):
		if OS.get_name() == "Windows":
			var dpi = DisplayServer.screen_get_dpi(window.current_screen)
			displayScale = dpi * 0.01
		window.content_scale_factor = displayScale
	window.size = Vector2i(1152, 648) * displayScale
	window.min_size = Vector2i(1152, 648) * displayScale
