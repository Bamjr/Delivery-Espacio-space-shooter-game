extends RigidBody2D


onready var shoot_timer = $Timer

func _ready():
	shoot_timer.start()




func _on_Timer_timeout():
	queue_free()








func _on_Area2D_body_entered(body):
	if body.has_method("handle_hit"):
		body.handle_hit()
		queue_free()
	
