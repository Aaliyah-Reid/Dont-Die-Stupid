extends Node2D



func _on_quit_pressed():
	get_tree().quit()


func _on_play_pressed():
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		#print("Clicked on Area2D soap")
		get_tree().change_scene_to_file("res://room_scene.tscn")
