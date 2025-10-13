if(instance_exists(Ken)){

switch (Ken.image_xscale){
case 1:
SuperPunch = "SASDP"

break;
case -1:
SuperPunch = "SDSAP"

break;
	
}




if(input == SuperPunch){
	scrSuperPunch();
	
}

if(keyboard_check(ord("N"))){
	room_goto(BossBattle1)	
}

}