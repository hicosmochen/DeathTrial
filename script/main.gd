extends Sprite2D

@export var musicPlayer:AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	musicPlayer.play_sound_from_path("assets/music/mountain-suspense.mp3")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
