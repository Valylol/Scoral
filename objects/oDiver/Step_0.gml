is_freed = false;
var walkspd = 4;
key_right = keyboard_check(vk_right) x += walkspd;
key_left = keyboard_check(vk_left)  x -= walkspd;
if keyboard_check(vk_up)    y -= walkspd;
if keyboard_check(vk_down)  y += walkspd;
x = clamp(x, 64, room_width - 64);
y = clamp(y, 225, room_height - 64);

var move = key_right - key_left;

hsp = move * walkspd;

x = x + hsp;

//full claude
var target = instance_place(x, y, oFish);
if target != noone && target.is_caught {
    skillcheck_active = true;
    skillcheck_angle += 3;
    if skillcheck_angle >= 360 { 
        skillcheck_angle = 0;
        skillcheck_zone = irandom_range(0, 300);
    }
    
    if keyboard_check_pressed(vk_space) {
        if skillcheck_angle >= skillcheck_zone && skillcheck_angle <= skillcheck_zone + 60 {
            target.is_caught = false;
            target.is_freed = true;
            target.spd = target.spd >= 0 ? 4 : -4;
            with (oNet) {
                if caught == target { caught = noone; instance_destroy(); }
            }
        }
        skillcheck_active = false;
        skillcheck_angle = 0;
        skillcheck_zone = irandom_range(0, 300);
    }
} else {
    skillcheck_active = false;
    skillcheck_angle = 0;
}



if (hsp != 0) image_xscale = sign(hsp);

//animation
if (hsp == 0)
{
	sprite_index = Diver
	
}
else
{
	sprite_index = Diverswim
}