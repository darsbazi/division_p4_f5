audio_play_sound(snd_background,1,1);
scr_fix_view(480,true,false,false);
view_enabled = true;
view_visible[0] = true;
view_wport[0] = global.ideal_width;
view_hport[0] = global.ideal_height;
camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);

//global.level_start = 0;

if( global.level_start=0 )
{
	obj_charactor.control_speed_down = 0.1;
	
	obj_charactor.ctrl_speed_go_up = 1;
    obj_charactor.ctrl_speed_go_down = 1;
}

if( global.level_start=1 )
{
	obj_charactor.control_speed_down = 0.15;
	
	obj_charactor.ctrl_speed_go_up = 1;
    obj_charactor.ctrl_speed_go_down = 1;
}

if( global.level_start=2 )
{
	obj_charactor.control_speed_down = 0.2;
	
		obj_charactor.ctrl_speed_go_up = 1;
    obj_charactor.ctrl_speed_go_down = 1;
}

if( global.level_start=3 )
{
	obj_charactor.control_speed_down = 0.25;
	
	obj_charactor.ctrl_speed_go_up = 1;
    obj_charactor.ctrl_speed_go_down = 1;
}