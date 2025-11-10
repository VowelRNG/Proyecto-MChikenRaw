
	
	
	

if(Invincible == true){
mask_index = -1;

}



if(Vida <= 0){
	muerto = true;
	room_restart()
	room_goto(muerteRoom)
instance_destroy()
	
}
	
//movimiento

Botonsalto = keyboard_check_pressed(vk_space);
botonDerecha = keyboard_check(ord("D"));
botonIzq = keyboard_check(ord("A"));

if (botonDerecha && !RCdashing && Herido == false) {
    if (place_free(x + 4, y) && instance_place(x + 4, y, Wall) == noone) {
        hspeed = 7;
		if(salto == true && !Atacando){
		sprite_index = KenWalksp
		}
        image_xscale = 1;
		

    } else {
        
        while (!place_free(x + 1, y)) {
            x -= 1;
			
        }
    }
} else if (botonIzq && !RCdashing && Herido == false) {
    if (place_free(x - 4, y) && instance_place(x - 4, y, Wall) == noone) {
        hspeed = -7;
		if(salto == true && !Atacando){
		sprite_index = KenWalksp
		}
        image_xscale = -1;

    } else {
       
        while (!place_free(x - 1, y)) {
            x += 1;
        }
    } 
}else if(!Herido && !RCdashing && !Atacando){
	
	hspeed = 0;
	if(salto){
	sprite_index = Kensp;
	}
}

if(RCdashing == false){
	
vspeed += gravedad;
}
if (Botonsalto && salto) {
    vspeed = -13;  
    salto = false;
	if(Herido == false){
		sprite_index = KenSaltosp;
	}
	
}


instancia_coso = instance_place(x, y + vspeed, Wall);


if (vspeed < 0) {
    if (instancia_coso == noone) {
        y += vspeed;
    } else {
       
        while (instance_place(x, y + 1, Wall) != noone) {
            y -= 1;
        }
        vspeed = 0;
    }
}


if (vspeed > 0) {
    if (instancia_coso == noone) {
        y += vspeed;
    } else {
       
        while (instance_place(x, y + 1, Wall) != noone) {
            y -= 1;
        }
        vspeed = 0;
        salto = true;
		
    }
}
 
	
	


//Ataque


if(keyboard_check_pressed(ord("P")) && Herido == false && Atacando == false && Ulti == false){
	Atacando = true;
	RCdisponible = false;
	alarm[2] = 10;
	Ken.sprite_index = KenPsp;
	if(Ken.image_xscale == 1 && PuedeAtacar == true){
	instance_create_layer(x+10,y,"Instances", Golpe)
	
	
	
	
	}else if(Ken.image_xscale == -1 && PuedeAtacar == true){
	instance_create_layer(x-10,y,"Instances", Golpe)
	
		Golpe.image_xscale = -1;
	}
}

	
	



if(Atacando == true && Herido == false && RCdashing == false){
	hspeed = 0;
	if(Ken.image_xscale = -1){
	x -= 1;
}else {
	x += 1;
}
}

//Rage Control

if(keyboard_check_pressed(ord("O")) && Herido == false && RCdisponible == true){
	RCdashing = true;
	RCdisponible = false;
	alarm[0] = 20;
	alarm[1] = 60;
}

if(RCdashing == true && Herido == false){
Invincible = true;
	
	alarm[1] = 7;

vspeed = -0.1;

	
Ken.sprite_index = KenRCsp;

	if(Ken.image_xscale == 1 && !instance_exists(RageControl)){
		hspeed = 15;
		RCdisponible = false;
		
	instance_create_layer(x+80,y,"Instances", RageControl)
	RageControl.hspeed = RCdash
	
	
	}else if(Ken.image_xscale == -1 &&  !instance_exists(RageControl)){
		hspeed = -15;
		RCdisponible = false;
	instance_create_layer(x-80,y,"Instances", RageControl)
		RageControl.hspeed = Ken.hspeed
		RageControl.image_xscale = -1;
	}
}

//Rage Controlled

if (Controlled != noone) {
	instance_destroy(RageControl)
    Invincible = true;
	Herido = false;
	RCdisponible = false;
	RCdashing = false;
	sprite_index = Controllingsp;
	hspeed = 0;
	vspeed = 0;
    x = Controlled.x;
    y = Controlled.y - sprite_height;

}else if(Controlled == noone){
	

RCdisponible = true;
}







//camera follow

var cam = view_camera[0];

var camx = x - (camera_get_view_width(cam) / 2);
var camy = y - (camera_get_view_height(cam) / 2);

camx = clamp(camx, 0, room_width - camera_get_view_width(cam));
camy = clamp(camy, 0, room_height	 - camera_get_view_height(cam));


camera_set_view_pos(cam, camx, camy);


if(Ulti == true){

	sprite_index = KenSuperPunchsp;
	
}


if (x < 0 || x > room_width || y < 0 || y > room_height)
{
	muerto = true;
    instance_destroy(self);
	room_goto(muerteRoom)
}

//inputs

if(keyboard_check_pressed(vk_escape)){
room_goto(Nivel1)	
}



