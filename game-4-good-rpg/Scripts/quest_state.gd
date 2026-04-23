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


func is_quest1_complete() -> bool:
	return quest1_maggie_done and quest1_kai_done and quest1_jessica_done


func is_quest2_complete() -> bool:
	return quest2_arden_done and quest2_steven_done and quest2_aurora_done


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
