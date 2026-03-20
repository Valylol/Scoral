var spd = 4;

if keyboard_check(ord("A")) x -= spd;
if keyboard_check(ord("D")) x += spd;

x = clamp(x, 64, room_width - 64);

if keyboard_check_pressed(ord("W")) && can_shoot {
    instance_create_layer(x, y + 32, "Instances", oNet);
    can_shoot = false;
    alarm[0] = 90;
}


if keyboard_check (ord("A"))
{
		sprite_index = StroppaL;
	show_debug_message("A");
}
else if keyboard_check (ord("D"))
{
	sprite_index = StroppaR;
}
else 
{
	sprite_index = Stroppa
}