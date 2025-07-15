extends Control
@onready var colorRect = $ColorRect

func _physics_process(_delta: float) -> void:
	if Zahnmanager.selected_tooth != self:
		colorRect.color = Zahnmanager.default_color
	else:
		colorRect.color = Zahnmanager.select_color
