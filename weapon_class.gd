extends Node2D
class_name Weapon

# Control Setup
export var tipo : String = "primaria"
# Weapon State
var state = "idle"
# Get variables from player
var player
var inventory
var current_element
var can_fuse
# Fail safe fuse
var already_fused = false
func _ready():
	player = get_tree().get_root().find_node("player", true, false)

func _physics_process(delta):
	match tipo:
		"primaria":
			if Input.is_action_pressed("primaria"):
				state = "set"
			elif Input.is_action_just_released("primaria"):
				state = "active"
			else:
				state = "idle"
		"secundaria":
			if Input.is_action_pressed("secundaria"):
				state = "set"
			elif Input.is_action_just_released("secundaria"):
				state = "active"
			else:
				state = "idle"
		"terciaria":
			if Input.is_action_pressed("terciaria"):
				state = "set"
			elif Input.is_action_just_released("terciaria"):
				state = "active"
			else:
				state = "idle"
	# Update variables from player
	if state == "set":
		inventory = player.get("cache")
		current_element = player.get("currentElement")
		can_fuse = player.get("can_fuse")
