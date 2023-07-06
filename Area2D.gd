extends Area2D
@onready var este = $Sueño
@onready var tambieste=$CollisionShape2D
func _ready():
	var twe= get_tree().create_tween().set_parallel(true).set_loops()
	twe.tween_property(este,"position:y",este.position.y-10, 0.5)
	twe.chain().tween_property(este,"position:y",este.position.y+10, 0.5)
	twe.play()
	var twe2= get_tree().create_tween().set_parallel(true).set_loops()
	twe2.tween_property(tambieste,"position:y",tambieste.position.y-10, 0.5)
	twe2.chain().tween_property(tambieste,"position:y",tambieste.position.y+10, 0.5)
	twe2.play()

func si_ya_ta():
	if "seminknuc" in Powahuptas.powahuptas:
		_exit_tree()


func _on_body_entered(body):
	Powahuptas.powahuptas.append("seminknuc")
	print("imagen" + str(este.position))
	print("colicion" + str(tambieste.position))
