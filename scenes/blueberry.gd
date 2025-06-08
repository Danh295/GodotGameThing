extends Area2D

@export var fruit_type: String = "blueberry"

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", _on_body_entered)

func _on_body_entered(body):
	if body.name == "Waiter": 
		body.pick_up_fruit(fruit_type)
		queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
