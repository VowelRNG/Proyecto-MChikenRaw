vida = 3;
gravedad = 0.5;
Herido = false;
velocidad = 2;
facing = "r"

var dir = irandom(359); // dirección aleatoria
while (place_meeting(x, y, Minion)) {
    x += lengthdir_x(1, dir);
    y += lengthdir_y(1, dir);
}
