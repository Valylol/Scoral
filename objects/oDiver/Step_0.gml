var spd = 5	;

if keyboard_check(vk_right) x += spd;
if keyboard_check(vk_left)  x -= spd;
if keyboard_check(vk_up)    y -= spd;
if keyboard_check(vk_down)  y += spd;

x = clamp(x, 64, room_width - 64);
y = clamp(y, 64, room_height - 64);