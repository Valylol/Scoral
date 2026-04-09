global.count_down -= 1;

if (global.count_down <= 0 && global.count_down > -10) {
	if (global.total >= 5) {
		room_goto(endStroppa);
		
	}
	else {
		room_goto(endDiver);
	}
	global.count_down = -1;
}
    
 