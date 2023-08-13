extends Area2D
@onready var ara = $ara
@onready var giro = $giro
func _ready():
	giro.play("Girodañaino")

func _on_body_entered(_body):
	ara.play()
	Muerte.Muerte()
