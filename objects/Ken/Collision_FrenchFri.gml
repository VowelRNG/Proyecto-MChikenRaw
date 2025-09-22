if(Invincible == true){
	exit;
}

if(RCdashing == false){
Herido = true;
alarm[3] = 20;
Ken.Vida -= 10;
}

if(Herido == true){
	vspeed = 0;
	hspeed = 0;
Ken.sprite_index = KenDamagedsp;
if(Ken.image_xscale = -1){
hspeed += 5;	
vspeed -= 5;
}else{
hspeed -= 5;	
vspeed -= 5;
}	
	
}
