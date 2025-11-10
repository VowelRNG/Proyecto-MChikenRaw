function scrSuperPunch(){
	if(instance_exists(Ken)){
	if(!instance_exists(Superpunch) && Ken.Ulti == false){
		Ken.Ulti = true;
		
		game_set_speed(30, gamespeed_fps);
		
		Ken.alarm[8] = 10;
		
			
	}
	
}
}