extends CharacterBody2D

@export var speed := 200
var target_position: Vector2
var using_mouse := false

@onready var animsprite = $AnimatedSprite2D

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

	update_animation()

func update_animation():
	if velocity == Vector2.ZERO:
		animsprite.play("16 Idle")
		return
	var angle = velocity.angle()
	animsprite.flip_h = false
	if angle > -PI/8 and angle <= PI/8:
		animsprite.play("Run East")
	elif angle > PI/8 and angle <= 3*PI/8:
		animsprite.play("Run SouthEast")
	elif angle > 3*PI/8 and angle <= 5*PI/8:
		animsprite.play("Run South")
	elif angle > 5*PI/8 and angle <= 7*PI/8:
		animsprite.play("Run SouthEast")
		animsprite.flip_h = true
	elif angle > 7*PI/8 or angle <= -7*PI/8:
		animsprite.play("Run East")
		animsprite.flip_h = true
	elif angle > -7*PI/8 and angle <= -5*PI/8:
		animsprite.play("Run NorthEast")
		animsprite.flip_h = true
	elif angle > -5*PI/8 and angle <= -3*PI/8:
		animsprite.play("Run North")
	elif angle > -3*PI/8 and angle <= -PI/8:
		animsprite.play("Run NorthEast")
	
	#This is my mark - ayden
	# Leo successfuly updated the script
	#This is not my work - Stevem
	#This is my addition 2 - maq
