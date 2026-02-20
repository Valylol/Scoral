
var move_speed = 4;

if (keyboard_check(ord("A"))) {
    x -= move_speed;
}
if (keyboard_check(ord("D"))) {
    x += move_speed;
}

// limits
if (x < 0) x = 0;
if (x > room_width) x = room_width;
if (y < 0) y = 0;
if (y > room_height) y = room_height;
