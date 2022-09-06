extends KinematicBody2D

const GRAVITY = 1
const SPEED = 459

var velocity = Vector2.ZERO
	
func _physics_process(delta):
	
	velocity.x = 0
	if(Input.is_action_pressed("right")):
		velocity.x = SPEED
	elif(Input.is_action_pressed("left")):
		velocity.x = -SPEED

	velocity.y += GRAVITY
	
	if Input.is_action_just_pressed("jump"):
		velocity.y -= 100

	velocity = move_and_slide(velocity)
