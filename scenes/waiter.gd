extends CharacterBody2D


const SPEED = 300.0
var moving = false

#func _ready():
	#print(get_path())

func _process(delta):
	if moving:
		var motion = Vector2(SPEED * delta, 0)
		var collision = move_and_collide(motion)
		if collision:
				moving = false

func start_moving():
	moving = true
