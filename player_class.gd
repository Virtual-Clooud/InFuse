extends KinematicBody2D
class_name Player

export var life = 10
var velocity = Vector2(0,0)
var grav
func died():
	pass
func move(speed, jump_force, gravity):
	velocity = Vector2(0,0)
	grav = gravity
	if Input.is_action_pressed("right"):
		velocity.x = -speed
	elif Input.is_action_pressed("left"):
		velocity.x = speed
	if Input.is_action_pressed("jump"):
		velocity.y = -jump_force * 100
		print("IMJUMPIN")
	print(is_on_floor())
	
func _physics_process(delta):
	if is_on_floor() == false:
		velocity.y += grav
	else:
		velocity.y = 0
	move_and_slide(velocity, Vector2.UP)
