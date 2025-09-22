

if(place_free(x,y+1)){
	vspeed += gravedad;
	
}



if(place_meeting(x-30,y,Golpe) || place_meeting(x+30,y,Superpunch)){
	alarm[0] = 20;
	sprite_index = FFDamagedsp;
	image_xscale = 1;
	vida -= 10;
}
if(place_meeting(x+30,y,Golpe) || place_meeting(x+30,y,Superpunch)){
	alarm[0] = 20;
	sprite_index = FFDamagedsp;
	image_xscale = -1;	
	vida -=10;
}

with Ken {
if(Controlled != noone){
	FrenchFri.sprite_index = FFDamagedsp
	FrenchFri.alarm[0] = 20;
}
	
}
