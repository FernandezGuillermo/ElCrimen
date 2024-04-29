extends Node2D

var sunset:bool = false
var dayLight:bool = false
var night:bool = false

func _ready():
	$SonidoCiudad.play()
	
func clock():
	#seteo el reloj 
	var hour = OS.get_time()["hour"]
	var minute = OS.get_time()["minute"]
	var seconds = OS.get_time()["second"]
	
	#hago visible el reloj
	$Clock.visible = true
	$Clock.text = String(hour) + ":" + String(minute) + ":" + String(seconds)
	
	#detect time of the day
	if hour >= 0 and hour < 12:
		$Sunset.visible = true
		sunset = true
	elif hour >= 12 and hour <= 18:
		$DayLight.visible = true
		dayLight = true
	elif hour >= 18 and hour <= 24:
		$NightLight.visible = true
		night = true

func _on_update_timeout():
	clock()

func _on_Restaurant_mouse_entered():
	$CartelRestaurant.visible = true
	if sunset:
		$CartelRestaurant/textRestaurant.text = "Restaurant - Abierto las 24hs Ruth: Por la tarde escuche como que si algo se arrastraba y a las 1 escuche el grito de una persona" 
	if dayLight:
		$CartelRestaurant/textRestaurant.text = "Restaurant - Abierto las 24hs Ruperto: Todos los vecino estaban en el edificio despues que ocurrio el asesinato todos salieron."
	if night:
		$CartelRestaurant/textRestaurant.text = "Restaurant - Abierto las 24hs Rosalia: Anoche vi llegar a ese hombre como siempre a las 20hs /n/ Antonio: Escuche algunos ruidos a las 19:30 un golpe seco"

func _on_Restaurant_mouse_exited():
	$CartelRestaurant.visible = false
	
func _on_Hall_mouse_entered():
	$CartelHall.visible = true
	if sunset:
		$CartelHall/textHall.text = "Hall - Abierto las 24hs Recepcionista: Anoche se realizo un fiesta en la terraza habia 5 personas bebiendo y escuchando musica hasta que se escucho el grito."
	if dayLight:
		$CartelHall/textHall.text = "Hall - Abierto las 24hs Recepcionista: La persona que vivia en el primer piso era una excelente persona no creo que alguien lo quiera matar."
	if night:
		$CartelHall/textHall.text = "Hall - Abierto las 24hs Recepcionista: El grito se escucho a las 1, enseguida llame a la policia quise entrar al departamento pero estaba la llave puesta y no pude abrir"	
	
func _on_Hall_mouse_exited():
	$CartelHall.visible = false

func _on_FirstFloor_mouse_entered():
	$Cartel1Piso.visible = true
	if sunset: 
		$Cartel1Piso/text1Piso.text = "Inquilino 1er Piso Raul: LLegue a mi casa alrededor de las 17hs mire un partido de futbol mientras comia cerca de las 20:30 hs me acoste a dormir."
	if dayLight:
		$Cartel1Piso/text1Piso.text = "Inquilino 1er Piso Raul: Llame al recepcionista porque sentia ruidos sobre el cielorraso no se si era la cañeria o algo estaba atrapado ahi."
	if night:
		$Cartel1Piso/text1Piso.text = "Inquilino 1er Piso Raul: A las 12:45hs me desperte porque no podia dormir por los ruidos de la fiesta de la terraza fui a la cocina y senti un ruido extraño como si algo cayera."
func _on_FirstFloor_mouse_exited():
	$Cartel1Piso.visible = false

func _on_SecondFloor_mouse_entered():
	$Cartel2Piso.visible = true
	if sunset:
		$Cartel2Piso/text2Piso.text = "Inquilino 2do Piso Roberto: Estuve estudiando toda la mañana pero no pude concentrame, no se como se me escapo."
	if dayLight:
		$Cartel2Piso/text2Piso.text = "Inquilino 2do Piso Roberto: Antes de irme a la facultad le di de comer a mis mascotas."
	if night:
		$Cartel2Piso/text2Piso.text = "Inquilino 2do Piso Roberto: A la noche me desperte con el grito pobre Raul era un persona excelente todos ayudamos a abrir la puerta pero no pudimos."
		
func _on_SecondFloor_mouse_exited():
	$Cartel2Piso.visible = false
	
