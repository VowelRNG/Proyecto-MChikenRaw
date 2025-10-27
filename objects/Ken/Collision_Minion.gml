

if(RCdashing == false && Invincible == false){
Herido = true;
alarm[3] = 20;
Ken.Vida -= 1;
}

if(Herido == true && Invincible == false){
	vspeed = 0;
	hspeed = 0;
Ken.sprite_index = KenDamagedsp;
if(Minion.image_xscale = -1){
hspeed += 7;	
vspeed -= 7;
}else{
hspeed -= 7;	
vspeed -= 7;
}
	
}
