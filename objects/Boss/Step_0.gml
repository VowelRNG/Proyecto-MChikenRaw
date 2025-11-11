




contador += 1;
if (contador >= tiempo_cambio) {
	
    contador = 0;
   estados_posibles = ["ATAQUEL", "ATAQUER"];
estado_actual = choose(estados_posibles[0], estados_posibles[1]);
}


if (estado_actual != estado_anterior) {
  
    estado_anterior = estado_actual;

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


 
}
}
