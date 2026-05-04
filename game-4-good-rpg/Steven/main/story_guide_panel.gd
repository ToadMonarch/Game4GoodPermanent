extends Node2D

const CHAPTER0_ENTRIES := [
	{
		"chapter": "Chapter 0 - Origin Town",
		"title": "Learn the Path of Humanity",
		"description": "Go to the big banyan tree in the town center and talk to the Traveler to understand the meaning of the Path of Humanity.",
	},
	{
		"chapter": "Chapter 0 - Origin Town",
		"title": "Get support from family and friends",
		"description": "Go home and talk to your Family, then meet Adele at the village entrance to receive encouragement before departure.",
	},
	{
		"chapter": "Chapter 0 - Origin Town",
		"title": "Open the world map",
		"description": "Return to the Traveler, check the world map, and confirm the next three destinations of your journey.",
	},
	{
		"chapter": "Chapter 0 - Origin Town",
		"title": "Remember the core mission",
		"description": "Observe more, listen more, help more, and do not command others or act as a savior.",
	},
]

const CHAPTER_QUEST_ENTRIES := {
	1: [
	{
		"chapter": "Chapter 1 - Clear Stream Valley",
		"title": "Quest 1 - Water Source Field Survey",
		"description": "Walk along the stream to record three key problems: reduced water volume, blocked canals, and uneven water use; then talk to Maggie, Kai, and Jessica.",
	},
	{
		"chapter": "Chapter 1 - Clear Stream Valley",
		"title": "Quest 2 - Collect Viewpoints",
		"description": "Collect three perspectives from Arden (traditional wisdom), Steven (modern solution), and Aurora (children's needs).",
	},
	{
		"chapter": "Chapter 1 - Clear Stream Valley",
		"title": "Quest 3 - Prepare the Community Meeting",
		"description": "Notify villagers, arrange the meeting space, and organize both sides' viewpoints into a clear discussion board.",
	},
	{
		"chapter": "Chapter 1 - Clear Stream Valley",
		"title": "Quest 4 - Integrate the Plan",
		"description": "Support negotiation to reach an integrated plan that combines traditional and modern approaches for fair water sharing.",
	},
	{
		"chapter": "Chapter 1 - Clear Stream Valley",
		"title": "Quest 5 - Work Together to Implement",
		"description": "Cooperate with villagers to clear the canal and install water-saving devices so the plan is carried out by the whole community.",
	},
	],
	2: [
	{
		"chapter": "Chapter 2 - Seabreeze Village",
		"title": "Quest 1 - Marine Ecological Observation",
		"description": "Get the Marine Observation Log, follow Jessica to observe the beach and shallow sea, then learn tide rules and marine knowledge from Elder Matt.",
	},
	{
		"chapter": "Chapter 2 - Seabreeze Village",
		"title": "Quest 2 - Beach Clean-up",
		"description": "Get gloves, garbage clamps, and sorting bags. Clean in groups on the public beach, focus on tide lines and rocky cracks, then sort plastics, shells, and glass bottles correctly at the collection point to restore a clean beach.",
	},
	{
		"chapter": "Chapter 2 - Seabreeze Village",
		"title": "Quest 3 - Dialogue Between Tradition and Innovation",
		"description": "First talk to Matt at the fishing wharf about traditional concepts, then go to Kai's ecological breeding test site to learn innovative solutions. Help both sides listen to each other, eliminate misunderstandings, and reach a shared Protecting the Sea Together consensus.",
	},
	{
		"chapter": "Chapter 2 - Seabreeze Village",
		"title": "Quest 4 - Develop an Ocean Protection Plan",
		"description": "Call villager representatives in the fishing village meeting room to jointly determine three simple and practical ocean protection guidelines: regular beach cleaning, ocean-friendly fishing that protects young fish, and pilot ecological breeding. Then clap and recite together: Clean beaches, protect small fish, develop ecology, the sea is more beautiful.",
	},
	{
		"chapter": "Chapter 2 - Seabreeze Village",
		"title": "Quest 5 - Achievement Showcase and Commitment",
		"description": "Set up the venue at the beach viewing platform, erect the Protect the Blue Coast sign, and organize villagers to line up for the oath. Follow the oath gestures in order: hand to heart, wave gesture, then guard gesture, and complete the ceremony together.",
	},
	],
	3: [
	{
		"chapter": "Chapter 3 - Star & Moon Town",
		"title": "Quest 1 - Visit Cultural Households",
		"description": "Get the Multicultural Custom Manual, politely visit three cultural households, and record customs, foods, rituals, and wishes from Advaita, Sarina, and Aurora.",
	},
	{
		"chapter": "Chapter 3 - Star & Moon Town",
		"title": "Quest 2 - Collect Festival Needs",
		"description": "Talk to villagers in the square and residential areas, collect expectations for rituals, performances, food, and decorations, then list key differences clearly.",
	},
	{
		"chapter": "Chapter 3 - Star & Moon Town",
		"title": "Quest 3 - Coordinate Plans and Integrate Diversity",
		"description": "Invite family representatives to the council house and propose an inclusive plan: rotating rituals, shared multicultural food area, and one joint stage with harmony without uniformity.",
	},
	{
		"chapter": "Chapter 3 - Star & Moon Town",
		"title": "Quest 4 - Divide Tasks and Cooperate in Preparation",
		"description": "In the festival square, divide work for venue setup, food preparation, and performance rehearsal; coordinate materials and resolve small frictions.",
	},
	{
		"chapter": "Chapter 3 - Star & Moon Town",
		"title": "Quest 5 - Host the Harvest Festival",
		"description": "At the main venue, with stage, food, and ritual areas ready, preside over the opening and guide the event smoothly. During the Harvest Festival Parade, walk in the square, wave, and interact with villagers. Final result: successful festival, everyone happy, and the town becomes more harmonious.",
	},
	],
}

