extends KinematicBody2D

var keys = {1:5432,2:2346,3:8765,4:7395}
signal animate
var velocity = 100
var lugar = null
func _ready():
	pass

func _physics_process(delta):
	pass



func _on_Area2D_body_entered(body):
#	if body != self:
#		lugar = body
	if body.get_name() == "player":
		$Tween.interpolate_property(self,"position",self.position,Vector2(-201,386),5,Tween.TRANS_LINEAR,Tween.EASE_OUT)
		$Tween.start()
		self.get_children()

		yield($Tween,"tween_completed") #este metodo sirve para detener el codigo hasta que se ejecute la señal o finalize del primer parametro(nodo,metodo) 
	
func pruebasDocumentacion():
	pass
	#$efecto.interpolate_property(el objeto al que le aplicara la animacion(self a el mismo){para mi el nodo ubicacion},la propiedad que desea modificar{"position"},empezar en{0,0},finalizar en{100,100},tiempo que tarda en hacer la animacion{10seg},la trancicion inicial,la trancicion final
	#print(self.global_position)
#func animate():
#	var tween = get_node("Tween")
#	tween.interpolate_property($Sprite, "position",
#		Vector2(0, 0), Vector2(100, 100), 1,
#		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
#	tween.start()
	


