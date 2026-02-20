timer++;

if timer >= spawn_delay {
	var spawn_y = irandom_range(225, 650);
    var pick = irandom(2);
    if pick == 0 instance_create_layer(-32, spawn_y, "Instances", oTurtle);
    if pick == 1 instance_create_layer(-32, spawn_y, "Instances", oShark);
    if pick == 2 instance_create_layer(-32, spawn_y, "Instances", oWhale);
    
    timer = 0;
    spawn_delay = irandom_range(room_speed * 2, room_speed * 3);
}