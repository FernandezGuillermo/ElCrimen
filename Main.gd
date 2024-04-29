extends Control

func _ready():
	$backgroundMusic.play()

func clock():
	var hour = OS.get_time()["hour"]
	var minute = OS.get_time()["minute"]
	var seconds = OS.get_time()["second"]
	$TextClock.visible = true
	$TextClock.text = String(hour) + ":" + String(minute) + ":" + String(seconds)
	$Text1.visible = true 
	if hour == 1:
		$Text1.text = "Exactamente en este momento acaban de matar a una persona en el 1er piso de un edificio ve a investigar y resuelve el caso"
	else:
		$Text1.text = "Buenos dias detective segun los informes preliminares hace aproximadamente " + String(hour - 1) + " horas se ha cometido un asesinato en el primer piso de este edificio hay diversos testigos que vieron o escucharon algo. Le doy solo un consejo serie correcto que venga a distintos horarios a consultar a los distintos vecinos sobre este hecho todos han visto algo raro."
	

func _on_update_timeout():
	clock()
	$Begin.visible =  true

func _on_Begin_pressed():
	get_tree().change_scene("res://World.tscn")
