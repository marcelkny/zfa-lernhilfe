extends Control
@export var label_number: String = "12"

@onready var cur_texture_pressed = self.texture_pressed
@onready var cur_texture_normal = self.texture_normal

func _ready() -> void:
	pass

func _physics_process(_delta: float) -> void:
	if Zahnmanager.child_selected_tooth == label_number and Zahnmanager.selected_mouth == "child":
		self.texture_normal = cur_texture_pressed
	else:
		self.texture_normal = cur_texture_normal
		

func set_current_tooth_selected():
	Zahnmanager.change_selected_mouth("child")
	Zahnmanager.set_selected_tooth(self.name)


func _on_button_down() -> void:
	set_current_tooth_selected()
