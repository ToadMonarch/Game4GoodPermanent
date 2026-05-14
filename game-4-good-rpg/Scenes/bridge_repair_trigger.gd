extends Area2D

@export var puzzle_scene: String = "res://Scenes/bridge_repair_puzzle.tscn"
@export var repair_prompt: Label

var player_near := false

func _ready() -> void:
	repair_prompt.visible = false

	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _process(_delta: float) -> void:
	if QuestState.bridge_repaired:
		repair_prompt.visible = false
		return

	if player_near and Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file(puzzle_scene)

func _on_body_entered(body: Node) -> void:
	if body.name == "Player" and not QuestState.bridge_repaired:
		player_near = true
		repair_prompt.visible = true

func _on_body_exited(body: Node) -> void:
	if body.name == "Player":
		player_near = false
		repair_prompt.visible = false
