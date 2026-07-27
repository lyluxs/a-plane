extends CharacterBody2D

const GRAVEDAD = 900.0
const FUERZA_SALTO = -320.0

func _physics_process(delta):
	velocity.y += GRAVEDAD * delta

	if Input.is_action_just_pressed("ui_accept") or Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		velocity.y = FUERZA_SALTO

	move_and_slide()

	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)

		if collision and collision.get_collider().is_in_group("pinchos"):
			game_over()

func game_over():
		get_parent().get_node("Game over").visible = true
		var score_ui= get_parent().get_node("CanvasLayer")
		get_parent().get_node("Game over/PuntajeFinal").text= "Puntaje final: " + str(score_ui.score)
		
		get_tree().paused = true
		
