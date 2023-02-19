global.speed_for_time=0;
global.speed_for_time=0.00019;
global.how_shape=19;

scr_fix_view(480,true,false,false);
view_enabled = true;
view_visible[0] = true;
view_wport[0] = global.ideal_width;
view_hport[0] = global.ideal_height;
camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);


if( global.allow_to_fade = true )
{
    global.allow_to_fade = false;
	instance_create_depth( 0,0, -20 , fade );
}
