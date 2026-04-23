extends Area2D

enum Chapter1Gate {
	NONE,
	## Quest 2 — Arden, Steven, Aurora: any order; only Quest 1 (three households) must be done first.
	QUEST2_OPINION,
	## Quest 3 — Villagers: needs all Quest 2 opinion dialogues (Arden, Steven, Aurora) finished, in any order.
	VILLAGERS_COUNCIL,
	## Council group sprite — [member dialogue_start] only after Quest 1, Quest 2, and Quest 3 (meeting announced).
	QUEST4_COUNCIL_GROUP,
}

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"
## Used with [constant VILLAGERS_COUNCIL] after Quest 4 is done, until Quest 5 dialogue completes (empty defaults to villagers_quest5).
@export var dialogue_after_quest4: String = ""
## Used with [constant VILLAGERS_COUNCIL] after Quest 5 is done (empty = [member _villagers_title_after_quest5]).
@export var dialogue_after_quest5: String = ""
## When set, [member _resolve_dialogue_start] enforces Chapter 1 quest order (not order within the same quest).
@export var chapter1_gate: Chapter1Gate = Chapter1Gate.NONE


func action() -> void:
	DialogueManager.show_example_dialogue_balloon(dialogue_resource, _resolve_dialogue_start())


func _resolve_dialogue_start() -> String:
	match chapter1_gate:
		Chapter1Gate.QUEST2_OPINION:
			if not QuestState.is_quest1_complete():
				return "chapter1_locked_finish_investigation"
			return dialogue_start
		Chapter1Gate.VILLAGERS_COUNCIL:
			if not QuestState.is_quest2_complete():
				return "chapter1_locked_gather_all_views"
			if not QuestState.quest3_complete:
				return dialogue_start
			if not QuestState.quest4_complete:
				return "chapter1_locked_finish_council_at_square"
			if not QuestState.quest5_complete:
				return dialogue_after_quest4 if not dialogue_after_quest4.is_empty() else "villagers_quest5"
			if not dialogue_after_quest5.is_empty():
				return dialogue_after_quest5
			return _villagers_title_after_quest5()
		Chapter1Gate.QUEST4_COUNCIL_GROUP:
			if not QuestState.is_quest1_complete():
				return "chapter1_locked_finish_investigation"
			if not QuestState.is_quest2_complete():
				return "chapter1_locked_gather_all_views"
			if not QuestState.quest3_complete:
				return "chapter1_locked_announce_council_first"
			return dialogue_start
		_:
			return dialogue_start


func _villagers_title_after_quest5() -> String:
	return "villagers_quest5_repeat"
