extends Area2D
@export var Cam:bool
@export var Ruta:String
func _on_body_entered(_body):
	Powahuptas.CRUZ += 1
	if Cam:get_tree().change_scene_to_file(Ruta)
	queue_free()
