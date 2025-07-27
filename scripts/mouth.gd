extends Control


func _ready() -> void:
	var children = self.get_children()
	Zahnmanager.set_teeth(children)
