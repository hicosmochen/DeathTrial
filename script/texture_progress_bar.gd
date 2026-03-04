extends TextureProgressBar
   
# 自定义着色器   
var shader_material = ShaderMaterial.new()   
var shader_code = """   
shader_type canvas_item;
   
uniform float progress : hint_range(0, 1) = 0.5;   
uniform vec4 fill_color : hint_color = vec4(0.0, 0.5, 1.0, 1.0);
   
void fragment() {
    vec4 tex_color = texture(TEXTURE, UV);
    float cutoff = 1.0 - progress;
    
    if (UV.x > cutoff) {
        COLOR = tex_color * fill_color;
    } else {
        COLOR = tex_color * vec4(0.3, 0.3, 0.3, 1.0);
    }   
}   
"""
   
func _ready():
	# 创建着色器
	var shader = Shader.new()
	shader.code = shader_code
	shader_material.shader = shader
	
	# 设置材质
	self.material = shader_material
	
	# 设置纹理
	self.texture_progress = preload("res://textures/progress.png")
	self.stretch_mode = STRETCH_SCALE
