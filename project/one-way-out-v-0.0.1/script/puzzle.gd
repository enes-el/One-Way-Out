class_name Puzzle
extends Control

var playerInput: String = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func on_text_entered(new_text: String) -> void:
	playerInput = new_text
	print("Player input: %s" % playerInput)
