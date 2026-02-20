var move_speed = 4;

if (keyboard_check(vk_left) && !place_meeting(x - move_speed, y, osand)) {
    x -= move_speed;
}
if (keyboard_check(vk_right) && !place_meeting(x + move_speed, y, osand)) {
    x += move_speed;
}

if (keyboard_check(vk_up) && !place_meeting(x, y - move_speed, osand)) {
    y -= move_speed;
}
if (keyboard_check(vk_down) && !place_meeting(x, y + move_speed, osand)) {
    y += move_speed;
}

// limits
if (x < 0) x = 0;
if (x > room_width) x = room_width;
if (y < 0) y = 0;
if (y > room_height) y = room_height;