const CHAPTER_CONTEXT_ENTRIES := {
	1: [
	{
		"chapter": "Chapter 1 - Clear Stream Valley",
		"title": "Chapter Context",
		"description": "Clear Stream Valley depends on mountain stream water for fields and daily life. When flow drops, canals clog, and use feels unfair, neighbors disagree on what should change first.\n\nYour role is to observe, listen without judging, record what each household needs, and help the community combine traditional care for the stream with practical steps everyone can follow.",
	},
	],
	2: [
	{
		"chapter": "Chapter 2 - Seabreeze Village",
		"title": "Chapter Context",
		"description": "People in Seabreeze Village have lived by fishing for generations, but offshore garbage, declining water quality, and fewer catches now threaten their future.\n\nElder Matt follows the sea's natural laws, while young Kai promotes innovative ecological protection. Your role is to help them cooperate so humans and the ocean can thrive together.",
	},
	],
	3: [
	{
		"chapter": "Chapter 3 - Star & Moon Town",
		"title": "Chapter Context",
		"description": "Star & Moon Town is home to residents of many cultural backgrounds. With Harvest Festival approaching, everyone has different wishes: Advaita values traditional rituals, Sarina loves lively performances, and Aurora wants to share special food.\n\nYour mission is to help everyone respect differences, communicate well, and co-create an inclusive multicultural festival.",
	},
	],
}

const CHAPTER0_COMPLETION_SUMMARY := {
	"chapter": "Chapter 0 Complete!",
	"title": "Great job, little helper!",
	"description": "You listened to the Traveler, received support from your Family and Adele, and learned your mission: observe more, listen more, and help more.\n\nDo you want to continue to Chapter 1: Clear Stream Valley?",
}

# =============================================================================
# CHAPTER 0 → CHAPTER 1 (bypass / strict gate)
# -----------------------------------------------------------------------------
# EN:
#   Set REQUIRE_CHAPTER_0_COMPLETE_FOR_CHAPTER_1 to true  → normal game: you must
#   finish Chapter 0 in-world (QuestState: traveler, family, friend) before the
#   “Chapter 0 complete” prompt and Chapter 1 descriptions can appear.
#
#   Set to false (default for fast iteration) → after you close the Chapter 0
#   guide pages (text only), Chapter 0 is auto-marked complete and Chapter 1
#   context + quest descriptions open immediately — no need to talk to every
#   Chapter 0 NPC first, and the Chapter 0 completion confirmation panel is skipped.
#
# VI:
#   true  = bắt buộc hoàn thành hết Chapter 0 trong game (trò chuyện đủ NPC) rồi
#           mới vào luồng Chapter 1 như thiết kế gốc.
#   false = chỉ đọc xong các trang mô tả Chapter 0 là có thể sang mô tả Chapter 1
#           ngay, không cần hoàn thành hội thoại Chapter 0 với tất cả nhân vật.
# =============================================================================
const REQUIRE_CHAPTER_0_COMPLETE_FOR_CHAPTER_1 := false

