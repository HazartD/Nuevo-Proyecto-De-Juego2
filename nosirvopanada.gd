extends Area2D

func _ready():
	$Label.text = tr("inutil")


func _on_body_entered(_body):
	Powahuptas.babosadas +=1
	queue_free()
