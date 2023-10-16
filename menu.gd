extends Control
const textos:PackedScene = preload("res://donse_se_veran_esas_texto.tscn")
func _ready():
	$tutorial.text = tr("menu")
	$jump.text = tr("jump")
	$trap.text = tr("trap")
	$enem.text = tr("enem")
	$destructor.text = tr("destructor")
	$Button.text=tr("recuerdos")


func _input(_event):
	if  Input.is_action_just_pressed("esc"):
		self.set_visible(!self.visible)
		get_tree().set_pause(!get_tree().paused)
		if self.visible :
			if "seminknuc" in Powahuptas.powahuptas:$jump.show()
			else: $jump.hide()
			if "machacavergas" in Powahuptas.powahuptas:$trap.show()
			else: $trap.hide()
			if "tegoelpoderabsolutoymelapelas" in Powahuptas.powahuptas:$enem.show()
			else: $enem.hide()
			if "aafceq'aibfue'unoab" in Powahuptas.powahuptas:$destructor.show()
			else: $destructor.hide()
			$TextEdit.text= "babosadas:"+ str(Powahuptas.babosadas) + "Cruz:"+str(Powahuptas.CRUZ)+"XXX:"+str(Powahuptas.XXX)

func _on_button_button_down():
	self.add_child(textos.instantiate())

