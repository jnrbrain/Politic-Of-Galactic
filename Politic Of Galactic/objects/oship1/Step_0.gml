if point_in_circle(mouse_x, mouse_y, x, y, 150) and mouse_check_button_pressed(mb_left)
{
	variable_global_set(0,1);
}
if variable_global_get(0)==1
image_angle = point_direction(x, y, mouse_x, mouse_y);