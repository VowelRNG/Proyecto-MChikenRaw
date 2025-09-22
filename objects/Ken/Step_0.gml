

if(Ken.Vida <= 0){
instance_destroy()	
	
}



if(place_free(x,y+1) && RCdashing == false){
	vspeed += gravedad;
	
}
if(keyboard_check(vk_space) && place_meeting(x,y+1,Wall)) {
	
	vspeed -= salto;
}

if(Herido == false){
if(keyboard_check(ord("A"))){
	x -= velocidad;
	image_xscale = -1;
}

if(keyboard_check(ord("D"))){
	x += velocidad;
	image_xscale = 1;
}
}

//Ataque

if(keyboard_check_pressed(ord("P")) && Herido == false){
	Atacando = true;
	alarm[2] = 10;
	
	if(Ken.image_xscale == 1){
	instance_create_layer(x+10,y,"Instances", Golpe)
	Golpe.hspeed = Golpe.velocidad
	
	
	}else {
	instance_create_layer(x-10,y,"Instances", Golpe)
		Golpe.hspeed = -Golpe.velocidad
		Golpe.image_xscale = -1;
	}
	
	
	Ken.sprite_index = KenPsp;

}

if(Atacando == true && Herido == false){
	vspeed = 0;
	hspeed = 0;
	if(Ken.image_xscale = -1){
	x -= 5;
}else {
	x += 5;
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
	with FrenchFri{
		vida -= 1
	}
    Invincible = true;
	RCdisponible = false;
	instance_destroy(RageControl);
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
if(dashDisponible == true){
	alarm[7] = 30;
	
if(keyboard_check(ord("I")) && keyboard_check(ord("D"))){
	dashDisponible = false;
	RCdisponible = false;
	hspeed = RCdash;
	vspeed = 0;
	Invincible = true;
	alarm[6] = 10;
}

if(keyboard_check(ord("I")) && keyboard_check(ord("A"))){
	dashDisponible = false;
	RCdisponible = false;
	hspeed = -RCdash;
	vspeed = 0;
	Invincible = true;
	alarm[6] = 10;
}

if(keyboard_check(ord("I")) && keyboard_check(ord("W"))){
	dashDisponible = false;
	RCdisponible = false;
	vspeed = -RCdash;
	hspeed = 0;
	Invincible = true;
	alarm[6] = 10;
}

}
//camera follow

var cam = view_camera[0];

var camx = x - (camera_get_view_width(cam) / 2);
var camy = y - (camera_get_view_height(cam) / 2);

camx = clamp(camx, 0, room_width - camera_get_view_width(cam));
camy = clamp(camy, 0, room_height	 - camera_get_view_height(cam));


camera_set_view_pos(cam, camx, camy);



//inputs

if(keyboard_check(ord("A"))){
	if(keyboard_check(ord("S"))){
		if(keyboard_check(ord("D"))){
			if(keyboard_check(ord("P"))){
				instance_create_layer(x+20,y,"Instances",Superpunch);
					Superpunch.speed = 20;
			}
		}
	}
	
}

