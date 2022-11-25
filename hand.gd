extends Weapon

# What to do when idle
func idle():
	pass
# Prepare to action/Fuse with element
func prepare():
	# Fuse weapon
	if Input.is_action_pressed("fuse") and can_fuse:
		if already_fused == false:
			print("HAND FUSE")
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
		#Default attack
		pass
	already_fused = false

func _physics_process(delta):
	match state:
		"idle":
			idle()
		"set":
			prepare()
		"active":
			active()
