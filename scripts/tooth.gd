extends Control
@onready var colorRect = $ColorRect
@onready var button = $Button

func _physics_process(_delta: float) -> void:
	
	if Zahnmanager.selected_tooth != self.name:
		colorRect.color = Zahnmanager.default_color
	else:
		colorRect.color = Zahnmanager.select_color


func _on_button_pressed() -> void:
	Zahnmanager.set_selected_tooth(self.name)
