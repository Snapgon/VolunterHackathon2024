extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	if Data.currentuser != null:
		text = "Current User: "+ Data.currentuser

