x_speed = 0;
y_speed += 0.5;

if (keyboard_check(vk_right)) {
    x_speed = walk_speed;
    image_xscale = -1;
}
else if (keyboard_check(vk_left)) {
    x_speed = -walk_speed;
    image_xscale = 1;
}

if (place_meeting(x, y + 1, oSolid)) {
    if (keyboard_check_pressed(vk_up)) {
        y_speed = -5.5;
    } else {
        y_speed = 0;
    }
}

move_and_collide(x_speed, y_speed, oSolid);

if (place_meeting(x, y, oSpikes)) {
    room_restart();
}

if (place_meeting(x, y, Object7)) {
    room_restart();
}

if (x < 0 || x > room_width || y < -10 || y > room_height) {
    room_restart();
}