enum PanelMode {
	GUIDE,
	CHAPTER_CONFIRMATION,
	QUEST_COMPLETION_CONFIRMATION,
	CHAPTER_FINAL_SUMMARY,
}

@onready var story_guide_layer: CanvasLayer = $StoryGuideLayer
@onready var guide_panel: PanelContainer = $StoryGuideLayer/GuidePanel
@onready var chapter_label: Label = $StoryGuideLayer/GuidePanel/ContentMargin/ContentVBox/ChapterLabel
@onready var title_label: Label = $StoryGuideLayer/GuidePanel/ContentMargin/ContentVBox/TitleLabel
@onready var description_label: Label = $StoryGuideLayer/GuidePanel/ContentMargin/ContentVBox/DescriptionLabel
@onready var page_label: Label = $StoryGuideLayer/GuidePanel/ContentMargin/ContentVBox/FooterRow/PageLabel
@onready var next_button: Button = $StoryGuideLayer/GuidePanel/ContentMargin/ContentVBox/FooterRow/NextButton
@onready var alt_button: Button = $StoryGuideLayer/GuidePanel/ContentMargin/ContentVBox/FooterRow/AltButton

var current_index: int = 0
var active_entries: Array = []
var is_guide_open: bool = false
var chapter0_guide_closed: bool = false
var chapter1_confirmation_shown: bool = false
var chapter2_confirmation_shown: bool = false
var chapter3_confirmation_shown: bool = false
var panel_mode: PanelMode = PanelMode.GUIDE
var active_chapter_id: int = 1
var current_chapter_quest_index: int = -1
var next_chapter_quest_to_describe: int = 0
var pending_completion_prompt_index: int = -1
var suppressed_completion_prompt_index: int = -1
var chapter_confirmation_target: int = 1
var final_summary_chapter_id: int = -1
var active_guide_kind: String = ""

func _ready() -> void:
	# Set true to jump quest flags to Chapter 3 for editor testing (normal play keeps Chapter 0 flow).
	const SKIP_TO_CHAPTER_3_TEST := false
	if SKIP_TO_CHAPTER_3_TEST:
		QuestState.chapter0_traveler_done = true
		QuestState.chapter0_family_done = true
		QuestState.chapter0_friend_done = true
		QuestState.quest1_maggie_done = true
		QuestState.quest1_kai_done = true
		QuestState.quest1_jessica_done = true
		QuestState.quest2_arden_done = true
		QuestState.quest2_steven_done = true
		QuestState.quest2_aurora_done = true
		QuestState.quest3_complete = true
		QuestState.quest4_complete = true
		QuestState.quest5_complete = true
		QuestState.chapter1_description_shown = true
		QuestState.chapter1_summary_shown = true
		QuestState.chapter2_quest1_matt_done = true
		QuestState.chapter2_quest1_kai_done = true
		QuestState.chapter2_quest1_jessica_done = true
		QuestState.chapter2_quest2_residents_done = true
		QuestState.chapter2_quest3_warehouse_done = true
		QuestState.chapter2_quest4_meeting_done = true
		QuestState.chapter2_quest5_cleanup_done = true
		QuestState.chapter2_description_shown = true
		QuestState.chapter2_summary_shown = true
		chapter0_guide_closed = true
		chapter1_confirmation_shown = true
		chapter2_confirmation_shown = true
		chapter3_confirmation_shown = false
		active_chapter_id = 3

	# ===================== TEMP STORY AUTOPLAY TEST (DELETE LATER) =====================
	# Uncomment this block to auto-run Chapter 0 -> 1 -> 2 flow test.
	#var autoplay_script := preload("res://Scripts/story_flow_autoplay.gd")
	#var autoplay = autoplay_script.new()
	#autoplay.run_on_ready = true
	#autoplay.step_delay_sec = 0.2
	#autoplay.verbose_logs = true
	#autoplay.stop_after_chapter2 = true
	#add_child(autoplay)
	# ================================================================================

	story_guide_layer.process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	guide_panel.process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	next_button.process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	alt_button.process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	next_button.pressed.connect(_on_next_button_pressed)
	alt_button.pressed.connect(_on_alt_button_pressed)
	_open_guide(CHAPTER0_ENTRIES, "chapter0")


