extends Control
@onready var label = $Label
@export var label_number: String = "12"

func _ready() -> void:
	label.text = label_number

func _physics_process(_delta: float) -> void:
	pass


func _on_texture_button_pressed() -> void:
	Zahnmanager.change_selected_mouth("adult")
	Zahnmanager.set_selected_tooth(self.name)
