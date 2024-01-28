extends Area2D

func _ready():
	print("Area2D is ready")


func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		print("Clicked on Area2D Saw") # Replace with function body.
