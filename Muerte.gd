extends Node
signal aYaY
func Muerte():
	emit_signal("aYaY")
	await get_tree().create_timer(0.5).timeout
	get_tree().set_pause(true)
