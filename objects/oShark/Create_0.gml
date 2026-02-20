if irandom(1) == 0 {
    x = -32;
    spd = choose(4, 5, 6);
    image_xscale = 1;
} else {
    x = room_width + 32;
    spd = -choose(4, 5, 6);
    image_xscale = -1;
}