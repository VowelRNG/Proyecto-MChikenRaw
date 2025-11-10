
if(vida <= 0){
instance_destroy()	
}

if(instance_exists(Ken) && room != BossBattle1){
	
if(facing == "l"){
hspeed = 2;
image_xscale = 1;

}else if(facing == "r"){
hspeed = -2;
image_xscale = -1;
}
}else{
hspeed = 0;
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


if (x < 0 || x > room_width || y < 0 || y > room_height)
{
    // El objeto está fuera de la room
    instance_destroy(self);
}
