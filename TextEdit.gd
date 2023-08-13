extends TextEdit

func _ready():
	self.text = tr("texto","es")
	await get_tree().create_timer(2).timeout
	queue_free()
