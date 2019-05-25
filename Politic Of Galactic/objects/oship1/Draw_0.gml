draw_self();
var pc;
pc = (hp / max_hp) * 100;
draw_healthbar(x-sprite_width/2, y-sprite_width/2-10, x+sprite_width/2, y-sprite_width/2-20, pc, c_black, c_green, c_lime, 0, true, true);