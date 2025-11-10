solid = false

	


if(RCdashing == false && Controlled == noone && Invincible == false){
Herido = true;
alarm[3] = 30;

}

if(Invincible == false){ 
	Vida -= 1
	vspeed = 0;
	hspeed = 0;
	alarm[3] = 20;
	alarm[9] = 60;
sprite_index = KenDamagedsp;
Invincible = true;
if(image_xscale == -1){
	
hspeed += 7;	
vspeed -= 7;
}else{
hspeed -= 7;
vspeed -= 7;
}
	}


	


