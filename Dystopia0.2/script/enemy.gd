extends KinematicBody2D
#var direction = Vector2()
#var velocity = Vector2()
#var gravity = 1900
#var speed = 150
#var saveDirec = 0


var jugador = null
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 503355b (mejoro la IA del enemigo)
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
<<<<<<< HEAD
=======
=======
var move = Vector2()
var velocity = 100
var typeStates = ["ide","patrollingLeft","patrollingRight"]
var state

func _physics_process(delta):
	
	#print($timer.get_time_left()) muestra los segundos que van pasando 
	move = Vector2.ZERO
	
	if jugador != null:			
		move = position.direction_to(Vector2(jugador.position.x,self.position.y))

	elif state ==  "ide":
		move = 	Vector2.ZERO
	elif state ==  "patrollingLeft":#izquierda
		move.x = -100
	elif state ==  "patrollingRight":#derecha
		move.x = velocity
	move = move.normalized()*velocity
	move = move_and_slide(move)
	
>>>>>>> e2789db (mejoro IA de enemigo)
>>>>>>> 503355b (mejoro la IA del enemigo)
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
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 503355b (mejoro la IA del enemigo)
	if body != self:
		jugador = body


func _areaEnemyExited(body):
	jugador = null
	
<<<<<<< HEAD
=======
=======
	#if body != self:
	if body.name == "player":	
		jugador = body
		if $Area2D/CollisionShape2D.get_position().x < 0:
			velocity = velocity*-1
		$timer.stop()


func _areaEnemyExited(body):
	
	if body.name == "player":
		if $Area2D/CollisionShape2D.get_position().x > 0:
			velocity= velocity*-1
		jugador = null
		$timer.start()
func _updateState():
	print("ya termine")
	state = typeStates[floor(rand_range(0,len(typeStates)))]
	
	if state == "patrollingLeft":
		if $Area2D/CollisionShape2D.get_position().x > 0:
			$Area2D/CollisionShape2D.position = $Area2D/CollisionShape2D.get_position()*-1
	elif state == "patrollingRight":
		if $Area2D/CollisionShape2D.get_position().x < 0:
			$Area2D/CollisionShape2D.position = $Area2D/CollisionShape2D.get_position()*-1
			
	
	
		
>>>>>>> e2789db (mejoro IA de enemigo)
>>>>>>> 503355b (mejoro la IA del enemigo)
