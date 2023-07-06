extends CharacterBody2D
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var saltos=0
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
	if saltos<=1 and "seminknuc" in Powahuptas.powahuptas: #por el knucles de booom
		if Input.is_action_just_pressed("ui_up") and not is_on_floor():
			velocity.y = JUMP_VELOCITY
			saltos+=1

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()