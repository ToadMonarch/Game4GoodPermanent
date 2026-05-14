extends CanvasLayer

@onready var settings_button = $SettingsButton
@onready var settings_menu = $SettingsMenu
@onready var volume_slider = $SettingsMenu/VolumeSlider
@onready var music_player = $"../MusicPlayer"
var player: Node2D

var menu_open := false

func _ready():
	player = get_parent().get_node_or_null("Player") as Node2D
	if player == null:
		player = get_parent().get_node_or_null("CharacterBody2D") as Node2D
	# Start with menu hidden
	settings_menu.visible = false
	load_settings()
	# Optional: set default volume
	AudioServer.set_bus_volume_db(0, volume_slider.value)

# 🔘 When settings button is pressed
func _on_settings_button_pressed():
	menu_open = !menu_open
	settings_menu.visible = menu_open
	get_tree().paused = menu_open

# 🔊 When volume slider changes
func _on_volume_slider_value_changed(value):
	if value <= -40:
		AudioServer.set_bus_mute(0, true)
	else:
		AudioServer.set_bus_mute(0, false)
		AudioServer.set_bus_volume_db(0, value)


func _on_close_pressed():
	menu_open = false
	settings_menu.visible = false
	get_tree().paused = false


func _on_change_skin_pressed() -> void:
	if player:
		player.cycle_skin()


func _on_save_pressed() -> void:
	var config = ConfigFile.new()
	config.set_value("audio", "volume", volume_slider.value)
	if player:
		config.set_value("player", "skin", player.current_skin_index)
	config.save("user://settings.cfg")
	
func load_settings():
	var config = ConfigFile.new()
	if config.load("user://settings.cfg") == OK:
		var vol = config.get_value("audio", "volume", 0)
		var skin = config.get_value("player", "skin", 0)
		
		volume_slider.value = vol
		if player:
			player.current_skin_index = skin
			player.set_skin(player.SKIN_ORDER[skin])
