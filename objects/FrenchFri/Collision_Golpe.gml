vida -= 1;
Herido = true;
alarm[0] = 10;

if(facing == "l"){
facing = "r";
	
}else if(facing == "r"){
facing = "l";
}

instance_destroy(Golpe)