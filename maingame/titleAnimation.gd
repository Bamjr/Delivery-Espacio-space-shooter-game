extends Control


onready var text_Animate = $MarginContainer/VBoxContainer/TextAnimate


# Called when the node enters the scene tree for the first time.
func _ready():
	animate_text()
	
	


func animate_text():
	text_Animate.play("Starttext")
