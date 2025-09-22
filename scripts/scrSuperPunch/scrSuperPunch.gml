function scrSuperPunch(){
	if(!instance_exists(Superpunch)){
		instance_create_layer(Ken.x,Ken.y,"Instances",Superpunch)
		with Inputs{
		alarm[1] = 90;	
			
		}
		
	}
}