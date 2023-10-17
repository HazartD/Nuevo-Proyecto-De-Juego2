extends Node2D
#mas o menos por portal salen 3 recuerdos caduno, de ahi algunos poderes y ya
func _ready():
	if Powahuptas.lv2ya=="salta": $Mar.position= Vector2(545,400)
	Powahuptas.cambio=false
func _process(_delta):
	if $Mar: $Camera2D.position=$Mar.position




