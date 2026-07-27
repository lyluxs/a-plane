extends ParallaxBackground

@export var velocidad := 50.0

func _process(delta):
	scroll_offset.x += velocidad * delta
