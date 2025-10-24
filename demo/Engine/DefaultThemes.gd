extends RefCounted

func get_system_theme() -> Theme:
	if DisplayServer.is_dark_mode():
		return get_dark_theme()
	else:
		return get_light_theme()

func get_light_theme() -> Theme :
	return load("res://addons/lite/light.tres")

func get_dark_theme() -> Theme:
	return load("res://addons/lite/dark.tres")
