extends PopupDialog


var click_s = load("res://sound/cilck.wav")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func play_music():
	$click_sound.stream = click_s
	$click_sound.play()


func _on_check2_pressed():
	play_music()
	popup_centered()
	




