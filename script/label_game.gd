extends Label

func _ready() -> void:
	# 鼠标进入的模式需要调整, 才能让外部接收到信号。
	# Label 节点默认的 鼠标检测模式 是 MOUSE_FILTER_IGNORE，这意味着它不会接收任何鼠标事件，
	# 包括 mouse_entered 信号。必须将其设置为 MOUSE_FILTER_STOP 或 MOUSE_FILTER_PASS 才能接收鼠标信号。
	mouse_filter = Control.MOUSE_FILTER_STOP
	mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	pass # Replace with function body.
	
# 处理点击事件
func _gui_input(event: InputEvent) -> void:
	# 检测是否是点击效果
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			modulate = Color(1.0, 0.688, 0.873, 1.0)
			hand_click()
		else:
			modulate = Color(0.0, 0.706, 0.0, 1.0)
	pass

# 点击之后, 分发点击的逻辑
func hand_click():
	if self.text == "开始游戏":
		game_start()
	elif self.text == "加载存档":
		game_load()
	else:
		game_exit()
	pass
	
# 开始游戏
func game_start():
	print("开始游戏被点击")
	pass
	
# 加载存档
func game_load():
	print("加载存档被点击")
	pass
	
# 退出游戏
func game_exit():
	print("退出游戏被点击")
	pass
