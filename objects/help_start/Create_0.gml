
//random speed / width / 
bubbles = array_create(10);
for (var i = 0; i < 10; i++) {
    bubbles[i] = { x: irandom(room_width), y: irandom(room_height), speed: random_range(0.5, 2), size: random_range(4, 12) };
}