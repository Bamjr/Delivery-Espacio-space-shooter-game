extends Node2D


export (int) var health = 100 setget set_health

# Called when the node enters the scene tree for the first time.
func set_health(new_health: int):
	health = clamp(new_health,0,100)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
