
extends CanvasLayer

var exit_unlocked: bool = false

@onready var puzzle_gui: Puzzle = $PuzzleGUI
@onready var key: Sprite2D = $Items/Key
@onready var user_input: LineEdit = $PuzzleGUI/UserInput
@onready var obj_gui_key: TextureRect = $ObjectiveGUIKey
@onready var obj_gui_exit_basement: TextureRect = $ObjectiveGUIEscape


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	puzzle_gui.hide()
	key.hide()

	obj_gui_key.show()
	obj_gui_exit_basement.hide()


func _on_door_button_pressed() -> void:
	if exit_unlocked:
		get_tree().change_scene_to_file("res://end_screen.tscn")


func _on_confirm_button_pressed() -> void:
	print("User input: ", user_input.text)

	if user_input.text == "2":
		exit_unlocked = true
		key.show()
		puzzle_gui.hide()

		obj_gui_key.hide()
		obj_gui_exit_basement.show()
	else:
		user_input.clear()
		user_input.grab_focus()


func _on_box_button_pressed() -> void:
	if not exit_unlocked:
		puzzle_gui.show()
		user_input.grab_focus()
