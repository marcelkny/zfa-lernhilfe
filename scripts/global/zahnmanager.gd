extends Node
@onready var default_color = "#ffffff"
@onready var select_color = "#00a5c6"

@onready var teeth = Array()
@onready var selected_tooth: String

@onready var child_teeth = Array()
@onready var child_selected_tooth: String

# adult or child
@onready var selected_mouth = "adult" 

func change_selected_mouth(mouth: String):
	print("selected: ", mouth)
	if mouth == "adult":
		child_selected_tooth = ""
	else:
		selected_tooth = ""
	selected_mouth = mouth

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

func set_child_teeth(teeth_nodes: Array):
	for x in range(teeth_nodes.size()):
		child_teeth.append(teeth_nodes[x].name)
	print(child_teeth)

func set_selected_child_tooth(tooth: String):
	child_selected_tooth = tooth
	for y in range(child_teeth.size()):
		if child_teeth[y] == selected_tooth:
			print(y)
	print(tooth)

func set_next_child_tooth_active():
	var num = 0
	for y in range(child_teeth.size()):
		if child_teeth[y] == child_selected_tooth:
			num = y+1
	if num > child_teeth.size() -1:
		num = 0
	child_selected_tooth = child_teeth[num]

func set_child_default_colors():
	var all_teeth = child_teeth
	print(all_teeth)
