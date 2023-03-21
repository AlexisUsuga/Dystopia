extends KinematicBody2D
var direction = Vector2()
var velocity = Vector2()
var gravity = 1900

var speed = 150
var saveDirec = 0
var object
var ubi
func _ready():
	pass

func _physics_process(delta):
	velocity.y = gravity*delta
	velocity.x = 0
	direction.x = int(Input.is_action_pressed("ui_right"))-int(Input.is_action_pressed("ui_left"))

	if direction.x == 1:
		saveDirec = 1
		$Ani.play("caminarDer")
		
		velocity.x = speed 
	elif direction.x == -1:
		saveDirec = -1
		$Ani.play("caminarIzq")
		velocity.x = speed*-1
	else:
		if saveDirec != 0:
			if saveDirec == -1:
				$Ani.play("ideDer")
			elif saveDirec == 1:
				$Ani.play("ideIzq")
			saveDirec = 0	
	velocity = move_and_slide(velocity,Vector2(),0)
	
	
func pruebasFallidas():
	pass
		#if Input.is_action_just_pressed("buttonAccion"):
		
	#	ubi.set_disabled(false)
#		gravity = -1900
#		velocity.y = gravity*delta 
#
	#elif ubi.disabled:
		 
		
		
	#	print(ubi)
		#tambien el yield se puede usar como temporizador ejemplo
		#yield(get_tree().create_timer(3),"timeout")   que pause el codigo y cree un temporizador que dure 3 segundos y no continue hasta que la señal de //fin de contador(timeout)//		
		#get_tree().quit() sirve para salir del juego total
		
		#get_parent obtiene el nodo padre y luego puede get_parent.get_nodo("nodo_hijo") asi se obtiene un nodo hijo desde el nodo padre
		#se puede agarrar un nodo desde la funcion get_node(se le da el nombre del nodo)
		
		#$efecto.interpolate_property(el objeto al que le aplicara la animacion(self a el mismo){para mi el nodo ubicacion},la propiedad que desea modificar{"position"},empezar en{0,0},finalizar en{100,100},tiempo que tarda en hacer la animacion{10seg},la trancicion inicial,la trancicion final
		#$efecto.start()
		
		#yield($efecto,"tween_completed") este metodo sirve para detener el codigo hasta que se ejecute la señal o finalize del primer parametro(nodo,metodo) 
		#object = $rC.get_collider()
	#if object != null:
	#	print( object.get_name())
		#yield(animate(),"tween_completed")
		#yield(get_tree().create_timer(1.0), "timeout")
	#velocity.x = 0
	#ubi = get_tree().get_nodes_in_group("ubicacion")[0].get_children()[0]
	
