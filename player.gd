extends CharacterBody2D

var speed = 115
var floor = Vector2(0, -1)
var gravity = 125
var jump = 1250
		
@onready var animation = $AnimatedSprite2D

func _physics_process(delta):
	if is_on_floor() and Input.is_action_pressed("jump"):
		velocity.y = -jump
		animation.play("jump")
		
	if is_on_floor() and Input.is_action_pressed("doublejump"):
		velocity.y = -jump * 1.25
		
	if Input.is_action_pressed("runr"):
		velocity.x = speed * 2.3
		animation.play("run")
		$AnimatedSprite2D.flip_h = false
	elif Input.is_action_pressed("runl"):
		velocity.x = -speed * 2.3
		animation.play("run")
		$AnimatedSprite2D.flip_h = true
	elif Input.is_action_pressed("left"):
		velocity.x = -speed
		animation.play("walk")
		$AnimatedSprite2D.flip_h = true
	elif Input.is_action_pressed("right"):
		velocity.x = speed
		animation.play("walk")
		$AnimatedSprite2D.flip_h = false
	elif Input.is_action_pressed("attack"):
		velocity.x = 0
		animation.play("attack",3.0)
	else:
		velocity.x = 0
		animation.play("idle")
  
	velocity.y += gravity + delta
 
	move_and_slide()
