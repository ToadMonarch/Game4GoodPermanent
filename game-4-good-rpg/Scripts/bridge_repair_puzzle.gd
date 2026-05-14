extends Node2D

@onready var complete_label: Label = $CanvasLayer/CompleteLabel
@onready var broken_bridge: Sprite2D = $BrokenBridgeReference
@onready var complete_bridge: Sprite2D = $CompletedBridgeReference
@onready var planks: Node2D = $Planks
@onready var drop_zones: Node2D = $DropZones

func _ready() -> void:
	complete_label.visible = false
	complete_bridge.visible = false

	for plank in get_tree().get_nodes_in_group("bridge_plank"):
		if plank.has_signal("plank_placed"):
			plank.plank_placed.connect(_on_plank_placed)

func _on_plank_placed(_plank_id: int) -> void:
	for zone in get_tree().get_nodes_in_group("bridge_zone"):
		if not zone.occupied:
			return

	_show_completed_bridge()

func _show_completed_bridge() -> void:
	complete_label.visible = true

	broken_bridge.visible = false
	planks.visible = false
	drop_zones.visible = false
	complete_bridge.visible = true

	global.bridge_repaired = true

	await get_tree().create_timer(1.5).timeout
	get_tree().change_scene_to_file("res://Scenes/start.tscn")
