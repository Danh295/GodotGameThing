extends CharacterBody2D

const SPEED = 300.0
var moving = false
var current_fruit: String = ""

@onready var sprite = $Sprite2D

func _process(delta):
	if moving:
		var motion = Vector2(SPEED * delta, 0)
		var collision = move_and_collide(motion)
		if collision:
				moving = false

func start_moving():
	moving = true

func pick_up_fruit(fruit: String):
	current_fruit = fruit
	update_sprite_with_fruit(fruit)

func update_sprite_with_fruit(fruit: String):
	match fruit:
		#"banana":
			#sprite.texture = preload("res://assets/character_with_banana.png")
		"blueberry":
			print("updating sprite to blueberry")
			sprite.texture = preload("res://assets/Seagull-with-blueberry.png")
		#"orange":
			#sprite.texture = preload("res://assets/character_with_orange.png")
