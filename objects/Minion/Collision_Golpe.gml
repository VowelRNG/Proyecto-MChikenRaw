vida -= 1;
Herido = true;

if(facing == "l"){
facing = "r";
	
}else if(facing == "r"){
facing = "l";
}

instance_destroy(Golpe)