extends Parallax2D

@export var velocidad := -300.0

func _process(delta):
	scroll_offset.x += velocidad * delta
