extends Node2D





# Called when the node enters the scene tree for the first time.
func _ready():
	Musiccontroller.play_music()
	animation_openning()
	
func _process(_delta):
	if Input.is_action_just_pressed("ui_skip") == true:
		$click.play()
		yield($click,"finished")
# warning-ignore:return_value_discarded
		Loading.load_scene(self,"res://maingame/Maingame_Chap1.tscn")

func animation_openning():
	$CanvasLayer/buttons/openning.play("openning")
	yield($CanvasLayer/buttons/openning,"animation_finished")
	var tutdialog = Dialogic.start('test')
	add_child(tutdialog)
	
	

	


func _on_check3_pressed():
	var comfirm = Dialogic.start("comfirmbut")
	add_child(comfirm)
	
