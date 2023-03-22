extends KinematicBody2D
#var direction = Vector2()
#var velocity = Vector2()
#var gravity = 1900
#var speed = 150
#var saveDirec = 0


var jugador = null
var move = Vector2.ZERO
var velocity = 100

func _physics_process(delta):
	move = Vector2.ZERO
	
	if jugador != null:
		move = position.direction_to(Vector2(jugador.position.x,self.position.y))
	else:
		move = 	Vector2.ZERO
	move = move.normalized()*velocity
	move = move_and_slide(move)
#	velocity.x = 0
#	velocity.y = gravity*delta 
#	direction.x = int(Input.is_action_pressed("ui_right"))-int(Input.is_action_pressed("ui_left"))
#
#	if direction.x == 1:
#		saveDirec = 1
#		$Ani.play("caminarDer")
#
#		velocity.x = speed 
#	elif direction.x == -1:
#		saveDirec = -1
#		$Ani.play("caminarIzq")
#		velocity.x = speed*-1
#	else:
#		if saveDirec != 0:
#			if saveDirec == -1:
#				$Ani.play("ideDer")
#			elif saveDirec == 1:
#				$Ani.play("ideIzq")
#			saveDirec = 0	
#	if $Ani.animation == "ideDer" or $Ani.animation == "ideIzq":
#		$Ani.play("IDE")
#	velocity = move_and_slide(velocity,Vector2(),0)


func _areaEnemyEntered(body):
	if body != self:
		jugador = body


func _areaEnemyExited(body):
	jugador = null
	
