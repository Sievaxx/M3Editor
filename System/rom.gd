extends Node

@export var Data:PackedByteArray = []

const HEADER:PackedByteArray = [77, 79, 84, 72, 69, 82, 51, 0, 0, 0, 0, 0, 65, 51, 85, 74, 48, 49, 150]

func load_rom(filepath:String):
	if !FileAccess.file_exists(filepath):
		push_error("File not found!")
		return
		
	Data = FileAccess.get_file_as_bytes(filepath)
	if Data.size() != 0x2000000:
		push_error("File size doesn't match")
		return
	
	#TODo: actually add header check that doesn't crash godot
	var header_test:PackedByteArray = Data.slice(0x00000A0, 0x00000B3)
	print(header_test.get_string_from_ascii())
	
	SettingsManager.settings.last_file_location = filepath
	SettingsManager.save_settings()
	pass

