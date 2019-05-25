if mouse_check_button_pressed(mb_left)
{
	xx=mouse_x;
	yy=mouse_y;
}
if mouse_check_button(mb_left)
{
	draw_rectangle_color(xx,yy,mouse_x,mouse_y,c_blue,c_blue,c_blue,c_blue,true);
	if xx<mouse_x
	{
		global.arax1=xx;
		global.arax2=mouse_x;
		if yy<mouse_y
		{
		global.aray1=yy;
		global.aray2=mouse_y;
		}
		else if yy>mouse_y
		{
		global.aray1=mouse_y;
		global.aray2=yy;
		}
	}
	else if xx>mouse_x
	{
		global.arax1=mouse_x;
		global.arax2=xx;
		if yy<mouse_y
		{
		global.aray1=yy;
		global.aray2=mouse_y;
		}
		else if yy>mouse_y
		{
		global.aray1=mouse_y;
		global.aray2=yy;
	}
}
}
else if !mouse_check_button(mb_left)
{
	global.arax1=mouse_x;
	global.arax2=mouse_x;
	global.aray1=mouse_y;
	global.aray2=mouse_y;
}