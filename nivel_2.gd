extends Node2D
func _ready():
	if Powahuptas.lv2ya== "diversi" : $Mar.position=Vector2(430,104)
func _process(_delta):
	if $Mar:$Camera2D.position=$Mar.position
func _on_portal_body_entered(body):
	get_tree().change_scene_to_file("res://diversificacion.tscn")

func _on_portal_2_body_entered(body):
	$portal2/Label.text = tr("bactrakint",Powahuptas.Ideoma)
	await get_tree().create_timer(3).timeout
	$portal2/Label.text=""
