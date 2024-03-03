extends Node2D


var current_control = null


var login_makeacount = "res://Panels/log_in_make_acount.tscn"
var login = "res://Panels/LogIn.tscn"
var newacount = "res://Panels/NewAcount.tscn"
var main = "res://Panels/Main.tscn"
var make = "res://Panels/make.tscn"
var manage = "res://Panels/manage.tscn"
var User = "res://Panels/user.tscn"
var Mmakeymake = "res://Panels/Makeymake.tscn"
var paneldict = {
	"log/acount" : login_makeacount,
	"log" : login,
	"newacount" : newacount,
	"main" : main,
	"make" : make,
	"manage" : manage,
	"user": User,
	"makeymake" : Mmakeymake
}


func _ready():
	switchpanel("log/acount")
	Data.brain = self
	
	
func switchpanel(newpanel): 
	if current_control!=null:
		current_control.queue_free()
	var newpanelinstance = load(paneldict[newpanel]).instantiate()
	current_control = newpanelinstance
	$Control.add_child(newpanelinstance)
	


