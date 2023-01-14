extends Node
class_name Palette


class PaletteEntry extends Resource:
	@export var idx:int = 0
	@export var gba_color:int = 0x7FFF: # 248, 248, 248
		set(value):
			gba_color = value & 0x7FFF;
			preview_color = Palette.color_from_555(value)
	var preview_color:Color = Palette.color_from_555(gba_color)

static func color_from_555(data:int) -> Color:
	# please don't ask, these are *magic* numbers
	# lots of hours wasted :D
	return Color8(
		data << 3 & 0b0000000000011111000,
		((data >> 5) << 3) & 0b00000011111000,
		((data >> 10) << 3) & 0b011111000)

static func image_from_palette(palette:PackedColorArray) -> Image:
	var img:Image
	var data = palette.to_byte_array()
	var size = palette.size()
	img = Image.create_from_data(size, 1, false, Image.FORMAT_RGBAF, data)
	return img

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
