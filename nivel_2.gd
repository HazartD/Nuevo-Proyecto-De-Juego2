extends Node2D
func _ready():
	Powahuptas.cambio=false
	if Powahuptas.lv2ya== "diversi" : $Mar.position=Vector2(430,104)
	if Powahuptas.consegbab.has("n2n"): $nofurula.free()
	if Powahuptas.consegbab.has("n2n2"): $nofurula2.free()
	if Powahuptas.consegbab.has("n2n3"): $nofurula3.free()
	if Powahuptas.consegbab.has("n2n4"): $nofurula4.free()
	if Powahuptas.consegbab.has("n2n5"): $nofurula5.free()
	if Powahuptas.consegbab.has("n2n6"): $nofurula6.free()
	if Powahuptas.consegbab.has("n2n7"): $nofurula7.free()
	if Powahuptas.ende.has("n2c"): $"Cosa censurada".free()
	if Powahuptas.ende.has("n2c2"): $"Cosa censurada2".free()
	if Powahuptas.ende.has("n2c3"): $"Cosa censurada3".free()
	if Powahuptas.ende.has("n2c4"): $"Cosa censurada4".free()
	if Powahuptas.ende.has("n2c5"): $"Cosa censurada5".free()
func _process(_delta):
	if $Mar:$Camera2D.position=$Mar.position
func _on_portal_body_entered(body):
	get_tree().change_scene_to_file("res://diversificacion.tscn")
	Powahuptas.cambio=true

func _on_portal_2_body_entered(_body):
	$portal2/Label.text = tr("bactrakint")


func _on_child_exiting_tree(node):
	if !Powahuptas.cambio:
		if node.name=="nofurula":Powahuptas.consegbab.append("n2n")
		if node.name=="nofurula2":Powahuptas.consegbab.append("n2n2")
		if node.name=="nofurula3":Powahuptas.consegbab.append("n2n3")
		if node.name=="nofurula4":Powahuptas.consegbab.append("n2n4")
		if node.name=="nofurula5":Powahuptas.consegbab.append("n2n5")
		if node.name=="nofurula6":Powahuptas.consegbab.append("n2n6")
		if node.name=="nofurula7":Powahuptas.consegbab.append("n2n7")
		if node.name=="Cosa censurada":Powahuptas.ende.append("n2c")
		if node.name=="Cosa censurada2":Powahuptas.ende.append("n2c2")
		if node.name=="Cosa censurada3":Powahuptas.ende.append("n2c3")
		if node.name=="Cosa censurada4":Powahuptas.ende.append("n2c4")
		if node.name=="Cosa censurada4":Powahuptas.ende.append("n2c5")
		
