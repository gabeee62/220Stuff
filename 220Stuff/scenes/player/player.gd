extends CharacterBody2D

var direction: float
var move_speed: float

func _process(delta):
	movement(delta)


func movement(_delta_var):
	var direction_name = ["left", "right"]
	var direction_value = [-1.0, 1.0]
	var left_or_right = false
	for i in direction_name:
		if Input.is_action_pressed(i):
			direction = direction_value[direction_name.find(i)]
			left_or_right = true
	if not left_or_right:
		direction = 0.0
	
	velocity.x = direction * move_speed
	move_and_slide()