func _on_Terrace_mouse_entered():
	$CartelTerraza.visible = true
	if sunset:
		$CartelTerraza/textTerraza.text = "La terraza se utiliza para eventos pero muchas veces se realizan fiestas donde se descontrola todo."
	if dayLight:
		$CartelTerraza/textTerraza.text = "Fiestero 1: La fiesta fue un descontrol habia muchas cosas para tomar y la musica estaba excelente nos asustamos cuando vino la policia pensamos que nos venian a arrestar."
	if night:
		$CartelTerraza/textTerraza.text = "Fiestero 2: Mucha gente que no estaba invitada vino y se fue tambien estuve el recepcionista enojado porque los vecinos se habian quejado."
		
func _on_Terrace_mouse_exited():
	$CartelTerraza.visible = false
	
func _on_BookStore_mouse_entered():
	$CartelBookstore.visible = true
	if sunset:
		$CartelBookstore/textBookstore.text = "Libreria - abierta de 8 a 12 y 16 a 20 Roger: Raul era una excelente persona y un excelente lector siempre venia a mi tienda en busca de algun libro o solo para charlar un rato."
	if dayLight: 
		$CartelBookstore/textBookstore.text = "Libreria - abierta de 8 a 12 y 16 a 20 Roger: Conozco a todas la personas del edificio el chico del segundo piso le encantan los libros sobre especies raras creo que tiene alguna de mascota."
	if night:
		$CartelBookstore/textBookstore.text = "Libreria - abierta de 8 a 12 y 16 a 20 Roger: Anoche fui a la fiesta de la terraza pero me fui rapido creo que eran las 12:30 ya se estaba muy cansado."

func _on_BookStore_mouse_exited():
	$CartelBookstore.visible = false
	
func _on_Neighbor1_mouse_entered():
	$CartelVecino1.visible = true
	if sunset:
		$CartelVecino1/textVecino1.text = "Vecina 1 - Rosario (Estudiante de Agronomia): Escuche que llego la policia y vi por la ventana todos los vecinos estaban en la vereda todos estaban angustiados."
	if dayLight:
		$CartelVecino1/textVecino1.text = "Vecina 1 - Rosario (Estudiante de Agronomia): Del edificio conozco a Roberto porque estudiamos en la misma Universidad se que le gustan las arañas y las serpientes."
	if night:
		$CartelVecino1/textVecino1.text = "Vecina 1 - Rosario (Estudiante de Agronomia): Hace unos dias me cruce a Roberto me conto que andaba preocupado porque habia perdido unas de sus mascotas."
		
func _on_Neighbor1_mouse_exited():
	$CartelVecino1.visible = false

func _on_Neighbor2_mouse_entered():
	$CartelVecino2.visible = true
	if sunset:
		$CartelVecino2/textVecino2.text = "Vecino 2 - Rodrigo (Escritor): Esa noche estaba escribiendo no podia concentrarme porque habia una fiesta en la terraza del edificio de al lado, a Raul no lo conocia la verdad pero todos decian que era una excelente persona quien habra sido el responsable."
	if dayLight: 
		$CartelVecino2/textVecino2.text = "Vecino 2 - Rodrigo (Escritor): Del edificio no conozco a nadie, pero del vecinadario conozoco a Roger porque voy siempre a comprale libros con el hablamos del tema me dice que en ese edificio vive gente muy rara."
	if night:
		$CartelVecino2/textVecino2.text = "Vecino 2 - Rodrigo (Escritor): He estado leyendo la novela ...... que plow twist."
		
func _on_Neighbor2_mouse_exited():
	$CartelVecino2.visible = false

func _on_button_escenaCrimen_mouse_entered():
	$EscenaCrimen.visible = true

func _on_button_escenaCrimen_mouse_exited():
	$EscenaCrimen.visible = false

func _on_button_hall_mouse_entered():
	$Recepcionista.visible = true

func _on_button_hall_mouse_exited():
	$Recepcionista.visible = false

func _on_button_terraza_mouse_entered():
	$Terraza.visible = true

func _on_button_terraza_mouse_exited():
	$Terraza.visible = false

func _on_button_2Piso_mouse_entered():
	$SegundoPiso.visible = true
	
func _on_button_2Piso_mouse_exited():
	$SegundoPiso.visible = false
