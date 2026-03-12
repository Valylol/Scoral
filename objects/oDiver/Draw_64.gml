if skillcheck_active {
    var cx = x - view_xview[0] + 0;
    var cy = y - view_yview[0] - 80; // 80 pixels above the diver
    var r = 60;
    
    draw_set_alpha(0.5);
    draw_set_color(c_gray);
    draw_rectangle(cx - r - 10, cy - r - 10, cx + r + 10, cy + r + 10, false);
    draw_set_alpha(1);
    
    draw_set_color(c_white);
    draw_circle(cx, cy, r, true);
    
    draw_set_color(c_green);
    for (var i = skillcheck_zone; i < skillcheck_zone + 60; i++) {
        var x1 = cx + lengthdir_x(r - 10, i);
        var y1 = cy + lengthdir_y(r - 10, i);
        var x2 = cx + lengthdir_x(r, i);
        var y2 = cy + lengthdir_y(r, i);
        draw_line(x1, y1, x2, y2);
    }
    
    draw_set_color(c_red);
    var nx = cx + lengthdir_x(r, skillcheck_angle);
    var ny = cy + lengthdir_y(r, skillcheck_angle);
    draw_line(cx, cy, nx, ny);
    
    draw_set_color(c_white);
    draw_set_alpha(1);
}