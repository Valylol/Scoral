

var box_w = 120; 
var box_h = 40;

var margin = 20;


var x1 = margin;


var y1 = margin;

var x2 = x1 + box_w;
var y2 = y1 + box_h;


var mid_x = x1 + (box_w / 2);
var mid_y = y1 + (box_h / 2);


global.total = 0;
with (oFish) {
    if (is_caught) {
        global.total += 1;
    }
}


draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, false);
draw_set_color(c_dkgray);
draw_rectangle(x1+2, y1+2, x2-2, y2-2, false);


draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(mid_x, mid_y, string(global.total));