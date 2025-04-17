extends KinematicBody2D

onready var health_stat = $Health


var motion = Vector2()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(_delta):
	var Playeri = get_parent().get_node("Player")
	
	position += (Playeri.position - position)/50
	look_at(Playeri.position)
	
# warning-ignore:return_value_discarded
	move_and_collide(motion)

func handle_hit():
	health_stat.health -= 20
	if health_stat.health <= 0:
		queue_free()




