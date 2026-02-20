var move_speed = 4;


if (keyboard_check(vk_left)) {
    x -= move_speed;
}
if (keyboard_check(vk_right)) {
    x += move_speed;
}
if (keyboard_check(vk_up)) {
    y -= move_speed;
}
if (keyboard_check(vk_down)) {
    y += move_speed;
}


//limitsroom
if (x < 0) x = 0;
if (x > room_width) x = room_width;
if (y < 0) y = 0;
if (y > room_height) y = room_height;

