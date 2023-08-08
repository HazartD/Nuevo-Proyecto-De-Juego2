extends CharacterBody2D
var player: CollisionObject2D=null
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
const SPEED = 100.0
const JUMP_VELOCITY = -400.0
var aondeva
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
#	 Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	if player != null:
		aondeva = (player.position-position).normalized()
		if aondeva.x < position.x:
			scale.x=-1
		if $frente.is_colliding():
			velocity.y = JUMP_VELOCITY
		if player.position.y< position.y and !$suelo.is_colliding() and is_on_floor():
			velocity.y = JUMP_VELOCITY
		velocity.x = aondeva.x *SPEED

	else: velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
func _on_area_2d_body_entered(body):
	Muerte.Muerte()
func _on_area_2d_2_body_entered(body):
	player=body








