if (mouse_check_button_released(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, room_width/2 - 80, 210, room_width/2 + 80, 250)) room_goto(rm_game);
    if (point_in_rectangle(mouse_x, mouse_y, room_width/2 - 80, 265, room_width/2 + 80, 305)) room_goto(rm_help);
}