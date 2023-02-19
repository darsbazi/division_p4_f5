draw_set_alpha(num_dark);
cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);
cw = camera_get_view_width(view_camera[0]);
ch = camera_get_view_height(view_camera[0]);
draw_set_color(c_black);
draw_rectangle( cx,cy,cx+cw,cy+ch ,false );
draw_set_alpha(1);