func _process(_delta: float) -> void:
	if _handle_quest_completion_flow():
		return
	if _handle_final_summary_flow():
		return
	if not chapter0_guide_closed:
		return
	if is_guide_open:
		return

	if QuestState.is_chapter0_complete() and not QuestState.chapter1_description_shown and not chapter1_confirmation_shown:
		_open_chapter_confirmation(1)
		return

	if QuestState.chapter1_summary_shown and not QuestState.chapter2_description_shown and not chapter2_confirmation_shown:
		_open_chapter_confirmation(2)
		return

	if QuestState.chapter2_summary_shown and not QuestState.chapter3_description_shown and not chapter3_confirmation_shown:
		_open_chapter_confirmation(3)
		return


func _on_next_button_pressed() -> void:
	if panel_mode == PanelMode.CHAPTER_CONFIRMATION:
		_start_chapter_flow(chapter_confirmation_target)
		return

	if panel_mode == PanelMode.QUEST_COMPLETION_CONFIRMATION:
		var chapter_entries: Array = CHAPTER_QUEST_ENTRIES.get(active_chapter_id, [])
		if pending_completion_prompt_index == chapter_entries.size() - 1:
			suppressed_completion_prompt_index = -1
			pending_completion_prompt_index = -1
			_close_guide_panel()
			_open_chapter_final_summary(active_chapter_id)
			return
		_handle_continue_to_next_quest()
		return

	if panel_mode == PanelMode.CHAPTER_FINAL_SUMMARY:
		_mark_chapter_summary_shown(final_summary_chapter_id)
		if final_summary_chapter_id < 3:
			_start_chapter_flow(final_summary_chapter_id + 1)
		else:
			_close_guide_panel()
		return

	if panel_mode == PanelMode.GUIDE and active_guide_kind == "chapter_context":
		_close_guide_panel()
		_open_next_chapter_quest_description()
		return

	if panel_mode == PanelMode.GUIDE and active_guide_kind == "quest":
		current_chapter_quest_index = current_index
		next_chapter_quest_to_describe = current_chapter_quest_index + 1
		suppressed_completion_prompt_index = -1
		_close_guide_panel()
		return

	current_index += 1
	if current_index >= active_entries.size():
		_close_guide_panel()
		return

	_show_entry(current_index)


func _on_alt_button_pressed() -> void:
	if panel_mode == PanelMode.QUEST_COMPLETION_CONFIRMATION:
		suppressed_completion_prompt_index = pending_completion_prompt_index
		pending_completion_prompt_index = -1
		_close_guide_panel()
		return

	if panel_mode == PanelMode.CHAPTER_CONFIRMATION:
		_set_chapter_confirmation_shown(chapter_confirmation_target)
		_close_guide_panel()


func _show_entry(index: int) -> void:
	var entry: Dictionary = active_entries[index]
	chapter_label.text = entry["chapter"]
	title_label.text = entry["title"]
	description_label.text = entry["description"]
	page_label.text = "%d/%d" % [index + 1, active_entries.size()] if active_entries.size() > 1 else ""
	alt_button.visible = false

	if active_guide_kind == "quest":
		next_button.text = "Start Quest"
		return
	if active_guide_kind == "chapter_context":
		next_button.text = "Start Chapter"
		return

	next_button.text = "Start" if index == active_entries.size() - 1 else "Next"


func _close_guide_panel() -> void:
	if active_guide_kind == "chapter0":
		chapter0_guide_closed = true

	var bypass_chapter_0_for_chapter_1 := (
		active_guide_kind == "chapter0" and not REQUIRE_CHAPTER_0_COMPLETE_FOR_CHAPTER_1
	)

	story_guide_layer.visible = false
	is_guide_open = false
	panel_mode = PanelMode.GUIDE
	active_guide_kind = ""
	get_tree().paused = false

	if bypass_chapter_0_for_chapter_1:
		QuestState.chapter0_traveler_done = true
		QuestState.chapter0_family_done = true
		QuestState.chapter0_friend_done = true
		_start_chapter_flow(1)


func _open_guide(entries: Array, guide_kind: String) -> void:
	panel_mode = PanelMode.GUIDE
	active_guide_kind = guide_kind
	active_entries = entries.duplicate(true)
	current_index = 0
	story_guide_layer.visible = true
	is_guide_open = true
	_show_entry(current_index)
	get_tree().paused = true


