extends Sprite2D


func _process(delta):
	# Check for player input (e.g., arrow keys or WASD)
	var movement = Vector2(0, 0)
	if Input.is_action_pressed("ui_right"):
		movement.x += 1
	if Input.is_action_pressed("ui_left"):
		movement.x -= 1
	if Input.is_action_pressed("ui_up"):
		movement.y -= 10

	# Normalize the movement vector to maintain consistent speed
	# movement = movement.normalized() * speed

	# Update the sprite's position based on input
	position += movement * delta
