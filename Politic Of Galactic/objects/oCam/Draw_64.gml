draw_sprite(pause,0,display_get_gui_width()/2,50);
draw_text(0,20,"Press ESC for Fullscreen on/off");
draw_text_color(0,50,"Use Mouse while up/down, movement",c_yellow,c_yellow,c_white,c_yellow,0.8);
draw_text(0,80,"You can see camera move back if u go to border of map");
draw_sprite(isaretci,0,window_mouse_get_x(),window_mouse_get_y());
for(var sayi=0; sayi<instance_number(oship0);sayi+=1)
{
	draw_line_width_color(display_get_width()-200+sayi*10,125,display_get_width()-190+sayi*10,75,5,c_blue,c_aqua);
}
if instance_exists(oship0)
{
	draw_rectangle_color(display_get_width()-300,70,display_get_width()-5,130,renk,renk,renk,renk,true);
	draw_sprite(object_get_sprite(oship1),1,display_get_width()-250,100);
	if window_mouse_get_x()>=display_get_width()-300 and window_mouse_get_x()<=display_get_width()-5 and window_mouse_get_y()>=70 and window_mouse_get_y()<=130 and mouse_check_button_released(mb_left)
	global.hepsinisec1=true;
	else if mouse_check_button_pressed(mb_left)
	global.hepsinisec1=false;
}
//draw_text(500,650,instance_find(oship0,0)); //10009 instance_id
if global.hepsinisec1==true
renk=c_white;
else if global.hepsinisec1==false
renk=c_blue;