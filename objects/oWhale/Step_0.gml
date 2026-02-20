x += spd;

if x > room_width + 64 || x < -64 {
    instance_destroy();
}

