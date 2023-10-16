extends CharacterBody2D
const SPEED = 200
var player:CharacterBody2D
@onready var noera=[$Flota1,$Flota2,$Flota3,$Flota4,$Flota5]#porque iba a ser aondeva pero me di cuenta que estaba en el script del otro enemigo pensando que aun no lo habia borrado de aqui pero si
func _ready():
	noera.pop_at(randi_range(0,4))
	for f in noera:
		f.free()
	noera.clear()
func _physics_process(_delta):
	if player != null:
		velocity = (player.position-position).normalized() *SPEED
	move_and_slide()


func _on_area_2d_body_entered(_body):
	Muerte.Muerte()
