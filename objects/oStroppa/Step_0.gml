var spd = 4;
//input
if keyboard_check(ord("A")) 
	{ x -= spd
}
if keyboard_check(ord("D"))
	{ x += spd 
}

//collision
x = clamp(x, 64, room_width - 64);

if keyboard_check_pressed(ord("W")) {
    instance_create_layer(x, y + 32, "Instances", obj_net);
}