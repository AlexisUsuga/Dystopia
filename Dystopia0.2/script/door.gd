extends Node2D

var verfEnteredDoor = false


func _enteredDoor(body):
	print(body)
	print($StaticBody2D/AnimatedSprite.animation)
	if body.get_name() == "player" or body.get_name() == "enemy":
		verfEnteredDoor = true
			
func _exitedDoor(body):
	if body.get_name() == "player" or body.get_name() == "enemy":
		verfEnteredDoor = false
		print(verfEnteredDoor)
func _physics_process(delta):

	if verfEnteredDoor == true:
		if $StaticBody2D/AnimatedSprite.animation == "close":
			$StaticBody2D/AnimatedSprite.play("focusCloset")
		elif $StaticBody2D/AnimatedSprite.animation == "open" :
			$StaticBody2D/AnimatedSprite.play("focusOpen")

		if Input.is_action_just_pressed("buttonAccion"):
			if $StaticBody2D/AnimatedSprite.animation == "focusOpen":
				$StaticBody2D/AnimatedSprite.play("close")
				$StaticBody2D/CollisionShape2D.set_disabled(false)
			elif $StaticBody2D/AnimatedSprite.animation == "focusCloset":
				$StaticBody2D/AnimatedSprite.play("open")
				$StaticBody2D/CollisionShape2D.set_disabled(true)
	else:
		if $StaticBody2D/AnimatedSprite.animation == "focusCloset":
			$StaticBody2D/AnimatedSprite.play("close")
		elif $StaticBody2D/AnimatedSprite.animation == "focusOpen" :
			$StaticBody2D/AnimatedSprite.play("open")
			$StaticBody2D/AnimatedSprite.set_frame(2)
			
