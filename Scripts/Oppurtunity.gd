extends Control

var type = [
	"Volunteer Event",
	"Petition"
]
var thingnameasda = null
func set_text(thingname, thingtype):
	thingnameasda = thingname
	$VBoxContainer/Name.set_text(thingname)
	$VBoxContainer/Type.set_text(type[thingtype])


func _on_v_box_container_mouse_entered():
	print("ahskjdhaasjkd")
	if Data.brain.current_control!=null and thingnameasda!=null:
		Data.brain.current_control.dostuff(thingnameasda)
