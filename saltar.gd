extends Node2D
@onready var enem=[$enemflota2,$enemflota3,$enemflota4,$enemflota5,$enemflota6,$enemflota7,$enemflota8,$enemflota9,$enemflota10,$enemflota11,$enemflota12,$enemflota13,$enemflota14,$enemflota15,$enemflota16,$enemflota17,$enemflota18,$enemflota19,$enemflota20]
var aqui:int
func vete():
	if "N1" and "N2" in Powahuptas.N:
		$portal2.show()
		$portal2.monitoring=true
func _ready():
	$enemflota.player=$Mar
	Powahuptas.sacar(Powahuptas.compl,"saltos",[enem,$StaticBody2D2/CollisionShape2D11,$StaticBody2D2/Optimismo11,$Area2D2,$Area2D])
#		$enemflota.free()
	$Seminknuc2/Label.text=tr("tip1")
	if Powahuptas.lv2ya =="vengosatando":
		$Mar.position=Vector2(96,915)
		$StaticBody2D2/Optimismo11.scale.x=0.001
	Powahuptas.sacar(Powahuptas.N,"N1",[$Seminknuc2])
	Powahuptas.sacar(Powahuptas.N,"N2",[$Seminknuc])
	Powahuptas.sacar(Powahuptas.ende,"src",[$"Cosa censurada"])
	Powahuptas.sacar(Powahuptas.ende,"src2",[$"Cosa censurada2"])
	Powahuptas.sacar(Powahuptas.ende,"src3",[$"Cosa censurada3"])
	Powahuptas.sacar(Powahuptas.ende,"src4",[$"Cosa censurada4"])
	Powahuptas.sacar(Powahuptas.ende,"src5",[$"Cosa censurada5"])
	Powahuptas.sacar(Powahuptas.ende,"srf",[$enemflota])
	Powahuptas.sacar(Powahuptas.consegbab,"srn",[$nofurula])
	Powahuptas.sacar(Powahuptas.consegbab,"srn",[$nofurula])
	Powahuptas.sacar(Powahuptas.puzlechos,"sal",[$Area2D])
	
	vete()
	Powahuptas.cambio=false


func _on_child_exiting_tree(node):
	if !Powahuptas.cambio:
		if node is CharacterBody2D: aqui+=1

	
func _process(_delta):
	if $Mar: $Camera2D.position=$Mar.position
	if !Powahuptas.compl.has("saltos"):
		if aqui==20:
			$StaticBody2D2/CollisionShape2D11.free()
			$StaticBody2D2/Optimismo11.free()
			Powahuptas.compl.append("saltos")


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
