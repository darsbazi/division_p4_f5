if( allow_to_follow )
{
	camera_set_view_pos( view_camera[0] , x ,y );
}


// go up

if( flag_go_up )
{
	if( y<5 )
	{
		flag_go_up =false;	
		alarm[1] = 20; 
		
		global.make_question = true;
	}
	else
	{
      y+=(0-y)*0.05;
	}
}


// follow_caractor 

if( flag_follow_charactor )
{
	ctrl_view_pos.y+=( (obj_charactor.y-480/2) - y)*0.05;
}


// control_offcet_view

if( camera_get_view_y(view_camera[0]) > room_height-480 ) 
{
	camera_set_view_pos( view_camera[0] , x , room_height-480 );
}



if( camera_get_view_y(view_camera[0]) < 0 ) 
{
	camera_set_view_pos( view_camera[0] , x , 0);
}
























