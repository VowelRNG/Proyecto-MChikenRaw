image_angle -= 10;
if(instance_exists(Boss)){
with Boss{
vida -= 1;
alarm[0] = 30;
}
}

instance_destroy(Golpe)
