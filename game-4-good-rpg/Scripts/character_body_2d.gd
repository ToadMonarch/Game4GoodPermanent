extends CharacterBody2D

@export var speed := 200
var target_position: Vector2

func _ready():
	target_position = global_position

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		target_position = get_global_mouse_position()

func _physics_process(delta):
	var direction = (target_position - global_position).normalized()
	
	if global_position.distance_to(target_position) > 5:
		velocity = direction * speed
	else:
		velocity = Vector2.ZERO
	
	move_and_slide()
