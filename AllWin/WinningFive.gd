extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Musiccontroller.win_music()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





func _on_Main_button_pressed():
	Musiccontroller.Just_stop()
# warning-ignore:return_value_discarded
	Loading.load_scene(self,"res://main menu.tscn")


func _on_Level_buttom_pressed():
	Musiccontroller.Just_stop()
# warning-ignore:return_value_discarded
	Loading.load_scene(self,"res://AllLevel/Maingame_ChapSix.tscn")
