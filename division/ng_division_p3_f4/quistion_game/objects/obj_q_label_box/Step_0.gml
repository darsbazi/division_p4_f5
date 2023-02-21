if( flag_make_label )
{
	flag_make_label = false;
	
	part_label = instance_create_depth( x-270,y, depth-1 , obj_q_lable_show_number );
	arr_1 = get_arr_for_label[0];
	arr_2 = get_arr_for_label[1];
	part_label.num_1 = arr_1[0];
	part_label.num_2 = arr_1[1];
	part_label.num_3 = arr_2[0];
	part_label.num_4 = arr_2[1];
	part_label.mode = mode;
	arr_test = [part_label];
	scr_set_parent_following(arr_test,id);
	
	//  ** *** *** *** *** *** ** *** *** 
	//  ** *** *** *** *** *** ** *** *** 

   // show_debug_message( number_answer ); 

    XX = 0;
	XxX = -270;
	
	arr_save_label_show_number = [];

    for( i=0 ; i<4 ; i++ )
	{
	     part_label = instance_create_depth( x+XX+XxX,y+160,depth-1 , obj_q_label_show_answer );
		 arr_save_label_show_number[array_length_1d(arr_save_label_show_number)] = part_label;
		 part_label.number_show = number_answer[i];
		 part_label.currect_incurrect = arr_currect_incurrect[i];
		 XX += 120;
	}

	//  ** *** *** *** *** *** ** *** *** 
	//  ** *** *** *** *** *** ** *** *** 	
}

if( start_to_make )
{
	start_to_make = false;
	
	set_X = 30;
	set_Y = 43;
	
	arr_right = scr_make_box( x-15 , y-43 , 38 , 4 , num_make_right , num_ritgh_change_color_1 ); // ----->>>
	arr_left = scr_make_box( x-140 , y-43 , 38 , 1 , num_make_left , num_left_change_color_1 ); // <<<-----


    scr_set_parent_following( arr_right , id );
    scr_set_parent_following( arr_left , id );
	
	
// * * * * * * * * * * * * * * * *
// * * * * * * * * * * * * * * * * set number
	
	for( i=0 ; i<array_length_1d(arr_left) ; i++ )
	{
		arr_left[i]. num_show = "1";
	}

// * * * * * * * * * * * * * * * *
// * * * * * * * * * * * * * * * *
	
	if( mode == 0 )
	{
		counter = 0;
		for( i=array_length_1d(arr_left)-1 ; i>-1 ; i-- )
		{
			counter+=1;
			if(num_make_right >=10)
			{
				if( counter <= num_right_change_color )
				{
		 			arr_left[i].image_index = 1;
				}
			}
		}
	
		if( array_length_1d(arr_right) >= 10 )
		{
			arr_get_var = scr_finde_Far_And_near_obj(arr_right);
			//show_debug_message(  arr_get_var );
		    part_rec = instance_create_depth( x,y,depth-2 , obj_q_make_rec );
			part_rec.get_arr = arr_get_var;
			part_rec.flag_read_code = true;
		}
	}
	else if(  mode == 1 && allow_to_make_help_box_10 )  
	{
		arr_get_var = scr_finde_Far_And_near_obj(arr_right);
		
		test1 = arr_right[array_length_1d(arr_right)-1];
		test2 = arr_right[0];
		arr_right = scr_make_box( test2.x,test1.y+40 , 38 , 4 , 10 , 10 );		
		
		scr_set_parent_following( arr_right , id );
		
		for( i=0 ;i<array_length_1d(arr_right) ; i++ )
		{
			arr_right[i].image_index = 1
		}
		
		arr_get_var = scr_finde_Far_And_near_obj(arr_right);
		part_rec = instance_create_depth( x,y,depth-1 , obj_q_make_rec );
		part_rec.get_arr = arr_get_var;
		
		counter_clear = 0;
		for( i=0 ; i<array_length_1d(arr_right) ; i++ )
		{
			counter_clear+=1;
			if( counter_clear <= num_ritgh_change_color_2 )
			{
				arr_right[i].allow_show_zarb= true;
			}
		}
		
		arr_left[array_length_1d(arr_left)-1].image_index = 1;
		arr_left[array_length_1d(arr_left)-1].allow_show_zarb = true;
		arr_left[array_length_1d(arr_left)-1].allow_to_show_line = true;
		
		if( array_length_1d(arr_left)%2 == 0 )
		{
			arr_left[array_length_1d(arr_left)-1].mode_flash=1;
		}
	}
	else if( mode == 1 )
	{
		couter_zarb = 0;
		
		for( i=0 ; i<array_length_1d(arr_right) ; i++ )
		{
			couter_zarb+=1;
			if( couter_zarb <= num_ritgh_change_color_2 )
			{
				arr_right[i].allow_show_zarb = true;
			}
		}
	}
	
	if( mode == 1 )
	{
		counter = 0;
		
		for( i=0 ; i<array_length_1d(arr_left) ; i++ )
		{
			counter+=1;
			if( counter <= num_left_change_color_2 )
			{
				arr_left[i].allow_show_zarb = true;
			}
		}
	}
	
	
// * * * * * * * * * * * * * * * * * * * * * * * * * * *
// * * * * * * * * * * * * * * * * * * * * * * * * * * *

}









