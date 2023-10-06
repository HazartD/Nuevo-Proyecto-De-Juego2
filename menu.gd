extends Control
const textos:PackedScene = preload("res://donse_se_veran_esas_texto.tscn")
func _ready():
	$tutorial.text = tr("menu",Powahuptas.Ideoma)
	$jump.text = tr("jump",Powahuptas.Ideoma)
	$trap.text = tr("trap",Powahuptas.Ideoma)
	$enem.text = tr("enem",Powahuptas.Ideoma)
	$destructor.text = tr("destructor",Powahuptas.Ideoma)
	$Button.text=tr("recuerdos",Powahuptas.Ideoma)


func _input(_event):
	if  Input.is_action_just_pressed("esc"):
		self.set_visible(!self.visible)
		get_tree().set_pause(!get_tree().paused)
		if self.visible :
#			if "seminknuc" in Powahuptas.powahuptas:$"Sueño/jump".show()
#			else: $"Sueño/jump".hide()
			if "machacavergas" in Powahuptas.powahuptas:$trap.show()
			else: $DaleManPodesSerPut0PeroNoSeasTrol0/trap.hide()
			if "tegoelpoderabsolutoymelapelas" in Powahuptas.powahuptas:$enem.show()
			else: $enem.hide()
			if "aafceq'aibfue'unoab" in Powahuptas.powahuptas:$destructor.show()
			else: $destructor.hide()
			$TextEdit.text= "babosadas:"+ str(Powahuptas.babosadas) + "Cruz:"+str(Powahuptas.CRUZ)+"XXX:"+str(Powahuptas.XXX)



func _on_button_button_down():
	self.add_child(textos.instantiate())

