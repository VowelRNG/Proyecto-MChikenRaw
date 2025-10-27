

if(Ken.Vida <= 0){
instance_destroy()	
	
}



if(place_free(x,y+1) && RCdashing == false && dashDisponible == true){
	vspeed += gravedad;
	
}
if(keyboard_check(vk_space) && place_meeting(x,y+1,Wall)) {
	
	vspeed -= salto;
}

if(Herido == false){
if(keyboard_check(ord("A")) && RCdashing == false && dashDisponible == true){
	x -= velocidad;
	image_xscale = -1;
}

if(keyboard_check(ord("D")) && RCdashing == false && dashDisponible == true){
	x += velocidad;
	image_xscale = 1;
}
}

	
	


//Ataque


if(keyboard_check_pressed(ord("P")) && Herido == false && Atacando == false && Ulti == false){
	Atacando = true;
	
	alarm[2] = 10;
	Ken.sprite_index = KenPsp;
	if(Ken.image_xscale == 1){
	instance_create_layer(x+10,y,"Instances", Golpe)
	
	
	
	
	}else {
	instance_create_layer(x-10,y,"Instances", Golpe)
	
		Golpe.image_xscale = -1;
	}
}

	
	



if(Atacando == true && Herido == false && RCdashing == false){
	vspeed = -2;
	hspeed = 0;
	if(Ken.image_xscale = -1){
	x -= 3;
}else {
	x += 3;
}
}

//Rage Control

if(keyboard_check_pressed(ord("O")) && Herido == false && RCdisponible == true){
	RCdashing = true;
	RCdisponible = false;
	alarm[0] = 19;
	alarm[1] = 60;
}

if(RCdashing == true && Herido == false){
	Invincible = true;
	alarm[1] = 7;
vspeed = 0;
Ken.sprite_index = KenRCsp;

	if(Ken.image_xscale == 1 && !instance_exists(RageControl)){
		hspeed = +RCdash
	instance_create_layer(x+80,y,"Instances", RageControl)
	RageControl.hspeed = Ken.hspeed
	
	
	}else if(Ken.image_xscale == -1 &&  !instance_exists(RageControl)){
		hspeed = -RCdash
	instance_create_layer(x-80,y,"Instances", RageControl)
		RageControl.hspeed = Ken.hspeed
		RageControl.image_xscale = -1;
	}
}

//Rage Controlled

if (Controlled != noone) {
    Invincible = true;
	Herido = false;
	RCdisponible = false;
	sprite_index = Controllingsp;
    x = Controlled.x;
    y = Controlled.y - sprite_height;

    // Tecla para desmontar
    if ((keyboard_check_pressed(ord("I")) && Controlled != noone)|| FrenchFri.vida == 0) {
		RCdisponible = true;
		Herido = true;
		vspeed = 0
		hspeed = 0
        Controlled = noone;
		sprite_index = KenDamagedsp
		alarm[3] = 20;
		y -= 100
			if(Ken.image_xscale = -1){
		hspeed += 5;	
		vspeed -= 10;
		}else{
		hspeed -= 5;	
		vspeed -= 10;
		}
    }
}



//dash

	
if(keyboard_check_pressed(ord("I")) && keyboard_check_pressed(ord("D"))){

hspeed = 10;
vspeed = 0;
	
}



//camera follow

var cam = view_camera[0];

var camx = x - (camera_get_view_width(cam) / 2);
var camy = y - (camera_get_view_height(cam) / 2);

camx = clamp(camx, 0, room_width - camera_get_view_width(cam));
camy = clamp(camy, 0, room_height	 - camera_get_view_height(cam));


camera_set_view_pos(cam, camx, camy);



//inputs



