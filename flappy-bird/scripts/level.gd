extends Node2D

@onready var  pipe_scene = preload("res://scenes/pipe_pair.tscn")



func _on_timer_timeout():
	var pipe = pipe_scene.instantiate()
	pipe.position.x = 1154
	add_child(pipe)
	

func _ready() -> void:
	print("timer started")
	
