/// @description Setup camera

cam = view_camera[0];
follow = oPlayer;
view_width_half = camera_get_view_width(cam) * 0.5;
view_height_half = camera_get_view_height(cam) * 0.5;
xTowards = xstart;
yTowards = ystart;