extends Node2D

@export var speed := 250.0

@onready var top = $Top
@onready var bottom = $Bottom

func setup(center_y, gap_size):
	top.position.y = center_y - gap_size / 2
	bottom.position.y = center_y + gap_size / 2

func _process(delta):
	position.x -= speed * delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print("=1 punto")
		var ui= get_tree().current_scene.get_node("CanvasLayer")
		print(ui)
		ui.sumar_punto()
