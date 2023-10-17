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

func _on_portal_2_body_entered(_body):
	$portal2/Label.text = tr("bactrakint")

		
