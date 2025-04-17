extends Control


func _ready():
	$background_music.play()
	

func _on_start_pressed()->void:
	$click.play()
	yield($click,"finished")
	$background_music.stop()
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://intro.tscn")


func _on_start_mouse_entered():
	$hover.play()


func _on_quit_pressed():
	$click.play()
	yield($click,"finished")
	$background_music.stop()
# warning-ignore:return_value_discarded
	get_tree().quit()



func _on_quit_mouse_entered():
	$hover.play()


func _on_select_chapter_pressed():
	$click.play()
	yield($click,"finished")
	$background_music.stop()
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Select_Level.tscn")


func _on_select_chapter_mouse_entered():
	$hover.play()


func _on_Link_test_pressed():
	$click.play()
	yield($click,"finished")
	$background_music.stop()
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Link_Test.tscn")


func _on_Link_test_mouse_entered():
	$hover.play()
