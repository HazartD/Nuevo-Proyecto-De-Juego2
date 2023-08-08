extends Area2D


func _on_body_entered(_body):
	Powahuptas.XXX +=1
	$Aqui.free()
	$Label.free()
	print(Powahuptas.XXX)
