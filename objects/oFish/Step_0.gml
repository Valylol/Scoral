if !is_caught {
    x += spd;
    if is_freed {
        y += (randomy - y) * 0.03;
		y = clamp(y, 225, room_height - 64);
    }
    if x > room_width + 64 || x < -64 {
        global.fish_escaped++;
        instance_destroy();
    }
}