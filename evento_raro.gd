extends Sprite2D

@export var tiempo_min := 5.0
@export var tiempo_max := 20.0
@export var probabilidad := 0.1 # 10%
@export var duracion := 2.0
@export var x_min := 100.0
@export var x_max := 1100.0
@export var y_min := 50.0
@export var y_max := 600.0

func _ready():
	randomize()
	visible = false

	while true:
		await get_tree().create_timer(randf_range(tiempo_min, tiempo_max)).timeout

		if randf() <= probabilidad:
			position = Vector2(
				randf_range(x_min, x_max),
				randf_range(y_min, y_max)
			)

			visible = true
			await get_tree().create_timer(duracion).timeout
			visible = false
