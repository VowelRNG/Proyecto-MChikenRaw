vida = 30;
if(instance_exists(Boss)){
	
audio_stop_all()
audio_play_sound(Boss1BattleTheme,infinity,true)

}

estados_posibles = ["ATAQUEL", "ATAQUER", "CLAP"];
estado_actual = 0;
estado_anterior = estado_actual;
tiempo_cambio = 300;
contador = 0;

