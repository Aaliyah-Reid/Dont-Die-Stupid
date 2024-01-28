extends CharacterBody2D





var speed = 500
var scale_speed = 0.009



func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	# Normalize the input vector to have a consistent movement speed in all directions
	input_vector = input_vector.normalized()

	# Move the player
	velocity = input_vector * speed
	move_and_slide()

	# Scale the player
	if input_vector.y < 0:  # Moving up
		scale.x = max(scale.x - scale_speed * delta, 0.01)  # Shrink, but don't go below 0.5
		scale.y = max(scale.y - scale_speed * delta, 0.01)
	elif input_vector.y > 0:  # Moving down
		scale.x = min(scale.x + scale_speed * delta, 2.0)  # Grow, but don't go above 2.0
		scale.y = min(scale.y + scale_speed * delta, 2.0)
