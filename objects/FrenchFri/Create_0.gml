vida = 15;
gravedad = 0.5;
Herido = false;
Muerto = false;

facing = "r"

var dir = irandom(359);
while (place_meeting(x, y, Minion)) {
    x += lengthdir_x(1, dir);
    y += lengthdir_y(1, dir);
}
