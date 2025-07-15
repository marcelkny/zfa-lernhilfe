extends GridContainer


func _ready() -> void:
	var children = self.get_children()
	Zahnmanager.set_teeth(children)

func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		Zahnmanager.set_next_tooth_active()
