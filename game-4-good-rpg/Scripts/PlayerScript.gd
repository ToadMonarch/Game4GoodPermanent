extends CharacterBody2D

@export var speed := 400
var target_position: Vector2
var using_mouse := false

@onready var animsprite = $AnimatedSprite2D

const SPRITES: Dictionary[String, SpriteFrames] = {
	"AfricanBoy": preload("res://Sprites/Player Sprites/DefaultSS/AfricanBoySS.tres"),
	"AfricanGirl": preload("res://Sprites/Player Sprites/DefaultSS/AfricanGirlSS.tres"),
	"ArabBoy": preload("res://Sprites/Player Sprites/DefaultSS/ArabBoySS.tres"),
	"ArabGirl": preload("res://Sprites/Player Sprites/DefaultSS/ArabGirlSS.tres"),
	"AsianBoy": preload("res://Sprites/Player Sprites/DefaultSS/AsianBoySS.tres"),
	"AsianGirl": preload("res://Sprites/Player Sprites/DefaultSS/AsianGirlSS.tres"),
	"BrownBoy": preload("res://Sprites/Player Sprites/DefaultSS/BrownBoySS.tres"),
	"BrownGirl": preload("res://Sprites/Player Sprites/DefaultSS/BrownGirlSS.tres"),
	"Default": preload("res://Sprites/Player Sprites/DefaultSS/DefSS.tres"),
	"LGBT1": preload("res://Sprites/Player Sprites/DefaultSS/LGBT1.tres"),
	"LGBT2": preload("res://Sprites/Player Sprites/DefaultSS/LGBT2.tres"),
	"WhiteBoy": preload("res://Sprites/Player Sprites/DefaultSS/WhiteBoySS.tres"),
	"WhiteGirl": preload("res://Sprites/Player Sprites/DefaultSS/WhiteGirlSS.tres")
}

const SKIN_ORDER: Array[String] = [
	"Default",
	"AfricanBoy",
	"AfricanGirl",
	"ArabBoy",
	"ArabGirl",
	"AsianBoy",
	"AsianGirl",
	"BrownBoy",
	"BrownGirl",
	"LGBT1",
	"LGBT2",
	"WhiteBoy",
	"WhiteGirl"
]

var current_skin_index := 0
var last_direction := Vector2.RIGHT

func _ready():
	target_position = global_position
	
	current_skin_index = SKIN_ORDER.find("LGBT2")
	if current_skin_index == -1:
		current_skin_index = 0
	
	set_skin(SKIN_ORDER[current_skin_index])

func set_skin(name: String):
	if SPRITES.has(name):
		animsprite.sprite_frames = SPRITES[name]
		animsprite.play("16 Idle")
	else:
		push_warning("Skin not found: " + name)

func cycle_skin():
	current_skin_index = (current_skin_index + 1) % SKIN_ORDER.size()
	set_skin(SKIN_ORDER[current_skin_index])

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		target_position = get_global_mouse_position()
		using_mouse = true

func _physics_process(delta):

	# 🔥 Proper input action (make sure it's added in Input Map)
	if Input.is_action_just_pressed("cycle_skin"):
		cycle_skin()

	var input_vector = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()

	if input_vector != Vector2.ZERO:
		using_mouse = false
		velocity = input_vector * speed
		last_direction = input_vector
	
	elif using_mouse:
		var direction = (target_position - global_position)
		
		if direction.length() > 5:
			velocity = direction.normalized() * speed
			last_direction = direction.normalized()
		else:
			velocity = Vector2.ZERO
			using_mouse = false
	else:
		velocity = Vector2.ZERO

	# 🔥 Capture real movement
	var prev_position = global_position

	move_and_slide()

	var real_velocity = global_position - prev_position

	update_animation(real_velocity)

func update_animation(real_velocity: Vector2):

	# If not actually moving → idle
	if real_velocity.length() < 1:
		play_idle_animation()
		return

	var angle = real_velocity.angle()
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

func play_idle_animation():
	var angle = last_direction.angle()
	animsprite.flip_h = false

	if angle > -PI/8 and angle <= PI/8:
		animsprite.play("16 Idle")

	elif angle > PI/8 and angle <= 3*PI/8:
		animsprite.play("16 Idle")

	elif angle > 3*PI/8 and angle <= 5*PI/8:
		animsprite.play("16 Idle")

	elif angle > 5*PI/8 and angle <= 7*PI/8:
		animsprite.play("16 Idle")
		animsprite.flip_h = true

	elif angle > 7*PI/8 or angle <= -7*PI/8:
		animsprite.play("16 Idle")
		animsprite.flip_h = true

	elif angle > -7*PI/8 and angle <= -5*PI/8:
		animsprite.play("16 Idle")
		animsprite.flip_h = true

	elif angle > -5*PI/8 and angle <= -3*PI/8:
		animsprite.play("16 Idle")

	elif angle > -3*PI/8 and angle <= -PI/8:
		animsprite.play("16 Idle")

#This is my mark - ayden
# Leo successfuly updated the script
#This is not my work - Stevem
#This is my addition 2 - maq
