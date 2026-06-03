extends CharacterBody2D


@export var SPEED = 300.0
@export var JUMP_VELOCITY := -600.0
@export var gravity := 10.4

func _physics_process(delta: float) -> void:

	if not is_on_floor():
		velocity += get_gravity() * delta 

	if Input.is_action_just_released("jump") :
		velocity.y = JUMP_VELOCITY
	move_and_slide()

func is_hit():
	pass 
