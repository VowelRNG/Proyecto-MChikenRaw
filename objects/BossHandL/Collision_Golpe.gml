image_angle += 10;

if(instance_exists(Boss)){
with Boss{
vida -= 10;
}
}

instance_destroy(Golpe)