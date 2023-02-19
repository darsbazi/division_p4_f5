global.level_start=1;

global.allow_to_fade = true;

scr_fix_view(480,true,false,false);
view_enabled = true;
view_visible[0] = true;
view_wport[0] = global.ideal_width;
view_hport[0] = global.ideal_height;
camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);
