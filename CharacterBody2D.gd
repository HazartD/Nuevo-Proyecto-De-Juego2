extends CharacterBody2D
const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const AyAybutnoyforme :PackedScene = preload("res://ayaybutnoyforme.tscn")
const trolo :PackedScene = preload("res://noseastrolo.tscn")
const pelemmela :PackedScene = preload("res://pelamela.tscn")
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var saltos=0
func _ready():
	Muerte.connect("aYaY",a_Y_a_Y)
func _physics_process(delta):
#	 Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	if is_on_floor():
		saltos=0
	# Handle Jump.
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		saltos=1
		$salto.play()
	if saltos<=1 and "seminknuc" in Powahuptas.powahuptas and Input.is_action_just_pressed("ui_up") and not is_on_floor():
		velocity.y = JUMP_VELOCITY
		saltos+=1
		$salto2.play()
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if "tegoelpoderabsolutoymelapelas" in Powahuptas.powahuptas and Input.is_action_just_pressed("clip") and !"aafceq'aibfue'unoab" in Powahuptas.powahuptas:
		$AyAybutnoyforme.play()
		var disparito = AyAybutnoyforme.instantiate()
		add_child(disparito)
		disparito.global_position = position
		disparito.velocity = get_local_mouse_position() *delta *100
	if "machacavergas" in Powahuptas.powahuptas and Input.is_action_just_pressed("evil_clip") and !"aafceq'aibfue'unoab" in Powahuptas.powahuptas:
		$AyAybutnoyforme.play()
		var bonba = trolo.instantiate()
		add_child(bonba)
		bonba.global_position = position
		bonba.velocity = get_local_mouse_position() *delta *100
	if "aafceq'aibfue'unoab" in Powahuptas.powahuptas and Input.is_action_just_pressed("evil_clip") or Input.is_action_just_pressed("clip"):
		$AyAybutnoyforme.play()
		var chupala = pelemmela.instantiate()
		add_child(chupala)
		chupala.global_position = position
		chupala.velocity = get_local_mouse_position() *delta *100
	move_and_slide()
func a_Y_a_Y():
	queue_free()
