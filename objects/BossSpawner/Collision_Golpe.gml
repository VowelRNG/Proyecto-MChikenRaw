puededisparar = false;
instance_destroy(Golpe);

if(puededisparar = false){

instance_create_layer(x,y,"Instances",Minion)
	Minion.vspeed -=20;
	Minion.sprite_index = minionDamagedsp;
	alarm[0] = 30;
	
}