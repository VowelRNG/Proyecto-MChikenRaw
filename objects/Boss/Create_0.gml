vida = 700;
path_start(boss1head,6,path_action_restart,false)
if(instance_exists(Boss)){
	
	
audio_play_sound(Boss1BattleTheme,0,true)

}

estados_posibles = ["ATAQUEL", "ATAQUER", "CLAP"];
estado_actual = 0;
estado_anterior = estado_actual;
tiempo_cambio = 300;
contador = 0;

