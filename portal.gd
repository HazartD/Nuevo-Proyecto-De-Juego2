extends Area2D
@export var Lv:String
@export var Ruta:String
func _ready():
	$AnimationPlayer.play("giroo")


func _on_body_entered(_body):
	Powahuptas.cambio=true
	Powahuptas.lv2ya=Lv
	get_tree().change_scene_to_file(Ruta)
