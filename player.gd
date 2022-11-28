extends Player

export var cache = {#"NomeElemento" : "Nome", Qtd, Cor tema
0 : ["Red", 0, Color(1, 0, 0)],
1 : ["Blue", 0, Color(0, 1, 0)],
2 : ["Green", 0, Color(0, 0, 1)], 
}
export var qtdmin = 1
export var speed = 250
export var jump_force = 100
var can_fuse = false
var currentElement = 0
var total_elements : int = cache.size()
func _ready():
	total_elements = cache.size()
func red_fuse():
	pass
func valid_fuse():
	if currentElement >= qtdmin:
		can_fuse = true
	else:
		can_fuse =false
func change_element():
	if currentElement < total_elements:
		currentElement += 1
	else:
		currentElement = 0
func fuse(element):
	if element > qtdmin:
		match element:
			0:
				red_fuse()
			1:
				pass
			2:
				pass

func _physics_process(delta):
	valid_fuse()
	move(speed, jump_force)
	if Input.is_action_pressed("primaria") == false and Input.is_action_pressed("secundaria") == false and Input.is_action_pressed("terciaria") == false:
		if Input.is_action_just_pressed("fuse"):
			fuse(currentElement)
	if Input.is_action_just_pressed("change_element"):
		change_element()
	
