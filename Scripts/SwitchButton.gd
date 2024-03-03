extends Button

@export var switchto : String = "null" 

@export var disabledchange = false

func press():
	print("hi")
	if Data.brain != null and switchto != "null" and disabledchange == false:
		Data.brain.switchpanel(switchto)
