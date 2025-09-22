
if(vida <= 0){
instance_destroy()	
}

if(instance_exists(Ken)){
if(Ken.x > x && Herido == false && !place_free(x,y+1)){
	hspeed = velocidad
	image_xscale = -1
	
}else if(Ken.x < x && Herido == false && !place_free(x,y+1)){
	hspeed = -velocidad
	image_xscale = 1;
}
}else{
hspeed = 0;
}

if(place_meeting(x-30,y,Golpe)){
	Herido = true;
	alarm[0] = 60;
	sprite_index = minionDamagedsp;

}
if(place_meeting(x+30,y,Golpe)){
	Herido = true;
	alarm[0] = 60;
	sprite_index = minionDamagedsp;
}



if(place_meeting(x-30,y,Superpunch)){
	Herido = true;
	vida -= 10;
	alarm[0] = 60;
	sprite_index = minionDamagedsp;

}
if(place_meeting(x+30,y,Superpunch)){
	Herido = true;
	vida -= 10;
	alarm[0] = 60;
	sprite_index = minionDamagedsp;
}



if(place_free(x,y+1)){
	vspeed += gravedad;
	
}