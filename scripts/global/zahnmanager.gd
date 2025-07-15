extends Node
@onready var default_color = "#ffffff"
@onready var select_color = "#00a5c6"
@onready var teeth = Array()
@onready var selected_tooth: String

func set_teeth(teeth_nodes: Array):
	for x in range(teeth_nodes.size()):
		teeth.append(teeth_nodes[x].name)
	print(teeth)

func set_selected_tooth(tooth: String):
	selected_tooth = tooth
	for y in range(teeth.size()):
		if teeth[y] == selected_tooth:
			print(y)
	print(tooth)

func set_next_tooth_active():
	var num = 0
	for y in range(teeth.size()):
		if teeth[y] == selected_tooth:
			num = y+1
	if num > teeth.size() -1:
		num = 0
	selected_tooth = teeth[num]

func set_default_colors():
	var all_teeth = teeth
	print(all_teeth)
