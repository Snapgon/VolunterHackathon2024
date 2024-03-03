extends Button



@export var disabledchange = false

func press():
	
	if Data.brain != null and disabledchange == false:
		var isinterested = []
		for interests in Data.interested:
			if interests[0] == Data.currentuser:
				isinterested = interests[1]
		print(isinterested)
		isinterested.append(get_parent().get_node("Name").get_text())
		disabled = true
	
