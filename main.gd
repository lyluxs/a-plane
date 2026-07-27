extends Node2D

@onready var obstacles = $Obstacles
var obstacle_scene = preload("res://obstacle.tscn")

var gap_size := 180
var min_y := -120
var max_y := 120

func _on_timer_timeout():
	var obstacle = obstacle_scene.instantiate()

	var center_y = randf_range(min_y, max_y)

	obstacle.position = Vector2(900, 0)

	obstacles.add_child(obstacle) # Primero agregar al árbol

	obstacle.setup(center_y, gap_size) # Después configurar
