extends Node

class_name LZ77

# TODO: write LZ77 compression class

static func decompress(data:PackedByteArray):
	if data.size() <= 0:
		push_error("Error: Data size is 0!")
		return null;
	var output:PackedByteArray
	
	return output


static func compress(data:PackedByteArray):
	if data.size() <= 0:
		push_error("Error: Data size is 0!")
		return null;
	var output:PackedByteArray
	
	return output
	
