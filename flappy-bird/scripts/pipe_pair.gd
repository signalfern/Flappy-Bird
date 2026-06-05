extends Node2D

@onready var Y = $".".position.y
@export var Speed := 200.0
signal Score_changed(new_score : int) 


func gap_postion():
	var num := randf_range(-140.0,250.0)
	position.y = Y + num

func _ready() -> void:
	gap_postion()
	

func _process(delta: float) -> void:
	position.x -= Speed * delta 


func _on_score_area_body_entered(body: Node2D) -> void:
	Score_changed.emit(1)
