extends GridContainer


func _ready() -> void:
	var children = self.get_children()
	print(children)
	Zahnmanager.set_teeth(children)
