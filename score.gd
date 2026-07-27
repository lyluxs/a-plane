extends CanvasLayer

var score := 0

@onready var score_label = $Label

func _ready():
	score_label.text = "Puntaje:0"

func sumar_punto():
	score += 1
	score_label.text = "Puntaje:" + str(score)
