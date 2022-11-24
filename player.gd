extends Player
#Inventário do jogador
export var cache = {#"NomeElemento" : "Nome", Qtd, Cor tema
	0 : ["Red", 0, Color(1, 0, 0)],
	1 : ["Blue", 0, Color(0, 1, 0,0)],
	2 : ["Green", 0, Color(0, 0, 1)] 
	}

var currentElement = 0
var total_elements = cache.size()

func _ready():
	total_elements = cache.size()
func red_fuse():
	#Functionality
	var s = $Sprite.get_material()
	#Visuals

func change_element():
	if currentElement < total_elements:
		currentElement += 1
	else:
		currentElement = 0
	print(currentElement)
func fuse(element):
	match element:
		0:#Red
			red_fuse()
		1:#Blue
			pass
		2:#Green
			pass
	print(cache.size())


func _physics_process(delta):
	if Input.is_action_just_pressed("fuse"):
		fuse(currentElement)
	if Input.is_action_just_pressed("change_element"):
		change_element()
