extends CanvasLayer

var exit_unlocked: bool = false
@onready var puzzle_gui: Puzzle = $PuzzleGUI


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	puzzle_gui.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_door_button_pressed() -> void:
	if exit_unlocked:
		get_tree().change_scene_to_file("res://end_screen.tscn")

func _on_box_button_pressed() -> void:
	puzzle_gui.visible = true
	
