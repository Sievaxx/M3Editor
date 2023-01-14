shader_type canvas_item;

uniform sampler2D palette : filter_nearest;

void fragment() {
	float index = texture(TEXTURE, UV).r;
	COLOR = texture(palette, vec2(index));
}
