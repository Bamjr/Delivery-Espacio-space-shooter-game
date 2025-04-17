extends KinematicBody2D
class_name Player


var movespeed = 500
var laser_speed = 500
var laser = preload("res://maingame/laser.tscn")



onready var end_of_ship = $end_of_ship
onready var shoot_cooldown = $Cooldown
onready var health_stat = $Health



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(_delta):
	var motion = Vector2()

	if Input.is_action_pressed("up"):
		motion.y -= 1
	if Input.is_action_pressed("down"):
		motion.y += 1
	if Input.is_action_pressed("right"):
		motion.x += 1
	if Input.is_action_pressed("left"):
		motion.x -= 1
		
	motion = motion.normalized()
	motion = move_and_slide(motion * movespeed)
	look_at(get_global_mouse_position())
	
func _unhandled_input(event: InputEvent)-> void:
	if event.is_action_released("shoot"):
		shoot()
		
func shoot():
	if shoot_cooldown.is_stopped():
		var laser_inst = laser.instance()
		laser_inst.position = end_of_ship.global_position
		laser_inst.rotation_degrees = rotation_degrees
		laser_inst.apply_impulse(Vector2(),Vector2(laser_speed,0).rotated(rotation))
		get_tree().get_root().call_deferred("add_child",laser_inst)
		shoot_cooldown.start()
	

func handle_hit():
	health_stat.health -= 20
	print("player hit ",health_stat.health)


func kill()-> void:
# warning-ignore:return_value_discarded
	get_tree().reload_current_scene()


func _on_Area2D_body_entered(body):
	if "EnemyFix" in body.name:
		kill()
