extends Area2D
@export var No:String
func _ready():
	$Label.text = tr("inutil")


func _on_body_entered(_body):
	if !Powahuptas.consegbab.has(No): Powahuptas.consegbab.append(No)
	Powahuptas.babosadas +=1
	queue_free()
