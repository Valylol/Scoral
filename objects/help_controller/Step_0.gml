if (mouse_check_button_released(mb_left)) {
    if (point_in_circle(mouse_x, mouse_y, room_width/2, room_height - 60, 30)) room_goto(rm_start);
}