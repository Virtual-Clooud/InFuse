extends Position2D

onready var pistol = $Sprite
onready var fist = $Sprite2
onready var tween = $Tween
var trans = Tween.TRANS_LINEAR
var mouse
var exponecial = 0
func _physics_process(delta):
#	if exponecial > 0: exponecial -= 0.05
#	rotation_degrees = mouse
	pass
func _input(event):
	
   # Mouse in viewport coordinates.
	if event is InputEventMouseMotion:
		exponecial += 0.01
		look_at(get_global_mouse_position())
#		tween.start()   
#		tween.interpolate_property(self, "rotation_degrees", 
#		rotation_degrees + exponecial, mouse, 0.4, trans, Tween.EASE_OUT_IN)
		
