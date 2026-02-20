
var move_speed = 4;

if (keyboard_check(ord("A"))) {
    x -= move_speed;
}
if (keyboard_check(ord("D"))) {
    x += move_speed;
}

if (keyboard_check(ord("W"))) {
    y -= move_speed;
}
if (keyboard_check(ord("S"))) {
    y += move_speed;
}

//limitsroom
if (x < 0) x = 0;
if (x > 1366) x = 1366;
if (y < 0) y = 0;
if (y > 768) y = 768;