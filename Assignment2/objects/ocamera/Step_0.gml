/// @description Update Camera

//Update destination
if (instance_exists(follow))
{
	xTowards = follow.x;
	yTowards = follow.y;
}

//Update camera object position
x += (xTowards - x) / 25;
y += (yTowards - y) / 25;

//Update actual camera view
camera_set_view_pos(cam, x-view_width_half, y-view_height_half);
