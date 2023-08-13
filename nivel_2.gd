extends Node2D

func _process(_delta):
	if $Mar:
		$Camera2D.position=$Mar.position


func _on_portal_body_entered(body):
	get_tree().change_scene_to_file("res://diversificacion.tscn")
