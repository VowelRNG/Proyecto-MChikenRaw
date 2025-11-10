if (target == noone) {
    var vecinos = mapa[? nivel_actual];

    if (keyboard_check_pressed(ord("W")) && ds_map_exists(vecinos, "W")) {
		target = vecinos[? "W"];
    }
    if (keyboard_check_pressed(ord("S")) && ds_map_exists(vecinos, "S")) {
        target = vecinos[? "S"];
    }
    if (keyboard_check_pressed(ord("A")) && ds_map_exists(vecinos, "A")) {
        target = vecinos[? "A"];
    }
    if (keyboard_check_pressed(ord("D")) && ds_map_exists(vecinos, "D")) {
        target = vecinos[? "D"];
    }
}



if (target != noone) {
    var tx = target.x;
    var ty = target.y;
    var dist = point_distance(x, y, tx, ty);

    if (dist <= velocidad) {
        x = tx;
        y = ty;
        hspeed = 0; vspeed = 0; speed = 0;
        nivel_actual = target;
        target = noone;
    } else {
        move_towards_point(tx, ty, velocidad);
    }
}

if (keyboard_check_pressed(vk_enter)) {
	if (nivel_actual == tutorial) room_goto(Tutorial);
    if (nivel_actual == nivel1) room_goto(Nivel1);
    if (nivel_actual == nivel2) room_goto(Nivel2);
    if (nivel_actual == nivel3) room_goto(Nivel3);
    if (nivel_actual == nivel4) room_goto(Nivel4);
	if (nivel_actual == nivelboss) room_goto(BossBattle1);
}




