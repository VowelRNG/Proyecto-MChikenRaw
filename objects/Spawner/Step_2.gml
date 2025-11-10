

if(vida <= 0){
	instance_destroy()
	Ken.Controlled = noone
	Ken.sprite_index = Kensp;
	Ken.vspeed = 0
		Ken.hspeed = 0
        Ken.Controlled = noone;
		Ken.sprite_index = KenDamagedsp
		Ken.alarm[3] = 20;
			if(Ken.image_xscale = -1){
		Ken.hspeed += 5;	
		Ken.vspeed -= 10;
		}else{
		Ken.hspeed -= 5;	
		Ken.vspeed -= 10;
		}
    }