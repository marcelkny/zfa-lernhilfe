extends Control
@onready var colorRect = $ColorRect
@onready var button = $Button
@onready var label = $Label
@export var label_number: String = "12"

func _ready() -> void:
	label.text = label_number

func _physics_process(_delta: float) -> void:
	
	if Zahnmanager.child_selected_tooth != self.name:
		label.hide()
		colorRect.color = Zahnmanager.default_color
	else:
		label.show()
		colorRect.color = Zahnmanager.select_color


func _on_button_pressed() -> void:
	Zahnmanager.change_selected_mouth("child")
	Zahnmanager.set_selected_child_tooth(self.name)
