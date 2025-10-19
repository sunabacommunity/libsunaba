extends Runtime
class_name App

var io_interface: IoManager = IoManager.new()

func init(sandboxed: bool = false, classnames: PackedStringArray = []) -> void:
	init_state(sandboxed, classnames)
	
	if not sandboxed:
		if OS.get_name() == "Windows":
			var windowsSysIO = WindowsSystemIo.new()
			io_interface.Register(windowsSysIO)
		elif OS.get_name() != "Web":
			var unixSysIo = UnixSystemIo.new()
			io_interface.Register(unixSysIo)
	
	bind_object("__ioManager", io_interface)
