extends Control


export var LinkTest = "https://forms.gle/tF8uqYyeAJbXR93WA"
export var LinkGreat = "https://forms.gle/oPzFtmZsLV9xzoyz6"

# Called when the node enters the scene tree for the first time.
func _ready():
	Musiccontroller.stop_music()
	$backgroundplayer.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_LinkTest_pressed():
	OS.shell_open(LinkTest)


func _on_LinkGreat_pressed():
	OS.shell_open(LinkGreat)


func _on_Mainmenu_pressed():
	get_tree().change_scene("res://main menu.tscn")
