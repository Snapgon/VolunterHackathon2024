extends Button

@export var switchto : String = "null" 

@export var disabledchange = false

func press():
	
	if Data.brain != null and switchto != "null" and disabledchange == false:
		var checkusernamearray = []
		for opportunities in Data.opportunities:
			checkusernamearray.append(opportunities[0])
		if(checkusernamearray.find(get_parent().get_node("Name").get_text()) == -1):
			print("hi")
			Data.opportunities.append([get_parent().get_node("Name").get_text(),get_parent().get_node("OptionButton").selected,get_parent().get_node("Date").get_text(),get_parent().get_node("Description").get_text(),get_parent().get_node("Website").get_text(),Data.currentuser])
			
			
			Data.brain.switchpanel(switchto)
			
		else:
			get_parent().get_node("Name Taken").set_modulate("0b0014")
