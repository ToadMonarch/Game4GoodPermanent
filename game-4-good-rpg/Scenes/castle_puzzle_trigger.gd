extends Area2D

@export_file("*.tscn") var puzzle_scene: String = "res://Scenes/PuzzlePrototype/slide_puzzle_main.tscn"
@onready var talk_hint: Control = $TalkHintLayer/TalkHintPanel

var player_near := false

func _ready() -> void:
	# This makes the trigger detectable by the Player's ActionableFinder,
	# which has collision_mask = 16.
	collision_layer = 16
	collision_mask = 1

	talk_hint.visible = false
	area_entered.connect(_on_area_entered)
	area_exited.connect(_on_area_exited)

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("player_interaction_area"):
		player_near = true
		talk_hint.visible = true

func _on_area_exited(area: Area2D) -> void:
	if area.is_in_group("player_interaction_area"):
		player_near = false
		talk_hint.visible = false

func action() -> void:
	# Called by PlayerScript.gd when Space / ui_accept is pressed
	# while ActionableFinder overlaps this Area2D.
	if player_near:
		get_tree().change_scene_to_file(puzzle_scene)
