

timer += 1;

if (timer >= spawn_time) {
    if (instance_number(Minion) < max_enemigos) {
        instance_create_layer(x, y, "instances", Minion);
    }
    timer = 0;
}

if(vida<= 0){
	instance_destroy()
}

if(place_meeting(x,y,Golpe)){
	
	vida -= 1
	
}

if(place_meeting(x,y,Superpunch)){
	
	vida -= 1
	
}


if(instance_exists(Ken)){
if(Ken.Controlled == self){
	vida -= 1
}
}