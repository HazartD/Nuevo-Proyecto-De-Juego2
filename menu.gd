extends Control
func _ready():
	$tutorial.text= tr("menu","es")
func _process(_delta):
	if self.is_visible_in_tree():
		if "seminknuc" in Powahuptas.powahuptas:
			$jump.show()
		else: $jump.hide()
		if "machacavergas" in Powahuptas.powahuptas:
			$trap.show()
		else: $trap.hide()
		if "tegoelpoderabsolutoymelapelas" in Powahuptas.powahuptas:
			$enem.show()
		else: $enem.hide()
		if "aafceq'aibfue'unoab" in Powahuptas.powahuptas:
			$destructor.show()
		else: $destructor.hide()
	$TextEdit.text= "babosadas:"+ str(Powahuptas.babosadas) + "      Cruz:"+str(Powahuptas.CRUZ)+"      XXX:"+str(Powahuptas.XXX)


func _input(_event):
	if  Input.is_action_just_pressed("esc"):
		self.set_visible(!self.visible)
		get_tree().set_pause(!get_tree().paused)
