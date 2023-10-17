extends Node2D
#Antes de saber como funcionan las variables exportadas esto era para conectar el cambio de nivel
func fuera():
	$Seminknuc.call_deferred("free")
	$Seminknuc2.call_deferred("free")
func ya():
	if !Powahuptas.powahuptas.has("seminknuc"):Powahuptas.powahuptas.append("seminknuc")
	fuera()


func _ready():
	Powahuptas.sacar(Powahuptas.powahuptas,"seminknuc",[$Seminknuc,$Seminknuc2])
func _on_seminknuc_body_entered(_body):
	ya()
func _on_seminknuc_2_body_entered(_body):
	ya()
