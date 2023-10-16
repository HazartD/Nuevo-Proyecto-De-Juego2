extends Node2D
@onready var enem=[$enemflota2,$enemflota3,$enemflota4,$enemflota5,$enemflota6,$enemflota7,$enemflota8,$enemflota9,$enemflota10,$enemflota11,$enemflota12,$enemflota13,$enemflota14,$enemflota15,$enemflota16,$enemflota17,$enemflota18,$enemflota19,$enemflota20]
var aqui:int
func vete():
	if "N1" and "N2" in Powahuptas.N:
		$portal2.show()
		$portal2.monitoring=true
func _ready():
	Powahuptas.cambio=false
	$enemflota.player=$Mar
	if Powahuptas.compl.has("saltos"):
		for e in enem: e.free()
		$StaticBody2D2/CollisionShape2D11.free()
		$StaticBody2D2/Optimismo11.free()
		$enemflota.free()
		$Area2D.free()
		$Area2D2.free()
	$Seminknuc2/Label.text=tr("tip1")
	if Powahuptas.lv2ya =="vengosatando":
		$Mar.position=Vector2(96,915)
		$StaticBody2D2/Optimismo11.scale.x=0.001
	if Powahuptas.N.has("N1"): $Seminknuc2.free()
	if Powahuptas.N.has("N2"): $Seminknuc.free()
	if Powahuptas.ende.has("src"):$"Cosa censurada".free()
	if Powahuptas.ende.has("src2"):$"Cosa censurada2".free()
	if Powahuptas.ende.has("src3"):$"Cosa censurada3".free()
	if Powahuptas.ende.has("src4"):$"Cosa censurada4".free()
	if Powahuptas.ende.has("src5"):$"Cosa censurada5".free()
	if Powahuptas.consegbab.has("srn2"):$nofurula2.free()
	if Powahuptas.consegbab.has("srn"):$nofurula.free()
	if Powahuptas.puzlechos.has("sal"):$Area2D.free()
	
	vete()


func _on_child_exiting_tree(node):
	if node is CharacterBody2D: aqui+=1
	if !Powahuptas.cambio:
		if node.name == "Cosa censurada": Powahuptas.ende.append("src")
		if node.name == "Cosa censurada2": Powahuptas.ende.append("src2")
		if node.name == "Cosa censurada3": Powahuptas.ende.append("src3")
		if node.name == "Cosa censurada4": Powahuptas.ende.append("src4")
		if node.name == "Cosa censurada5": Powahuptas.ende.append("src5")
		if node.name == "nofurula":Powahuptas.consegbab.append("srn")
		if node.name == "nofurula2":Powahuptas.consegbab.append("srn2")
	
func _process(_delta):
	if $Mar: $Camera2D.position=$Mar.position
	if !Powahuptas.compl.has("saltos"):
		if aqui==20:
			$StaticBody2D2/CollisionShape2D11.free()
			$StaticBody2D2/Optimismo11.free()
			Powahuptas.compl.append("saltos")


func _on_portal_body_entered(_body):
	Powahuptas.lv2ya="salta"
	Powahuptas.cambio=true
	get_tree().change_scene_to_file("res://diversificacion.tscn")
func _on_portal_2_body_entered(_body):
	Powahuptas.cambio=true
	get_tree().change_scene_to_file("res://saltos.tscn")


func _on_seminknuc_body_entered(_body):
	Powahuptas.N.append("N2")
	vete()
func _on_seminknuc_2_body_entered(_body):
	Powahuptas.N.append("N1")
	vete()


func _on_area_2d_body_entered(_body):
	$nofurula2.monitoring=true
	$nofurula2.visible=true
	$StaticBody2D2/Optimismo11.scale.x=0.001
	Powahuptas.puzlechos.append("sal")
	$Area2D.call_deferred("free")


func _on_area_2d_2_body_entered(body):
	if !Powahuptas.compl.has("saltos"):
		for e in enem:e.player=body
		enem.clear()