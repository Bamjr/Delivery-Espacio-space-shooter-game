extends Node2D
class_name Weapon


export var laser = preload("res://maingame/laserEnemy.tscn")
var laser_speed = 500


onready var end_of_ship = $end_of_ship
onready var shoot_cooldown = $Cooldown



func shoot():
	if shoot_cooldown.is_stopped():
		var laser_inst = laser.instance()
		laser_inst.position = end_of_ship.global_position
		laser_inst.rotation_degrees = rotation_degrees
		laser_inst.apply_impulse(Vector2(),Vector2(laser_speed,0).rotated(rotation))
		get_tree().get_root().call_deferred("add_child",laser_inst)
		shoot_cooldown.start()
		
