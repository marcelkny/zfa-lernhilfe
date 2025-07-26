extends Control


func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		var selected_mouth = Zahnmanager.selected_mouth
		if selected_mouth == "adult":
			Zahnmanager.set_next_tooth_active()
		else:
			Zahnmanager.set_next_child_tooth_active()


func _on_button_mouth_child_pressed() -> void:
	Zahnmanager.change_selected_mouth("child")


func _on_button_mouth_adult_pressed() -> void:
	Zahnmanager.change_selected_mouth("adult")
