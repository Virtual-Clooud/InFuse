extends Player

export var cache = {#"NomeElemento" : "Nome", Qtd, Cor tema
0 : ["Red", 0, Color(1, 0, 0)],
1 : ["Blue", 0, Color(0, 1, 0,0)],
2 : ["Green", 0, Color(0, 0, 1)] 
}

var currentElement = 0
var total_elements : int = cache.size()
func _ready():
	total_elements = cache.size()
func red_fuse():
	var s = $Sprite.get_material()
	s.set_shader_param("outline_color_2", cache[currentElement][2])
	s.set_shader_param("outline_color", cache[currentElement][2])

func change_element():
	if currentElement < total_elements:
		currentElement += 1
	else:
		currentElement = 0
	print(currentElement)
func fuse(element):
	match element:
		0:
			red_fuse()
		1:
			pass
		2:
			pass
	print(cache.size())


func _physics_process(delta):
	if Input.is_action_just_pressed("fuse"):
		fuse(currentElement)
	if Input.is_action_just_pressed("change_element"):
		change_element()
