extends KinematicBody2D
class_name Player

export var class_life = 5
var velocity = Vector2(0,0)

func move(speed, jump_force):
	if Input.is_action_pressed("left"):
		velocity.x = -speed
	elif Input.is_action_pressed("right"):
		velocity.x = speed
	else:
		velocity.x = 0
	if Input.is_action_just_pressed("jump"):
		velocity.y = -jump_force
	if is_on_floor() == false:
		velocity.y += 5
func die():
	get_tree().get_root().queue_free()
func _physics_process(delta):
	move_and_slide(velocity, Vector2.UP)
	if class_life == 0:
		die()
		
