extends Area2D
@onready var ara = $ara
@onready var giro = $giro
# Called when the node enters the scene tree for the first time.
func _ready():
	giro.play("Girodañaino")

func _on_body_entered(body):
	ara.play()
