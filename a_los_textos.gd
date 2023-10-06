extends Control


func _ready():
	$BoxContainer/Button/Label.text=tr("botonN",Powahuptas.Ideoma)
	$BoxContainer/Button2.text=tr("botonC",Powahuptas.Ideoma)
	$BoxContainer/Button3.text=tr("boton3",Powahuptas.Ideoma)
	$BoxContainer/Button4.text=tr("boton4",Powahuptas.Ideoma)
	$BoxContainer/Button5.text=tr("boton5",Powahuptas.Ideoma)
	$Button.text=tr("boton6",Powahuptas.Ideoma)
	$Button2.text=tr("boton62",Powahuptas.Ideoma)


func ver():
	$R.visible=true
	$BoxContainer.visible=false
	$R/Documental.visible=false
	$R/encadenado.visible=false
	$R/Nigga.visible=false
	$"R/Escueña".visible=false
	$R/robots.visible=false

func _on_button_pressed():
	$BoxContainer.visible=!$BoxContainer.visible
	$R.visible=false
	if !$BoxContainer.visible and !$R.visible:
		$TextEdit.visible=true
		$TextEdit.text=tr("explain",Powahuptas.Ideoma)
	else:$TextEdit.visible=false

func nigga_pressed():
	ver()
	$R/Nigga.visible=true
	if Powahuptas.N.has("N1"):$R/Nigga/TextEdit.text=tr("nigga1",Powahuptas.Ideoma)
	if Powahuptas.N.has("N2"):$R/Nigga/TextEdit2.text=tr("nigga2",Powahuptas.Ideoma)
	if Powahuptas.N.has("N3"):$R/Nigga/TextEdit3.text=tr("nigga3",Powahuptas.Ideoma)
	if Powahuptas.N.has("N4"):$R/Nigga/TextEdit4.text=tr("nigga4",Powahuptas.Ideoma)

func cadena_pressed():
	ver()
	if Powahuptas.C.has("C1"):$R/encadenado/TextEdit.text=tr("cadena1",Powahuptas.Ideoma)
	if Powahuptas.C.has("C2"):$R/encadenado/TextEdit2.text=tr("cadena2",Powahuptas.Ideoma)
	if Powahuptas.C.has("C3"):$R/encadenado/TextEdit3.text=tr("cadena3",Powahuptas.Ideoma)
	if Powahuptas.C.has("C4"):$R/encadenado/TextEdit4.text=tr("cadena4",Powahuptas.Ideoma)
	if Powahuptas.C.has("C5"):$R/encadenado/TextEdit5.text=tr("cadena5",Powahuptas.Ideoma)
	if Powahuptas.C.has("Cx"):$R/encadenado/TextEdit6.text=tr("cadenax",Powahuptas.Ideoma)
	if Powahuptas.C.has("Cxx"):$R/encadenado/TextEdit7.text=tr("cadenaxx",Powahuptas.Ideoma)
	$R/encadenado.visible=true

func ecuela_pressed():
	ver()
	if Powahuptas.E.has("E1"):$"R/Escueña/TextEdit".text=tr("escuelita1",Powahuptas.Ideoma)
	if Powahuptas.E.has("E2"):$"R/Escueña/TextEdit2".text=tr("escuelita2",Powahuptas.Ideoma)
	if Powahuptas.E.has("E3"):$"R/Escueña/TextEdit3".text=tr("escuelita3",Powahuptas.Ideoma)
	if Powahuptas.E.has("E4"):$"R/Escueña/TextEdit4".text=tr("escuelita4",Powahuptas.Ideoma)
	if Powahuptas.E.has("E5"):$"R/Escueña/TextEdit5".text=tr("escuelita5",Powahuptas.Ideoma)
	if Powahuptas.E.has("E6"):$"R/Escueña/TextEdit6".text=tr("escuelita6",Powahuptas.Ideoma)
	$R/"Escueña".visible=true

func documen4_pressed():
	if Powahuptas.D.has("D1"):$R/Documental/TextEdit.text=tr("documental1",Powahuptas.Ideoma)
	if Powahuptas.D.has("D2"):$R/Documental/TextEdit2.text=tr("documental2",Powahuptas.Ideoma)
	if Powahuptas.D.has("D3"):$R/Documental/TextEdit3.text=tr("documental3",Powahuptas.Ideoma)
	if Powahuptas.D.has("D4"):$R/Documental/TextEdit4.text=tr("documental4",Powahuptas.Ideoma)
	ver()
	$R/Documental.visible=true

func clavo_pressed():
	if Powahuptas.B.has("B1"):$R/robots/TextEdit.text=tr("creacion1",Powahuptas.Ideoma)
	if Powahuptas.B.has("B2"):$R/robots/TextEdit2.text=tr("creacion2",Powahuptas.Ideoma)
	if Powahuptas.B.has("B3"):$R/robots/TextEdit3.text=tr("creacion3",Powahuptas.Ideoma)
	if Powahuptas.B.has("B4"):$R/robots/TextEdit4.text=tr("creacion4",Powahuptas.Ideoma)
	if Powahuptas.B.has("B5"):$R/robots/TextEdit5.text=tr("creacion5",Powahuptas.Ideoma)
	if Powahuptas.B.has("B6"):$R/robots/TextEdit6.text=tr("creacion6",Powahuptas.Ideoma)
	ver()
	$R/robots.visible=true

func _on_box_container_visibility_changed():
	if $BoxContainer.visible:
		$Button2.visible=true
		$Button.text=tr("boton6",Powahuptas.Ideoma)
	if !$BoxContainer.visible:
		$Button.text=tr("boton62",Powahuptas.Ideoma)
		$Button2.visible=false

func _on_button_2_pressed():
	self.queue_free()
