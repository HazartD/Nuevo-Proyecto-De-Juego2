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
	
func _physics_process(_delta):
	if "seminknuc" in Powahuptas.powahuptas:
		self.free()

func _on_body_entered(_body):
	Powahuptas.powahuptas.append("seminknuc")
