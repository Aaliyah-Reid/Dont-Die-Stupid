extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	print("Area2D is ready soap")
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


func _on_input_event(viewport, event, shape_idx):
 # Replace with function body.
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		print("Clicked on Area2D soap")
