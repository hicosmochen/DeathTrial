extends TextureProgressBar


@export var Name_Label: Label
@export var Name_start: String

func _ready() -> void:
	set_progress(20)
	pass

# 设置当前的进度值(绝对量) 
func set_progress(progress:int) -> void:
	self.value = progress
	var display_text = "%.2f%%" % progress
	Name_Label.text = Name_start + " " + display_text
	pass
