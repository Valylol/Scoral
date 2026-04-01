
var box_width = 120;
var box_height = 40;

// Midden van het scherm
var margin = 20;

var mid_x = display_get_gui_width() - margin - box_width / 2;
var mid_y = margin + box_height / 2;

// Hoeken van het vakje
var x1 = mid_x - box_width/2;
var y1 = mid_y - box_height/2;
var x2 = mid_x + box_width/2;
var y2 = mid_y + box_height/2;

// Achtergrond vakje
draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, false);
draw_set_color(c_dkgray);
draw_rectangle(x1+1, y1+1, x2-1, y2-1, false);

// Timer tekst
if (variable_global_exists("count_down")) {
    var total = ceil(global.count_down / room_speed);
    var mins = total div 100;
    var secs = total mod 100;

    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(mid_x, mid_y, string(mins) + ":" + string_format(secs, 2, 0));
}

var display_seconds = floor(global.count_down / room_speed);