func _open_chapter_confirmation(chapter_id: int) -> void:
	panel_mode = PanelMode.CHAPTER_CONFIRMATION
	chapter_confirmation_target = chapter_id
	active_entries.clear()
	story_guide_layer.visible = true
	is_guide_open = true

	if chapter_id == 1:
		chapter_label.text = CHAPTER0_COMPLETION_SUMMARY["chapter"]
		title_label.text = CHAPTER0_COMPLETION_SUMMARY["title"]
		description_label.text = CHAPTER0_COMPLETION_SUMMARY["description"]
	elif chapter_id == 2:
		chapter_label.text = "Chapter 1 Complete!"
		title_label.text = "Ready for Seabreeze Village?"
		description_label.text = "You helped Clear Stream Valley create a fair water plan.\n\nContinue to Chapter 2 to support marine protection and shared livelihood in Seabreeze Village."
	elif chapter_id == 3:
		chapter_label.text = "Chapter 2 Complete!"
		title_label.text = "Ready for Star & Moon Town?"
		description_label.text = "You helped Seabreeze Village protect the coast through cooperation.\n\nContinue to Chapter 3 to support inclusion and multicultural collaboration."

	page_label.text = ""
	next_button.text = "Continue to Chapter %d" % chapter_id
	alt_button.text = "Not now"
	alt_button.visible = true
	get_tree().paused = true


func _open_next_chapter_quest_description() -> void:
	var chapter_entries: Array = CHAPTER_QUEST_ENTRIES.get(active_chapter_id, [])
	if next_chapter_quest_to_describe < 0 or next_chapter_quest_to_describe >= chapter_entries.size():
		return

	_open_guide(chapter_entries, "quest")
	current_index = next_chapter_quest_to_describe
	_show_entry(current_index)


func _open_chapter_context(chapter_id: int) -> void:
	var context_entries: Array = CHAPTER_CONTEXT_ENTRIES.get(chapter_id, [])
	if context_entries.is_empty():
		_open_next_chapter_quest_description()
		return
	_open_guide(context_entries, "chapter_context")


func _handle_quest_completion_flow() -> bool:
	if active_chapter_id == 1 and not QuestState.chapter1_description_shown:
		return false
	if active_chapter_id == 2 and not QuestState.chapter2_description_shown:
		return false
	if active_chapter_id == 3 and not QuestState.chapter3_description_shown:
		return false
	if is_guide_open:
		return false
	if current_chapter_quest_index < 0:
		return false
	if not _is_chapter_quest_complete(active_chapter_id, current_chapter_quest_index):
		return false
	if suppressed_completion_prompt_index == current_chapter_quest_index:
		return false

	pending_completion_prompt_index = current_chapter_quest_index
	_open_quest_completion_confirmation(current_chapter_quest_index)
	return true


func _handle_final_summary_flow() -> bool:
	if _is_chapter_summary_shown(active_chapter_id):
		return false
	if is_guide_open:
		return false
	if not _is_chapter_quest_complete(active_chapter_id, 4):
		return false
	var chapter_entries: Array = CHAPTER_QUEST_ENTRIES.get(active_chapter_id, [])
	if next_chapter_quest_to_describe < chapter_entries.size():
		return false

	_open_chapter_final_summary(active_chapter_id)
	return true


func _open_quest_completion_confirmation(quest_index: int) -> void:
	panel_mode = PanelMode.QUEST_COMPLETION_CONFIRMATION
	active_entries.clear()
	story_guide_layer.visible = true
	is_guide_open = true
	chapter_label.text = "Chapter %d - Quest Complete" % active_chapter_id
	title_label.text = "Quest %d finished!" % [quest_index + 1]
	var chapter_entries: Array = CHAPTER_QUEST_ENTRIES.get(active_chapter_id, [])
	if quest_index == chapter_entries.size() - 1:
		description_label.text = "You completed the final quest in this chapter."
	else:
		description_label.text = "You completed Quest %d in this chapter.\n\nDo you want to move to the next quest?" % [quest_index + 1]
	page_label.text = ""
	if quest_index == chapter_entries.size() - 1:
		next_button.text = "OK"
		alt_button.visible = false
	else:
		next_button.text = "Yes, next quest"
		alt_button.text = "Not now"
		alt_button.visible = true
	get_tree().paused = true


