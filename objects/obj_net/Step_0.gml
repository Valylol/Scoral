y += spd;

if caught == noone {
    var hit = instance_place(x, y, oTurtle);
    if hit == noone hit = instance_place(x, y, oShark);
    if hit == noone hit = instance_place(x, y, oWhale);
    
    if hit != noone {
        caught = hit;
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