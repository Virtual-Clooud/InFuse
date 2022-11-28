extends Weapon

onready var tween = $Tween
func default_punch():
	#SISTEMA DE ANIMAÇÃO PROCEDURAL TWEEN, GG
	var tween = create_tween()
	tween.tween_property($Sprite, "position", Vector2(100, 200), 1)
	tween.tween_property($Sprite, "position", Vector2(500, 200), 1)
	tween.tween_property($Sprite, "position", Vector2(0, 0), 1)

# What to do when idle
func idle():
	pass
# Prepare to action/Fuse with element
func prepare():
	# Fuse weapon
	if Input.is_action_pressed("fuse") and can_fuse:
		if already_fused == false:
			already_fused = true
		else:
			pass
#Attack/ What to do after attacking
func active():
	if already_fused:
		match current_element:
			0:
				pass
			1:
				pass
			2:
				pass
	else:
		default_punch()
		#Default attack
		
	already_fused = false
func guard():
	pass
func _physics_process(delta):
	match state:
		"idle":
			idle()
		"set":
			prepare()
		"active":
			active()
