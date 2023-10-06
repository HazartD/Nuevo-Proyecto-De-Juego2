extends TextEdit

func _ready():
	self.text = tr("texto",Powahuptas.Ideoma)
	await get_tree().create_timer(2).timeout
	queue_free()
