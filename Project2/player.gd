extends CharacterBody2D


const SPEED = 200
var current_dir = "none"


func _physics_process(delta):
	player_movment(delta)
	
func player_movment(delta):
		
	if Input.is_action_pressed("ui_right"):
		current_dir = "right"
		
		velocity.x = SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		current_dir = "left"
		
		velocity.x = -SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_down"):
		current_dir = "down"
		
		velocity.y = SPEED
		velocity.x = 0
	elif Input.is_action_pressed("ui_up"):
		current_dir = "up"
		
		velocity.y = -SPEED
		velocity.x = 0
	else:
		
		velocity.x = 0
		velocity.y = 0
		
	move_and_slide()
	

	
