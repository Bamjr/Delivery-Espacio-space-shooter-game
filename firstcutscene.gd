extends Node2D


# Declare member variables here. Examples:
# var a = 2

func _ready():
	Musiccontroller.play_music()
	var dialog = Dialogic.start("firstcut")
	add_child(dialog)
	 
func _process(_delta):
	if Input.is_action_just_pressed("ui_skip") == true:
# warning-ignore:return_value_discarded
		get_tree().change_scene('res://editgametut.tscn')
	
