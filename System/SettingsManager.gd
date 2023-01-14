extends Node

@export var settings:Dictionary
const PATH:String = "user://settings.json"
# Called when the node enters the scene tree for the first time.
func _ready():
	if FileAccess.file_exists(PATH):
		settings = JSON.parse_string(FileAccess.get_file_as_string(PATH))
	pass # Replace with function body.

func save_settings():
	var json = JSON.stringify(settings)
	FileAccess.open(PATH, FileAccess.WRITE).store_string(json)
	pass

func _notification(what):
	# auto save on close maybe
	pass
