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


if (keyboard_check_pressed(vk_escape)) {
    global.anterioroom = room;
	global.pausado = true;
    room_goto(Roompausa);          
}
}

