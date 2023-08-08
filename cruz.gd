extends Area2D

func _on_body_entered(_body):
	Powahuptas.CRUZ += 1
	$aqui.free()
	$Label.free()
	print(Powahuptas.CRUZ)
