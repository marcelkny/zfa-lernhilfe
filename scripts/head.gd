extends Control

@onready var tooth_child_container = $"mouth-child"
@onready var tooth_adult_container = $"mouth-adult"

func _physics_process(_delta: float) -> void:
	var selected_mouth = Zahnmanager.selected_mouth
	if selected_mouth == "child":
		tooth_child_container.show()
		tooth_adult_container.hide()
	else:
		tooth_child_container.hide()
		tooth_adult_container.show()


func _on_button_mouth_child_pressed() -> void:
	Zahnmanager.change_selected_mouth("child")


func _on_button_mouth_adult_pressed() -> void:
	Zahnmanager.change_selected_mouth("adult")
