extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	var waiter = get_node("/root/Game/Waiter")  # Adjust this path!
	self.pressed.connect(func (): waiter.start_moving())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
