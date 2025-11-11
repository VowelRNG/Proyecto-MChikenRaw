function SSuperPunch(Ken, Superpunch){
	instance_create_layer(Ken.x+20,Ken.y,"Instances",Superpunch)
	alarm[4] = 300;
	if(Ken.image_xscale == 1){
	Superpunch.hspeed = 10;
		
	}else{
	Superpunch.hspeed = -10;
	}
	
}


OnGround = true;
RCdash = 15;
RCdisponible = true;
RCdashing = false;
Atacando = false;
PuedeAtacar = true;
Ulti = false;
Herido = false;
Vida = 10;
Invincible = false;
Controlled = noone;
dashing = false;
dashDisponible = true;
//lvl states
muerto = false;

global.lvlt = false;
global.lvl1 = false;
global.lvl2 = false;
global.lvl3 = false;
global.lvl4 = false;
global.lvlboss = false;


 
gravedad= 0.5
velocidad_vertical= 0
velocidad_vertical += gravedad
instancePlace = instance_place(x, y + vspeed, Wall);
salto = false;


