	timer-=1;
	if timer<=0
	timer=room_speed*0.5;
	
	if mouse_check_button_released(mb_left)and x>=global.arax1 and x<=global.arax2 and y>=global.aray1 and y<=global.aray2
	secildi=true;
	else if mouse_check_button_released(mb_left) and point_distance(x,y,mouse_x,mouse_y)<50
	secildi=true;
	else if mouse_check_button(mb_left)
	secildi=false;
	if global.hepsinisec1==true
	secildi=true;
	
	
	if !mouse_check_button(mb_left) and !mouse_check_button_released(mb_left)
	{
	global.arax1=mouse_x;
	global.arax2=mouse_y;
	global.aray1=mouse_x;
	global.aray2=mouse_y;
	}
if (secildi==true or global.hepsinisec1==true) and mouse_check_button_pressed(mb_right)
{
	xx=mouse_x;
	yy=mouse_y;
	gidisx=xx+choose(-150,-75,0,75,150);
	gidisy=yy+choose(-150,-75,0,75,150);
}
if distance_to_point(gidisx,gidisy)<=300
move_towards_point(gidisx,gidisy,distance_to_point(gidisx,gidisy)/50);
else if distance_to_point(gidisx,gidisy)>300
move_towards_point(gidisx,gidisy,7+random_range(0,1));
image_angle = point_direction(x, y, gidisx,gidisy);
if distance_to_object(instance_nearest(x,y,oship1))<3000
{
	if timer==irandom_range(0,20)
	instance_create_layer(x,y,"Instances",choose(oMermi,oMermi1,oMermi2));
}
if hp<=0
instance_destroy();