extends CharacterBody2D

const SPEED = 250.0
var is_in_dialogue := false

@onready var sprite = $Penguine
@onready var actionable_finder: Area2D = $Direction/ActionableFinder

func _ready() -> void:
	add_to_group("player")
	actionable_finder.add_to_group("player_interaction_area")
	DialogueManager.dialogue_started.connect(_on_dialogue_started)
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)

# FUNCTION FOR SHOWING DIALOGUE
func _unhandled_input(_event: InputEvent) -> void:
	if is_in_dialogue:
		return

	if Input.is_action_just_pressed("ui_accept"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
			return
# FUNCTION FOR MOVING
func _physics_process(_delta: float) -> void:
	if is_in_dialogue:
		velocity = Vector2.ZERO
		move_and_slide()
		return

	var input_vector = Vector2.ZERO
	
	input_vector.x = Input.get_axis("ui_left", "ui_right")
	input_vector.y = Input.get_axis("ui_up", "ui_down")
	
	input_vector = input_vector.normalized()
	
	velocity = input_vector * SPEED
	move_and_slide()
	
	# 🎯 Đổi frame theo hướng
	if input_vector != Vector2.ZERO:
		if abs(input_vector.x) > abs(input_vector.y):
			if input_vector.x > 0:
				sprite.frame = 11  # phải
			else:
				sprite.frame = 8  # trái
		else:
			if input_vector.y > 0:
				sprite.frame = 2  # xuống
			else:
				sprite.frame = 5  # lên

func _on_dialogue_started(_resource) -> void:
	is_in_dialogue = true

func _on_dialogue_ended(_resource) -> void:
	is_in_dialogue = false
