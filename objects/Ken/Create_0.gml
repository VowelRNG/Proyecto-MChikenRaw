function SSuperPunch(Ken, Superpunch){
	instance_create_layer(Ken.x+20,Ken.y,"Instances",Superpunch)
	alarm[4] = 300;
	if(Ken.image_xscale == 1){
	Superpunch.hspeed = 10;
		
	}else{
	Superpunch.hspeed = -10;
	}
	
}



gravedad = 0.5;
velocidad = 6;
salto = 15;
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
//Inputs