func _handle_continue_to_next_quest() -> void:
	suppressed_completion_prompt_index = -1
	pending_completion_prompt_index = -1
	_close_guide_panel()

	var chapter_entries: Array = CHAPTER_QUEST_ENTRIES.get(active_chapter_id, [])
	if next_chapter_quest_to_describe >= chapter_entries.size():
		return

	_open_next_chapter_quest_description()


func _open_chapter_final_summary(chapter_id: int) -> void:
	panel_mode = PanelMode.CHAPTER_FINAL_SUMMARY
	final_summary_chapter_id = chapter_id
	active_entries.clear()
	story_guide_layer.visible = true
	is_guide_open = true
	if chapter_id == 1:
		chapter_label.text = "Chapter 1 Complete!"
		title_label.text = "Clear Stream Valley completed"
		description_label.text = "You finished all Chapter 1 quests and helped the village reach a shared water solution.\n\nLearning points: fair sharing, listening to different viewpoints, and collaboration between traditional wisdom and modern solutions."
	elif chapter_id == 2:
		chapter_label.text = "Chapter 2 Complete!"
		title_label.text = "Seabreeze Village completed"
		description_label.text = "You completed all Chapter 2 quests and helped villagers set up signs, take oaths, and consolidate ocean protection results.\n\nFinal result: improved environment and coexistence of tradition and innovation.\n\nEducational value: humans and nature must live in harmony; people should actively protect what they use from nature; generations learn from each other; and small actions can create global environmental change."
	else:
		chapter_label.text = "Chapter 3 Complete!"
		title_label.text = "Star & Moon Town completed"
		description_label.text = "You completed all Chapter 3 quests and supported inclusive collaboration across cultures.\n\nLearning points: respect differences, listen deeply, and build unity through dialogue."
	page_label.text = ""
	next_button.text = "Continue Journey"
	alt_button.visible = false
	get_tree().paused = true


func _is_chapter_quest_complete(chapter_id: int, quest_index: int) -> bool:
	if chapter_id == 1:
		match quest_index:
			0:
				return QuestState.is_quest1_complete()
			1:
				return QuestState.is_quest2_complete()
			2:
				return QuestState.quest3_complete
			3:
				return QuestState.quest4_complete
			4:
				return QuestState.quest5_complete
			_:
				return false
	if chapter_id == 2:
		match quest_index:
			0:
				return QuestState.is_chapter2_quest1_complete()
			1:
				return QuestState.chapter2_quest2_residents_done
			2:
				return QuestState.chapter2_quest3_warehouse_done
			3:
				return QuestState.chapter2_quest4_meeting_done
			4:
				return QuestState.chapter2_quest5_cleanup_done
			_:
				return false
	match quest_index:
		0:
			return QuestState.is_chapter3_quest1_complete()
		1:
			return QuestState.chapter3_quest2_home_visits_done
		2:
			return QuestState.chapter3_quest3_festival_setup_done
		3:
			return QuestState.chapter3_quest4_town_dialogue_done
		4:
			return QuestState.chapter3_quest5_celebration_done
		_:
			return false


func _set_chapter_confirmation_shown(chapter_id: int) -> void:
	if chapter_id == 1:
		chapter1_confirmation_shown = true
	elif chapter_id == 2:
		chapter2_confirmation_shown = true
	else:
		chapter3_confirmation_shown = true


func _set_chapter_description_shown(chapter_id: int) -> void:
	if chapter_id == 1:
		QuestState.chapter1_description_shown = true
	elif chapter_id == 2:
		QuestState.chapter2_description_shown = true
	else:
		QuestState.chapter3_description_shown = true


func _mark_chapter_summary_shown(chapter_id: int) -> void:
	if chapter_id == 1:
		QuestState.chapter1_summary_shown = true
	elif chapter_id == 2:
		QuestState.chapter2_summary_shown = true
	elif chapter_id == 3:
		QuestState.chapter3_summary_shown = true


func _is_chapter_summary_shown(chapter_id: int) -> bool:
	if chapter_id == 1:
		return QuestState.chapter1_summary_shown
	if chapter_id == 2:
		return QuestState.chapter2_summary_shown
	return QuestState.chapter3_summary_shown


func _start_chapter_flow(chapter_id: int) -> void:
	_set_chapter_confirmation_shown(chapter_id)
	_set_chapter_description_shown(chapter_id)
	active_chapter_id = chapter_id
	next_chapter_quest_to_describe = 0
	_open_chapter_context(chapter_id)
