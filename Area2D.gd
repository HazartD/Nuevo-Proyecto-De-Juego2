extends Area2D
func si_ya_ta():
	if "seminknuc" in Powahuptas.powahuptas:
		owner._exit_tree()


func _on_body_entered(body):
	Powahuptas.powahuptas.append("seminknuc")
