extends Node2D

# 加载顶部内容
func _ready() -> void:
	# 加载章节数据
	$GameHead.get_node("ColorRect_zhangjie/Label_zhangjie").text = "第一章 第一节"
	pass # Replace with function body.
