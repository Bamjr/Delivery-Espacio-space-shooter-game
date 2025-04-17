extends PopupDialog


var click_l = load("res://sound/cilck.wav")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func play_music():
	$click_sound2.stream = click_l
	$click_sound2.play()


func _on_check_pressed():
	play_music()
	popup_centered()
	




# Called when the node enters the scene tree for the first time.




