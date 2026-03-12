y += spd;

if caught == noone {
	var hit = instance_place(x, y, oFish);
	// als gehit caught 
    if hit != noone {
        caught = hit;
		hit.is_caught = true;
        spd = 2;
    }
} else {
    caught.x = x;
    caught.y = y + 32;
}
// als niet gecaught destroy
if place_meeting(x, y, oSand) {
    if caught == noone {
        instance_destroy();
    } else {
        spd = 0;
        caught.x = x;
        caught.y = y + 32;
    }
}