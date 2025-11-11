

if(place_free(x,y+1)){
	vspeed += gravedad;
	
}

if(vida <= 0){
	Muerto = true;
	Ken.Controlled = noone
}



	
if(facing == "l"){
hspeed = -2;
image_xscale = -1;

}else if(facing == "r"){
	
hspeed = 2;
image_xscale = 1;
}else{
hspeed = 0;
}


if(place_meeting(x-30,y,Golpe) || place_meeting(x+30,y,Superpunch)){
	alarm[0] = 20;
	image_xscale = 1;
	vida -= 1;
}
if(place_meeting(x+30,y,Golpe) || place_meeting(x+30,y,Superpunch)){
	alarm[0] = 20;
	image_xscale = -1;	
	vida -= 1;
}

if(instance_exists(Ken)){
if(Ken.Controlled == self){
	sprite_index = FFDamagedsp
	alarm[0] = 20;
	vida -= 1
}
}


if (x < 0 || x > room_width || y < 0 || y > room_height)
{

    instance_destroy(self);
}