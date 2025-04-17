extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Roll.play("Rolling")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func kill()-> void:
# warning-ignore:return_value_discarded
	get_tree().reload_current_scene()


func _on_meteorite_body_entered(body):
	if "Player" in body.name:
		kill()
