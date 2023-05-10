extends CharacterBody2D

var speed = 80
var dir = 0
var flag = true

@onready var annimation = $AnimatedSprite2D

func _physics_process(delta):
	if dir == 0:
		flag = true
	
	annimation.play("walk")
	
	if dir != 100 and flag:
		$AnimatedSprite2D.flip_h = true
		velocity.x = speed
		dir += 1
	else:
		$AnimatedSprite2D.flip_h = false
		flag = false
		velocity.x = -speed
		dir -= 1
	
	move_and_slide()
