is_freed = false;
var spd = 5;
if keyboard_check(vk_right) x += spd;
if keyboard_check(vk_left)  x -= spd;
if keyboard_check(vk_up)    y -= spd;
if keyboard_check(vk_down)  y += spd;
x = clamp(x, 64, room_width - 64);
y = clamp(y, 225, room_height - 64);


//full claude
var target = instance_place(x, y, oFish);
if target != noone && target.is_caught {
    skillcheck_active = true;
    skillcheck_angle += 3;
    if skillcheck_angle >= 360 { 
        skillcheck_angle = 0;
        skillcheck_zone = irandom_range(0, 300);
    }
    
    if keyboard_check_pressed(ord("E")) {
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