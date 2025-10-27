

if(place_free(x,y+1)){
	vspeed += gravedad;
	
}

if(vida <= 0){
	instance_destroy()
	Ken.Controlled = noone
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

if(instance_exists(Ken)){
if(Ken.Controlled == self){
	sprite_index = FFDamagedsp
	alarm[0] = 20;
	vida -= 1
}
}

