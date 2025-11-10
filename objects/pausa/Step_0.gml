

if (keyboard_check_pressed(vk_escape)) {
    if (global.anterioroom != -1) {
        room_goto(global.anterioroom); // vuelve al juego
    }
}
