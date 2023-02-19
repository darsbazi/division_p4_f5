if( make_shape )
{
	make_shape = false;
	XxX = 50;
	
	part_1 = instance_create_depth( x-XxX ,y,depth-1 , obj_mark );
	part_2 = instance_create_depth( x+XxX ,y,depth-1 , obj_mark );
	
	part_1.rith_left = 2;
	part_2.rith_left = 1;
	
	part_1.mode_mark = marks[0];
	part_2.mode_mark = marks[1];
	
	part_1.num_1 = arr_num_1[0];
    part_1.num_2 = arr_num_1[1];
	
	part_2.num_1 = arr_num_2[0];
    part_2.num_2 = arr_num_2[1];
	
	buttom_1 = instance_create_depth( x+100 , y-140 ,  depth-2 , buttom_mark );
	buttom_2 = instance_create_depth( x , y-140 ,  depth-2 , buttom_mark );
	buttom_3 = instance_create_depth( x-100 , y-140 ,  depth-2 , buttom_mark );
	
    buttom_1.save_id_parent = id;
	buttom_1.XX = buttom_1.x-x;
    buttom_1.YY = buttom_1.y-y;
	
    buttom_2.save_id_parent = id;
	buttom_2.XX = buttom_2.x-x;
    buttom_2.YY = buttom_2.y-y;
	
    buttom_3.save_id_parent = id;
	buttom_3.XX = buttom_3.x-x;
    buttom_3.YY = buttom_3.y-y;
	
	buttom_1.sprite_index =spr_shape6;
	buttom_3.sprite_index =spr_shape7;
	buttom_2.sprite_index =spr_shape5;
	

	buttom_1.CUR_INCUR = currect_incurrect[0];
	buttom_2.CUR_INCUR = currect_incurrect[1];
	buttom_3.CUR_INCUR = currect_incurrect[2];
	
	buttom_1.number_get = 1 ;
	buttom_2.number_get = 2 ;
	buttom_3.number_get = 3 ;
	
}

// * * * * * * * * * * * * * * * * * * * 
// * * * * * * * * * * * * * * * * * * * 
// * * * * * * * * * * * * * * * * * * * 


if( part_1.allow_to_change_location && part_2.allow_to_change_location && flag_read_code )
{
	flag_read_code = false;
	
	X_1 = point_distance( part_1.p1.x , part_1.p1.y , obj_charactor.x , part_1.p1.y );	
	X_2 = global.ideal_width - part_2.p2.x;
	
	//show_debug_message( X_1 );
	//show_debug_message( X_2 );
	X_3 = (X_1 - X_2)/2;
	//show_debug_message( X_3 );
	
	x -= X_3;
	
	go_down = true;
}


// * * * * * * * * * * * * * * * * * * * 
// * * * * * * * * * * * * * * * * * * * 
// * * * * * * * * * * * * * * * * * * * 


if( go_down ) 
{
	YyY = 200;
	if( y < scr_get_y_camera()+YyY )
	{
		y +=(scr_get_y_camera()+YyY+10-y)*0.1;
	}
	else
	{
		go_down = false;
		global.allow_to_clicking = true;
		allow_to_follow_view = true;
	}
}


if( allow_to_follow_view )
{
	y = scr_get_y_camera()+YyY;
}


if( go_up )
{
	allow_to_follow_view = false;
	YyY = 200;
	go_down = false;
	
	if( y > scr_get_y_camera()-YyY )
	{
	   couter_step += 0.5;
	   y-=couter_step;
	}
	else
	{
		go_up = false;
		global.make_question = true;
	}
}


if( global.end_game )
{
	go_down = false;
	go_up = true;
}













