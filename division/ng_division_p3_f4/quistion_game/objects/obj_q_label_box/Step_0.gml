if( start_to_make )
{
	start_to_make = false;
	
	set_X = 30;
	set_Y = 43;
	
	arr_right = scr_make_box( x-30 , y-43 , 38 , 4 , 7 , 15 ); // ----->>>
	arr_left = scr_make_box( x-130 , y-43 , 38 , 1 , 5 , 5 ); // <<<-----
	
	//show_debug_message(arr_right);
	//show_debug_message(arr_left);
	
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
			if( counter <= num_right_change_color )
			{
	 			arr_left[i].image_index = 1;
			}
		}
	
		if( array_length_1d(arr_right) >= 10 )
		{
			arr_get_var = scr_finde_Far_And_near_obj(arr_right);
			//show_debug_message(  arr_get_var );
		    part_rec = instance_create_depth( x,y,depth-2 , obj_q_make_rec );
			part_rec.get_arr = arr_get_var;
		}
	}
	else if(  mode == 1 && allow_to_make_help_box_10 )  
	{
		arr_get_var = scr_finde_Far_And_near_obj(arr_right);
		
		test1 = arr_right[array_length_1d(arr_right)-1];
		test2 = arr_right[0];
		arr_right = scr_make_box( test2.x,test1.y+40 , 38 , 4 , 10 , 10 );		
		
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
			if( counter_clear <= show_meny_clear )
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
	
// * * * * * * * * * * * * * * * * * * * * * * * * * * *
// * * * * * * * * * * * * * * * * * * * * * * * * * * *	

}











































    // make box right
	
	//set_X = 30;  //
	//set_Y = 43;  // 
	
	//X_offcet = 38; //
	//Y_offcet = 0;
	//arr_save_box_all = [];
	
    //number_make_x = 4;  // 
	
	//for( i=0 ; i<4 ; i++ )
	//{
	//	part_box = instance_create_depth( x-set_X ,y-set_Y+Y_offcet ,depth-1 , obj_q_show_num_box );
	//	Y_offcet+=38
	//	arr_save_box_all[array_length_1d(arr_save_box_all)] = part_box;
	//	for( e=0 ; e<number_make_x ; e++ )
	//	{
	//		part_box = instance_create_depth( part_box.x+X_offcet , part_box.y ,depth-1 , obj_q_show_num_box );
	//		arr_save_box_all[array_length_1d(arr_save_box_all)] = part_box;
	//	}
	//}
	
	//couter_box = 0;
	//arr_save_box=[];
	
    //max_i_need1 = num_make_right; ///
	
	
	//for( i=0 ; i<array_length_1d(arr_save_box_all) ; i++ )
	//{
	//	couter_box+=1;
	//	if( couter_box <= max_i_need1 )
	//	{
	//		arr_save_box[array_length_1d(arr_save_box)] = arr_save_box_all[i];
	//	}
	//	else
	//	{
	//		instance_destroy( arr_save_box_all[i] );
	//	}
	//}
	
	//show_debug_message( arr_save_box_all );
	//show_debug_message( arr_save_box );
	
	//max_i_need2 = num_ritgh_change_color_1; ///
	
	//couter_box = 0;
	//for( i=0 ; i<array_length_1d(arr_save_box) ; i++ )
	//{
	//	couter_box+=1;
	//	if( couter_box <= max_i_need2 )
	//	{
	//	}
	//	else
	//	{
	//		arr_save_box[i].image_index = 2;
	//	}
	//}








