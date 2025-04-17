extends Node2D





# Called when the node enters the scene tree for the first time.
func _ready():
	Musiccontroller.main_music()


func _process(_delta):
	var enemies = get_tree().get_nodes_in_group("enemies")
	if enemies.size() == 0:
# warning-ignore:return_value_discarded
		Loading.load_scene(self,"res://AllWin/WinningSeven.tscn")
