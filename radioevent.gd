extends Area2D


var active = false


func _ready():
	pass
	
func _process(_delta):
	$Sprite2.visible = active
	

func _on_Area2D_mouse_entered()->void:
	active = true


func _on_Area2D_mouse_exited()->void:
	active = false


func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$radioclick.play()
			yield($radioclick,"finished")
			Animate()
		else:
			print("fail")

func Animate()->void:
	$TextureRect/AnimationPlayer.stop()
	$TextureRect/AnimationPlayer.play("tec")
	yield($TextureRect/AnimationPlayer,"animation_finished")
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://firstcutscene.tscn")
	
	


