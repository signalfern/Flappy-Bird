extends Node2D

@onready var  pipe_scene = preload("res://scenes/pipe_pair.tscn")
@onready var score_label = $CanvasLayer/Score_label
var score:= 0 

func _on_timer_timeout():
	var pipe = pipe_scene.instantiate()
	pipe.Score_changed.connect(on_score_changed)
	pipe.position.x = 1154
	add_child(pipe)
	

func _ready() -> void:
	print("timer started")


func on_score_changed(new_score):
	score = score + new_score
	score_label.text = "Score :" + str(score)
	print(score)
