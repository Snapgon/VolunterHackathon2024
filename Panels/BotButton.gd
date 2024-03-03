extends "res://Scripts/LogOutButton.gd"

@export var disablescene = "nullalsdjals"
# Called when the node enters the scene tree for the first time.
func _enter_tree():
	
	if Data.brain.current_control.panelname == disablescene:
		disabled = true

