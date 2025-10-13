if(vida <= 0){
	instance_destroy()
	instance_destroy(BossHandL)
	instance_destroy(BossHandR)
}

if(!instance_exists(Boss)){
audio_stop_sound(Boss1BattleTheme)	
}



contador += 1;
if (contador >= tiempo_cambio) {
	
    contador = 0;
   estados_posibles = ["ATAQUEL", "ATAQUER", "CLAP"];
estado_actual = choose(estados_posibles[0], estados_posibles[1], estados_posibles[2]);
}


if (estado_actual != estado_anterior) {
    // El estado cambió → ejecutar la lógica una sola vez
    estado_anterior = estado_actual;
// Ejecutar comportamiento según el estado actual
switch (estado_actual) {
    case "ATAQUEL":
	
      with BossHandL {
		path_end()
		path_start(AtaqueL,7,path_action_stop,false)
		sprite_index = BossPunosp
		image_xscale = -1
		alarm[0] = 240;
	  }
        break;

    case "ATAQUER":
	
      with BossHandR {
		path_end()
		path_start(AtaqueR,7,path_action_stop,false)
		sprite_index = BossPunosp
		alarm[0] = 240;
	 }
        break;


    case "ESQUIVAR":
	
        show_debug_message("El jefe esquiva");
        // código de esquivar
		
        break;

    case "CARGAR":
        show_debug_message("El jefe carga poder");
        // código de cargar
        break;
}
}
