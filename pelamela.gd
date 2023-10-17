extends CharacterBody2D

func _process(_delta):
	move_and_slide()

func _on_pelamela_body_entered(body):
	if body is StaticBody2D:
		queue_free()
	if body is CharacterBody2D:
		Powahuptas.mate(body.N,body)
		Powahuptas.matacionesasesinas+=1
		queue_free()

func _on_area_2d_area_exited(_area):
	$pelamela.monitoring = true
	$Area2D.call_deferred("free")
	$ColorRect.free()

func _on_pelamela_area_entered(area):
	Powahuptas.mate(area.N,area)
	Powahuptas.rompehogares+=1
	queue_free()
