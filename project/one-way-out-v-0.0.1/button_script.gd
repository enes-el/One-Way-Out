extends VBoxContainer

func _ready():
	pass

# Uses signals from start button to change to basement/tutorial scene.
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://basement_room.tscn")

# Uses signals from setting button to change to setting scene.
func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://setting_screen.tscn")

# Uses signals from exit button to quit the game.
func _on_exit_pressed() -> void:
	get_tree().quit()
