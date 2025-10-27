vida -= 1;
Herido = true;

if(image_xscale == -1){
hspeed -= 10;	
vspeed -= 10;
	
}else{
hspeed += 10;	
vspeed -= 10;
}

instance_destroy(Golpe)