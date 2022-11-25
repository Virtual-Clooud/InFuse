extends RigidBody2D


var player
var size
var element
var cache
var qtd = 0 # How much is collected
var chase_player = false
signal collect(element, qtd)

func _physics_process(delta):
	if chase_player:
		linear_velocity = Vector2(100,100).rotated(get_angle_to(
			player.position))
func _ready():
	randomize()
	player = get_tree().get_root().find_node("player", true, false)
	cache = player.get("cache")
	size = cache.size()
	element = round(rand_range(+0, size - 1))
	
	var color = cache[int(element)][2]
	qtd = rand_range(1, player.get("qtdmin") - 1)
	print(round(qtd))

func _on_detect_area_entered(area):
	if area.is_in_group("player"):
		chase_player = true


func _on_collect_area_entered(area):
	if area.is_in_group("player"):
		cache[int(element)][1] += qtd
		queue_free()
	
