extends Button
@export var mouth_button_name: String
var color_inactive = "949494"
var color_active = "3fa4b4"
@onready var colorRect = $"../ColorRect"

func _physics_process(_delta: float) -> void:
	if Zahnmanager.selected_mouth == mouth_button_name:
		colorRect.color = color_active
	else:
		colorRect.color = color_inactive
