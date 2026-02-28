extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# 鼠标进入的模式需要调整, 才能让外部接收到信号。
	# Label 节点默认的 鼠标检测模式 是 MOUSE_FILTER_IGNORE，这意味着它不会接收任何鼠标事件，
	# 包括 mouse_entered 信号。必须将其设置为 MOUSE_FILTER_STOP 或 MOUSE_FILTER_PASS 才能接收鼠标信号。
	mouse_filter = Control.MOUSE_FILTER_PASS
	pass # Replace with function body.
