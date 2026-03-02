extends Node

# 标题的Label
@export var title:Label
# 描述的Label
@export var descript:Label

# 定义信号
signal confirm_clicked   # 对外暴露的信号, 确定点击
signal cancel_clicked    # 对外暴露的信号, 取消点击


# 外部的按钮
@onready var btn_confirm: Button = $Button_confirm
@onready var btn_cancel: Button = $Button_cancel

func _ready():
	btn_confirm.pressed.connect(_on_button_confirm_passed)
	btn_cancel.pressed.connect(_on_button_cancel_passed)
	pass


# 更新标题信息
func _update_title(text_title: String):
	title.text = text_title
	pass

# 更新描述信息
func _update_descript(text_descript: String):
	descript.text = text_descript
	pass

# 按钮按下的状态
func _on_button_confirm_passed():
	emit_signal("confirm_clicked")
	pass

# 按钮按下的状态
func _on_button_cancel_passed():
	emit_signal("cancel_clicked")
	pass
