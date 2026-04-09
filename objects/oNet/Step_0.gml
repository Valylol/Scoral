y += spd;
depth = -2;

if caught == noone {
	var hit = instance_place(x, y, oFish)
	
	
	 
    if hit != noone {
        caught = hit;
		hit.is_caught = true;
        spd = 2;
    }
} else {
    caught.x = x;
    caught.y = y + 32;
}

if place_meeting(x, y, oSand) {
    if caught == noone {
        instance_destroy();
    } else {
        spd = 0;
        caught.x = x;
        caught.y = y + 32;
    }
}
