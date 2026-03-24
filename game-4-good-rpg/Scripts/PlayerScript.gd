extends CharacterBody2D

@export var speed := 200
var target_position: Vector2
var using_mouse := false

func _ready():
	target_position = global_position

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		target_position = get_global_mouse_position()
		using_mouse = true

func _physics_process(delta):
	var input_vector = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()

	if input_vector != Vector2.ZERO:
		using_mouse = false
		velocity = input_vector * speed
	
	elif using_mouse:
		var direction = (target_position - global_position)
		
		if direction.length() > 5:
			velocity = direction.normalized() * speed
		else:
			velocity = Vector2.ZERO
			using_mouse = false
	else:
		velocity = Vector2.ZERO

	move_and_slide()
	
	#This is my mark - ayden
	# Leo successfuly updated the script
