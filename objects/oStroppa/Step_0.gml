var spd = 4;
//input
if keyboard_check(ord("A")) { x -= spd; image_xscale = -1; }
if keyboard_check(ord("D")) { x += spd; image_xscale =  1; }

//collision
x = clamp(x, 64, room_width - 64);