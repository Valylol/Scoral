draw_set_color(c_gray);
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(room_width/2, 60, "HOE SPEEL JE");

draw_set_halign(fa_left);
draw_text(60, 130, "--- STROPER ---");
draw_text(60, 160, "A / D      beweeg naar links / rechts");
draw_text(60, 190, "W          drop net");
draw_sprite(Stroppa, 0, 500, 160);

draw_text(60, 250, "--- DUIKER ---");
draw_text(60, 280, "PIJLTJES   Beweeg duiker");
draw_text(60, 310, "SPATIE        voer een skill check uit");
draw_sprite(Diver, 0,600, 280);

draw_text(60, 360, "--- SKILLCHECK ---");
draw_text(60, 390, "Als je dicht bij een vis bent druk op SPATIE");
draw_text(60, 420, "Druk op Spatie wanneer de rode wijzer in het groene vak is om de vis te bevrijden");

draw_text(60, 480, "--- HOW TO WIN ---");
draw_text(60, 510, "Duiker: bevrijd zo veel mogelijk vissen");
draw_text(60, 540, "Stroper: vang 5 of meer vissen");
draw_set_halign(fa_center);
draw_text(room_width/2, room_height - 60, "TERUG");