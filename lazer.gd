extends CharacterBody2D

@onready var animation = $AnimatedSprite2D

func _physics_process(delta):
	animation.play("idle")
