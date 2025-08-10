extends Control

var current_label_pos:Vector2 = Vector2(0,0)
var teeth = Array()
@onready var number_label = $NumberLabel

func _ready() -> void:
	number_label.hide()
	var children = self.get_children()
	for x in range(children.size()):
		teeth.append(children[x])
	print("teeth in mout-adult", teeth)
	Zahnmanager.set_child_teeth(children)
	
func _physics_process(_delta: float) -> void:
	label_positioner()

func label_positioner():
	var number_label_text = "0"
	for x in range(teeth.size()):
		var zahn = Zahnmanager.child_selected_tooth
		if Zahnmanager.child_selected_tooth == teeth[x].name:
			current_label_pos = DatabaseManager.get_tooth_position_by_name(zahn)
			number_label_text = Zahnmanager.child_selected_tooth
			number_label.show()
	number_label.position = current_label_pos
	number_label.text = number_label_text
	
