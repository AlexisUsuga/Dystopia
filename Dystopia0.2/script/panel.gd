extends Node2D
var verfEnteredDoor = false

func _physics_process(delta):
	if verfEnteredDoor == true:
		$panel.play("focus")
		if Input.is_action_just_pressed("buttonAccion"):
			$panelInterfaz.show()
	else:
		$panel.play("default")
	
		
		
		
		
		





func _on_area_body_entered(body):
	if body.get_name() == "player" or body.get_name() == "enemy":
		verfEnteredDoor = true


func _on_area_body_exited(body):
	if body.get_name() == "player" or body.get_name() == "enemy":
		verfEnteredDoor = false


func _on_Button_pressed():
	pass # Replace with function body.


func _onPressedButtonExid():
	$panelInterfaz.hide()
	
