extends CharacterBody2D

func _process(_delta):
	move_and_slide()


func _on_notrolo_body_entered(body):
	if body is StaticBody2D:
		queue_free()

func _on_area_2d_area_exited(_area):
	$notrolo.monitoring = true
	$ColorRect.free()

func _on_notrolo_area_entered(area):
	Powahuptas.mate(area.N,area)
	Powahuptas.rompehogares+=1
	queue_free()
