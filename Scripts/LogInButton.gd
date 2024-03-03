extends Button

@export var switchto : String = "null" 

@export var disabledchange = false

func press():
	
	if Data.brain != null and switchto != "null" and disabledchange == false:
		if(Data.users.find([get_parent().get_node("Username").get_text(),get_parent().get_node("Password").get_text()])!=-1):
			print("hi")
			Data.currentuser = get_parent().get_node("Username").get_text()
			Data.brain.switchpanel(switchto)
			
		else:
			get_parent().get_node("Username").set_text("")
			get_parent().get_node("Password").set_text("")
			get_parent().get_node("InvalidLogIn").set_modulate("0b0014")
