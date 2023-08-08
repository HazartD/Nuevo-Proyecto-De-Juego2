extends CharacterBody2D

func _process(delta):
	move_and_slide()

func _on_area_2d_area_exited(area):
	$AyAybutnoyformearea.monitoring = true
	$ColorRect.free()

func _on_area_2d_body_entered(body):
	if body is StaticBody2D:
		queue_free()


func _on_ay_aybutnoyformearea_body_entered(body):
	if body is StaticBody2D:
		queue_free()
	if body is CharacterBody2D:
		body.free()
		Powahuptas.matacionesasesinas+=1
		queue_free()
