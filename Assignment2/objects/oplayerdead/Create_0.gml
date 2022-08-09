hsp = 0;
vsp = 0;
grv = 0.3;
done = 0;
cam = view_camera[0];
view_width_half = camera_get_view_width(cam) * 0.5;
view_height_half = camera_get_view_height(cam) * 0.5;

image_speed = 1;

game_set_speed(30, gamespeed_fps);
camera_set_view_pos(cam, x - view_width_half, y - view_height_half);
