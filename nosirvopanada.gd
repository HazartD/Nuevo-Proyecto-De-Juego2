extends Area2D

func _ready():
	$Label.text = tr("inutil",Powahuptas.Ideoma)


func _on_body_entered(_body):
	Powahuptas.babosadas +=1
	queue_free()
