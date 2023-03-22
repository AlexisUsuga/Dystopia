extends AnimatedSprite


func _physics_process(delta):
	if Globals.nearPlug == true:
		self.play("focus")
	else:
		self.play("default")




func _onBodyEntered(body):
	if body.get_name() == "player":
		Globals.nearPlug = true

func _onBodyExited(body):
	if body.get_name() == "player":
		Globals.nearPlug = false
