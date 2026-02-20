if irandom(1) == 0 {
    x = -32;
    spd = choose(1, 2, 3);
    image_xscale = 1;
} else {
    x = room_width + 32;
    spd = -choose(1, 2, 3);
    image_xscale = -1;
}