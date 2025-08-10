extends Node

var database: SQLite

var has_delivered = false
func _ready():
	database = SQLite.new()
	database.path = "res://database/data.db"
	database.open_db()

func get_adult_teeth() -> Array:
	var data = database.select_rows("teeth","id_teethgroup = 1",["*"])
	if data.size() >= 1:
		return data
	else:
		return []

func get_child_teeth() -> Array:
	var data = database.select_rows("teeth","id_teethgroup = 2",["*"])
	if data.size() >= 1:
		return data
	else:
		return []

func get_tooth_by_name(name : String):
	var data = database.select_rows("teeth","name = {str}".format({"str": name}),["*"])
	if data.size() >= 1:
		return data[0]
	else:
		return null

func get_tooth_position_by_name(name : String) -> Vector2:
	var data = database.select_rows("teeth","name = {str}".format({"str": name}),["*"])
	if data.size() >= 1:
		return Vector2(data[0].position_x, data[0].position_y)
	else:
		return Vector2(0,0)
