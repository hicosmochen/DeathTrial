extends Sprite2D

@export var musicPlayer:AudioStreamPlayer2D
# 游戏开始
@export var labelGameStart:Label
# 游戏加载
@export var labelGameLoad:Label
# 游戏退出
@export var labelGameExit:Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	musicPlayer.play_sound_from_path("assets/music/mountain-suspense.mp3")
	pass # Replace with function body.


# 鼠标移入到游戏开始的场景时
func _on_label_game_start_mouse_entered() -> void:
	labelGameStart.modulate = Color(0.0, 0.706, 0.0, 1.0)
	pass # Replace with function body.

# 鼠标移出到游戏开始的场景时
func _on_label_game_start_mouse_exited() -> void:
	labelGameStart.modulate = Color(18.892, 18.892, 18.892, 1.0)
	pass # Replace with function body.

# 鼠标移入到游戏加载的场景时
func _on_label_game_load_mouse_entered() -> void:
	labelGameLoad.modulate = Color(0.0, 0.706, 0.0, 1.0)
	pass # Replace with function body.

# 鼠标移出到游戏加载的场景时
func _on_label_game_load_mouse_exited() -> void:
	labelGameLoad.modulate = Color(18.892, 18.892, 18.892, 1.0)
	pass # Replace with function body.

# 鼠标移入到游戏退出的场景时
func _on_label_game_exit_mouse_entered() -> void:
	labelGameExit.modulate = Color(0.0, 0.706, 0.0, 1.0)
	pass # Replace with function body.

# 鼠标移出到游戏退出的场景时
func _on_label_game_exit_mouse_exited() -> void:
	labelGameExit.modulate = Color(18.892, 18.892, 18.892, 1.0)
	pass # Replace with function body.
