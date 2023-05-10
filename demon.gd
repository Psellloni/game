extends CharacterBody2D

var speed = 80
var dir = 0
var flag = true

func _physics_process(delta):
	if dir == 0:
		flag = true
	
	if dir != 100 and flag:
		$Demon.flip_h = false
		velocity.x = speed
		dir += 1
	else:
		$Demon.flip_h = true
		flag = false
		velocity.x = -speed
		dir -= 1
	
	move_and_slide()
