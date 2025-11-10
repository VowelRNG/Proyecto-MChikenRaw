sprite_index = Sprite24
velocidad = 4
target = noone

nivel_actual = tutorial
x = nivel_actual.x
y = nivel_actual.y

mapa = ds_map_create();

var tt = ds_map_create();
ds_map_add(tt, "D", paradero1);
ds_map_add(mapa, tutorial, tt);

var p1 = ds_map_create();
ds_map_add(p1, "A", tutorial);
ds_map_add(p1, "W", paradero2);
ds_map_add(mapa, paradero1, p1);

var p2 = ds_map_create();
ds_map_add(p2, "D", nivel1);
ds_map_add(p2, "S", paradero1);
ds_map_add(mapa, paradero2, p2);

var n1 = ds_map_create();
ds_map_add(n1, "A", paradero2);
ds_map_add(n1, "D", paradero3);
ds_map_add(mapa, nivel1, n1);

var p3 = ds_map_create();
ds_map_add(p3, "A", nivel1);
ds_map_add(p3, "D", nivel2);
ds_map_add(mapa, paradero3, p3);

var n2 = ds_map_create();
ds_map_add(n2, "A", paradero3);
ds_map_add(n2, "D", paradero4);
ds_map_add(mapa, nivel2, n2);

var p4 = ds_map_create();
ds_map_add(p4, "A", nivel2);
ds_map_add(p4, "S", nivel3);
ds_map_add(mapa, paradero4, p4);

var n3 = ds_map_create();
ds_map_add(n3, "W", paradero4);
ds_map_add(n3, "S", paradero5);
ds_map_add(mapa, nivel3, n3);

var p5 = ds_map_create();
ds_map_add(p5, "W", nivel3);
ds_map_add(p5, "A", nivel4);
ds_map_add(mapa, paradero5, p5);

var n4 = ds_map_create();
ds_map_add(n4, "D", paradero5);
ds_map_add(n4, "A", paradero6);
ds_map_add(mapa, nivel4, n4);

var p6 = ds_map_create();
ds_map_add(p6, "D", nivel4);
ds_map_add(p6, "S", paradero7);
ds_map_add(mapa, paradero6, p6);

var p7 = ds_map_create();
ds_map_add(p7, "W", paradero6);
ds_map_add(p7, "D", nivelboss);
ds_map_add(mapa, paradero7, p7);

var nb = ds_map_create();
ds_map_add(nb, "A", paradero7);
ds_map_add(mapa, nivelboss, nb);


