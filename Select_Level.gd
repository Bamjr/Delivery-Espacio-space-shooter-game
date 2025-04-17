extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Musiccontroller.stop_music()
	$backgroundplayer.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Tut_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://maingame/Maingame_Chap1.tscn")


func _on_Mercury_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://AllLevel/Maingame_ChapOne.tscn")


func _on_Venus_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://AllLevel/Maingame_ChapTwo.tscn")


func _on_Mars_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://AllLevel/Maingame_ChapThree.tscn")


func _on_Jupiter_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://AllLevel/Maingame_ChapFour.tscn")
	


func _on_Saturn_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://AllLevel/Maingame_ChapFive.tscn")


func _on_Uranus_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://AllLevel/Maingame_ChapSix.tscn")


func _on_neptune_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://AllLevel/Maingame_ChapSeven.tscn")


func _on_Mainmenu_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://main menu.tscn")
