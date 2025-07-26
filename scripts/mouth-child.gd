extends GridContainer


func _ready() -> void:
	var children = self.get_children()
	Zahnmanager.set_child_teeth(children)
