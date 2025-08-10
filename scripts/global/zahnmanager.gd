extends Node

@onready var teeth = Array()
@onready var selected_tooth: String = "-"

@onready var child_teeth = Array()
@onready var child_selected_tooth: String

# adult or child
@onready var selected_mouth = "adult" 

var current_tooth_number = "0"

func change_selected_mouth(mouth: String):
	selected_mouth = mouth

func set_teeth(teeth_nodes: Array):
	for x in range(teeth_nodes.size()):
		teeth.append(teeth_nodes[x].name)
	print(teeth)

func set_child_teeth(teeth_nodes: Array):
	for x in range(teeth_nodes.size()):
		child_teeth.append(teeth_nodes[x].name)
	print(child_teeth)

func set_selected_tooth(tooth: String):
	match selected_mouth:
		"child":
			child_selected_tooth = tooth
		"adult":
			selected_tooth = tooth
