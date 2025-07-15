extends Node
@onready var grid = $"Zähne/GridContainer"
@onready var default_color = "#ffffff"
@onready var select_color = "#b9ba00"
@onready var teeth = Array()
@onready var selected_tooth: Node2D

func set_teeth(control_nodes: Array):
	for x in range(control_nodes.size()):
		teeth.append(control_nodes[x])
	print(teeth)
	for y in range(teeth.size()):
		print(teeth[y])

func set_selected_tooth(tooth: Node2D):
	selected_tooth = tooth


func set_default_colors():
	var all_teeth = grid.get_children()
	print(all_teeth)
