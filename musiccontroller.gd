extends Node

var mystery_music = load("res://sound/mystery.wav")
var main = load("res://sound/Zombie_Run.wav")
var win = load("res://sound/Happy_Victory.wav")

# Called when te node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func play_music():
	$AudioStreamPlayer.stream = mystery_music
	$AudioStreamPlayer.play()

func stop_music():
	$AudioStreamPlayer.stream = mystery_music
	$AudioStreamPlayer.stop()

func main_music():
	$AudioStreamPlayer.stream = main
	$AudioStreamPlayer.play()
	
func win_music():
	$AudioStreamPlayer.stream = win
	$AudioStreamPlayer.play()

func Just_stop():
	$AudioStreamPlayer.stop()
