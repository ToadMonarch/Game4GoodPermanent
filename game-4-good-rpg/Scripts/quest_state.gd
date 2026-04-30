extends Node
## Chapter 1 progression: each quest’s main dialogue unlocks only after the previous quest’s conversations are finished.

var quest1_maggie_done: bool = false
var quest1_kai_done: bool = false
var quest1_jessica_done: bool = false

var quest2_arden_done: bool = false
var quest2_steven_done: bool = false
var quest2_aurora_done: bool = false

var quest3_complete: bool = false
var quest4_complete: bool = false
var quest5_complete: bool = false

var chapter2_quest1_matt_done: bool = false
var chapter2_quest1_kai_done: bool = false
var chapter2_quest1_jessica_done: bool = false
var chapter2_quest2_residents_done: bool = false
var chapter2_quest3_warehouse_done: bool = false
var chapter2_quest4_meeting_done: bool = false
var chapter2_quest5_cleanup_done: bool = false
var chapter2_description_shown: bool = false
var chapter2_summary_shown: bool = false

var chapter3_quest1_advaita_done: bool = false
var chapter3_quest1_sarina_done: bool = false
var chapter3_quest1_aurora_done: bool = false
var chapter3_quest2_advaita_done: bool = false
var chapter3_quest2_sarina_done: bool = false
var chapter3_quest2_aurora_done: bool = false
var chapter3_quest2_home_visits_done: bool = false
var chapter3_quest3_festival_setup_done: bool = false
var chapter3_quest4_town_dialogue_done: bool = false
var chapter3_quest5_celebration_done: bool = false
var chapter3_description_shown: bool = false
var chapter3_summary_shown: bool = false

var chapter0_traveler_done: bool = false
var chapter0_family_done: bool = false
var chapter0_friend_done: bool = false
var chapter1_description_shown: bool = false
var chapter1_summary_shown: bool = false


func is_quest1_complete() -> bool:
	return quest1_maggie_done and quest1_kai_done and quest1_jessica_done


func is_quest2_complete() -> bool:
	return quest2_arden_done and quest2_steven_done and quest2_aurora_done


func is_chapter2_quest1_complete() -> bool:
	return chapter2_quest1_matt_done and chapter2_quest1_jessica_done


func is_chapter2_complete() -> bool:
	return is_chapter2_quest1_complete() and chapter2_quest2_residents_done and chapter2_quest3_warehouse_done and chapter2_quest4_meeting_done and chapter2_quest5_cleanup_done


func is_chapter3_quest1_complete() -> bool:
	return chapter3_quest1_advaita_done and chapter3_quest1_sarina_done and chapter3_quest1_aurora_done


func is_chapter3_quest2_complete() -> bool:
	return chapter3_quest2_advaita_done and chapter3_quest2_sarina_done and chapter3_quest2_aurora_done


func is_chapter3_complete() -> bool:
	return is_chapter3_quest1_complete() and chapter3_quest2_home_visits_done and chapter3_quest3_festival_setup_done and chapter3_quest4_town_dialogue_done and chapter3_quest5_celebration_done


func mark_quest1_maggie_done() -> void:
	quest1_maggie_done = true


func mark_quest1_kai_done() -> void:
	quest1_kai_done = true


func mark_quest1_jessica_done() -> void:
	quest1_jessica_done = true


func mark_quest2_arden_done() -> void:
	quest2_arden_done = true


func mark_quest2_steven_done() -> void:
	quest2_steven_done = true


func mark_quest2_aurora_done() -> void:
	quest2_aurora_done = true


func mark_quest3_complete() -> void:
	quest3_complete = true


func mark_quest4_complete() -> void:
	quest4_complete = true


func mark_quest5_complete() -> void:
	quest5_complete = true


func mark_chapter2_quest1_matt_done() -> void:
	chapter2_quest1_matt_done = true


func mark_chapter2_quest1_kai_done() -> void:
	chapter2_quest1_kai_done = true


func mark_chapter2_quest1_jessica_done() -> void:
	chapter2_quest1_jessica_done = true


func mark_chapter2_quest2_residents_done() -> void:
	chapter2_quest2_residents_done = true


func mark_chapter2_quest3_warehouse_done() -> void:
	chapter2_quest3_warehouse_done = true


func mark_chapter2_quest4_meeting_done() -> void:
	chapter2_quest4_meeting_done = true


func mark_chapter2_quest5_cleanup_done() -> void:
	chapter2_quest5_cleanup_done = true


func mark_chapter3_quest1_advaita_done() -> void:
	chapter3_quest1_advaita_done = true


func mark_chapter3_quest1_sarina_done() -> void:
	chapter3_quest1_sarina_done = true


func mark_chapter3_quest1_aurora_done() -> void:
	chapter3_quest1_aurora_done = true


func mark_chapter3_quest2_home_visits_done() -> void:
	chapter3_quest2_home_visits_done = true


func mark_chapter3_quest2_advaita_done() -> void:
	chapter3_quest2_advaita_done = true
	_update_chapter3_quest2_completion()


func mark_chapter3_quest2_sarina_done() -> void:
	chapter3_quest2_sarina_done = true
	_update_chapter3_quest2_completion()


func mark_chapter3_quest2_aurora_done() -> void:
	chapter3_quest2_aurora_done = true
	_update_chapter3_quest2_completion()


func mark_chapter3_quest3_festival_setup_done() -> void:
	chapter3_quest3_festival_setup_done = true


func mark_chapter3_quest4_town_dialogue_done() -> void:
	chapter3_quest4_town_dialogue_done = true


func mark_chapter3_quest5_celebration_done() -> void:
	chapter3_quest5_celebration_done = true


func mark_chapter0_traveler_done() -> void:
	chapter0_traveler_done = true


func mark_chapter0_family_done() -> void:
	chapter0_family_done = true


func mark_chapter0_friend_done() -> void:
	chapter0_friend_done = true


func is_chapter0_complete() -> bool:
	return chapter0_traveler_done and chapter0_family_done and chapter0_friend_done


func _update_chapter3_quest2_completion() -> void:
	if is_chapter3_quest2_complete():
		chapter3_quest2_home_visits_done = true
