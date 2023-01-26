extends CanvasLayer


var life_collected = 50 #HZ
onready var life_label = $Life #HZ


# Called when the node enters the scene tree for the first time.
func _ready():#HZ(9-12)
	life_label.set_text(str(life_collected))
	var _player_path = get_node("/root/Game/Level/Player")
	_player_path.connect("collect_coin", self, "_collect_coin")
	
	
func _process(d): #HZ(15-16)
	life_label.set_text(str(life_collected))
	

func _collect_coin():#HZ(19-20)
	life_collected += 1
	
	

	
	
