image_speed=0;
image_index=1;
gidisx=instance_nearest(x,y,oship1).x+random_range(-distance_to_object(instance_nearest(x,y,oship1))/9,distance_to_object(instance_nearest(x,y,oship1))/9);
gidisy=instance_nearest(x,y,oship1).y+random_range(-distance_to_object(instance_nearest(x,y,oship1))/9,distance_to_object(instance_nearest(x,y,oship1))/9);
image_angle = point_direction(x, y, gidisx,gidisy);
move_towards_point(gidisx,gidisy,50);