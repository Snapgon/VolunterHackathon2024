extends Button

@export var switchto : String = "null" 

@export var disabledchange = false

func press():
	get_tree().quit()
