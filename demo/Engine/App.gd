extends Runtime
class_name App

var io_manager: IoManager = IoManager.new()

func init(sandboxed: bool = false, classnames: PackedStringArray = []) -> void:
	init_state(sandboxed, classnames)
	
	if not sandboxed:
		if OS.get_name() == "Windows":
			var windowsSysIO = WindowsSystemIo.new()
			io_manager.Register(windowsSysIO)
		elif OS.get_name() != "Web":
			var unixSysIo = UnixSystemIo.new()
			io_manager.Register(unixSysIo)
	
	bind_object("__ioManager", io_manager)

func load_app(path: String) -> void:
	if (path.is_empty()): return
	
	if (!FileAccess.file_exists(path)): return
	
	var zipIo = IoInterfaceZip.new()
	var zipFile = FileAccess.open(path, FileAccess.READ)
	var zip_bytes = zipFile.get_buffer(zipFile.get_length())
	zipIo.LoadFromBytes(zip_bytes, "temp://")
	io_manager.Register(zipIo)
	
	var header_json : String = io_manager.LoadText("temp://header.json")
	if (header_json.is_empty()):
		_errord("header.json not found in the nhv file", "Inavlid header file")
		return
	
	var header: Dictionary = JSON.parse_string(header_json)
	
	var appName: String = header.get("name", "Sunaba")
	
	var app_base_user_dir_path = ProjectSettings.globalize_path("user://appdata/")
	if not DirAccess.dir_exists_absolute(app_base_user_dir_path):
		DirAccess.make_dir_absolute(app_base_user_dir_path)
	var app_user_dir_path = app_base_user_dir_path + appName + "/"
	if not DirAccess.dir_exists_absolute(app_user_dir_path):
		DirAccess.make_dir_absolute(app_user_dir_path)
	
	var user_io = FileSystemIo.new()
	user_io.Open(app_user_dir_path, "user://")
	io_manager.Register(user_io)
	
	var type: String = header.get("type", "executable")
	
	if type != "executable":
		_errord("type must be executable", "Error")
		return
	
	var luabin_name = header.get("luabin", "main.lua")
	zipIo.SetPathUrl(header["rootUrl"])
	
	var luabin_path = zipIo.GetPathUrl() + luabin_name
	
	do_string(io_manager.LoadText(luabin_path))

func _require(path: String) -> String:
	return io_manager.LoadText(path)

func _errord(msg: String, title: String) -> void:
	OS.alert(msg, title)
	printerr(msg)

func _warnd(msg: String, title: String) -> void:
	OS.alert(msg, title)

func _infod(msg: String, title: String) -> void:
	OS.alert(msg, title)
