/// Draw the Hearts
var xoffset = 24

// Use a for Loop
for (var i=0; i<hp; i++) {
    draw_sprite(s_health, 0, xstart +(xoffset*i), ystart);
}

