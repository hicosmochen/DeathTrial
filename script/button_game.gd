extends Button

var icon_normal: Texture2D
@export var icon_press: Texture2D
@export var icon_text: String


# 初始化状态
func _ready() -> void:
	icon_normal = icon
	button_down.connect(on_button_down)
	button_up.connect(on_button_up)
	pass # Replace with function body.

func on_button_down() -> void:
	icon = icon_press
	print("当前按下的是: ", icon_text)
	pass
 
func on_button_up() -> void:
	icon = icon_normal
	pass
