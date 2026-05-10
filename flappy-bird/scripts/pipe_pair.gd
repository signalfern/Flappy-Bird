extends Node2D

@onready var Y = $".".position.y
@export var Speed := 200.0


func gap_postion():
	var num := randf_range(-140.0,320.0)
	position.y = Y + num

func _ready() -> void:
	gap_postion()

func _process(delta: float) -> void:
	position.x -= Speed * delta 
