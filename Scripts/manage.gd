extends "res://Panels/PanelController.gd"
var type = [
	"Volunteer Event",
	"Petition"
]

@onready var slideroppurtunity = preload("res://Scripts/SliderOppurtunity.tscn")
func _ready():
	var isinterested = []
	for interests in Data.interested:
		if interests[0] == Data.currentuser:
			isinterested = interests[1]
	
	for oppurtunity in Data.opportunities:
		if isinterested.find(oppurtunity[0])!=-1:
			var newslider = slideroppurtunity.instantiate()
			$HBoxContainer/ScrollContainer/VBoxContainer.add_child(newslider)
			newslider.set_text(oppurtunity[0], oppurtunity[1])

func dostuff(nameofthingy):
	var setthing = null
	for thing in Data.opportunities:
		if(thing[0] ==nameofthingy ):
			setthing = thing
			break
	if setthing!=null:
		$HBoxContainer/ScrollContainer2/VBoxContainer/Name.set_text(setthing[0])
		$HBoxContainer/ScrollContainer2/VBoxContainer/Type.set_text(type[setthing[1]])
		$HBoxContainer/ScrollContainer2/VBoxContainer/Date.set_text(setthing[2])
		$HBoxContainer/ScrollContainer2/VBoxContainer/Descriptions.set_text(setthing[3])
		$HBoxContainer/ScrollContainer2/VBoxContainer/WebsiteLink.set_text(setthing[4])
		$"HBoxContainer/ScrollContainer2/VBoxContainer/Posted by".set_text("Posted by " + setthing[5])
