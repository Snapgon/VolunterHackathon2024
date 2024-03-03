extends Button

@export var switchto : String = "null" 

@export var disabledchange = false

func press():
	
	if Data.brain != null and switchto != "null" and disabledchange == false:
		var checkusernamearray = []
		for user in Data.users:
			checkusernamearray.append(user[0])
		if(checkusernamearray.find(get_parent().get_node("Username").get_text()) == -1):
			print("hi")
			Data.users.append([get_parent().get_node("Username").get_text(),get_parent().get_node("Password").get_text()])
			Data.currentuser = get_parent().get_node("Username").get_text()
			Data.interested.append([get_parent().get_node("Username").get_text(), []])
			Data.brain.switchpanel(switchto)
			
		else:
			get_parent().get_node("Username").set_text("")
			get_parent().get_node("Password").set_text("")
			get_parent().get_node("Credentials Taken").set_modulate("0b0014")
