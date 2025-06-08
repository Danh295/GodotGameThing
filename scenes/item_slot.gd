extends TextureButton

@onready var icon = $Icon

func set_item(item):
	icon.texture = item["texture"]
	
