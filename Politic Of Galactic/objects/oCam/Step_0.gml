x+=(xTo-x)/25;
y+=(yTo-y)/25;
if follow!=noone
{
	xTo=follow.x;
	yTo=follow.y;
}
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);
pm=matrix_build_projection_ortho(genislik,yukseklik,1,10000);
camera_set_proj_mat(camera,pm);

if mouse_wheel_up()
{
	if genislik>1600
	{
		genislik=genislik*0.9;
		yukseklik=yukseklik*0.9;
	}
	if display_mouse_get_x()>display_get_width()/2
	{
		x+= display_mouse_get_x()-display_get_width()/2;
	}
	else if display_mouse_get_x()<display_get_width()/2
	{
		x-=display_get_width()/2-display_mouse_get_x();
	}
	
	if display_mouse_get_y()<display_get_height()/2
	{
		y+=display_mouse_get_y()-display_get_height()/2;
	}
	else if display_mouse_get_y()>display_get_height()/2
	{
		y-=display_get_height()/2-display_mouse_get_y();
	}
}
else if mouse_wheel_down()
{
	if genislik<16000
	{
		genislik=genislik/0.80;
		yukseklik=yukseklik/0.80;
	}
	if display_mouse_get_x()>display_get_width()/2
	{
		x+=(display_mouse_get_x()-display_get_width())/2;
	}
	else if display_mouse_get_x()<display_get_width()/2
	{
		x-=(display_get_width()/2-display_mouse_get_x());
	}
	
	if display_mouse_get_y()<display_get_height()/2
	{
		y+=(display_mouse_get_y()-display_get_height()/2);
	}
	else if display_mouse_get_y()>display_get_height()/2
	{
		y-=(display_get_height()/2-display_mouse_get_y());
	}
}