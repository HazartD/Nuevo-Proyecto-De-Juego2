extends Node2D
func _on_salida_cruz_body_entered(_body):
	get_tree().change_scene_to_file("res://nivel_2.tscn")
func _on_salida_xxx_body_entered(_body):
	get_tree().change_scene_to_file("res://nivel_2.tscn")


func fuera():
	$Seminknuc.call_deferred("free")
	$Seminknuc2.call_deferred("free")
func ya():
	if !Powahuptas.powahuptas.has("seminknuc"):Powahuptas.powahuptas.append("seminknuc")
	fuera()


func _ready():
	if Powahuptas.powahuptas.has("seminknuc"):
		fuera()
func _on_seminknuc_body_entered(_body):
	ya()
func _on_seminknuc_2_body_entered(_body):
	ya()
