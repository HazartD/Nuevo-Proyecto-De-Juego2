extends Node2D
#mas o menos por portal salen 3 recuerdos caduno, de ahi algunos poderes y ya
func _ready():
	if Powahuptas.lv2ya=="salta": $Mar.position= Vector2(545,400)
func _process(_delta):
	if $Mar: $Camera2D.position=$Mar.position
func _on_portal_3_body_entered(_body):
	get_tree().change_scene_to_file("res://saltar.tscn")
func _on_portal_9_body_entered(_body):
	Powahuptas.lv2ya="diversi"
	get_tree().change_scene_to_file("res://nivel_2.tscn")



