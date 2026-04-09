// Background
draw_set_color(make_color_rgb(0, 40, 80));
draw_rectangle(0, 0, room_width, room_height, false);

// Bubbles
draw_set_color(make_color_rgb(150, 200, 255));
draw_set_alpha(0.4);
for (var i = 0; i < 10; i++) {
    var b = bubbles[i];
    draw_circle(b.x, b.y, b.size, true);
    b.y -= b.speed;
    if (b.y < -20) { b.y = room_height + 20; b.x = irandom(room_width); }
    bubbles[i] = b;
}
draw_set_alpha(1);

// Logo
draw_sprite(Sprite23, 0, room_width/2, 120);

// Buttons
draw_set_color(make_color_rgb(60, 60, 60));
draw_rectangle(room_width/2 - 80, 210, room_width/2 + 80, 250, false);
draw_rectangle(room_width/2 - 80, 265, room_width/2 + 80, 305, false);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, 230, "PLAY");
draw_text(room_width/2, 285, "HELP");