
	set_X = argument0;  //
	set_Y = argument1;  // 
	
	X_offcet = argument2; //
	Y_offcet = 0;
	arr_save_box_all = [];
	
    number_make_x = argument3;  // 
	
	for( i=0 ; i<4 ; i++ )
	{
		part_box = instance_create_depth( set_X ,set_Y+Y_offcet ,depth-1 , obj_q_show_num_box );
		Y_offcet+=38
		arr_save_box_all[array_length_1d(arr_save_box_all)] = part_box;
		for( e=0 ; e<number_make_x ; e++ )
		{
			part_box = instance_create_depth( part_box.x+X_offcet , part_box.y ,depth-1 , obj_q_show_num_box );
			arr_save_box_all[array_length_1d(arr_save_box_all)] = part_box;
		}
	}
	
	couter_box = 0;
	arr_save_box=[];
	
    max_i_need1 = argument4; ///
	
	
	for( i=0 ; i<array_length_1d(arr_save_box_all) ; i++ )
	{
		couter_box+=1;
		if( couter_box <= max_i_need1 )
		{
			arr_save_box[array_length_1d(arr_save_box)] = arr_save_box_all[i];
		}
		else
		{
			instance_destroy( arr_save_box_all[i] );
		}
	}
	max_i_need2 = argument5; ///
	couter_box = 0;
	for( i=0 ; i<array_length_1d(arr_save_box) ; i++ )
	{
		couter_box+=1;
		if( couter_box <= max_i_need2 )
		{
		}
		else
		{
			arr_save_box[i].image_index = 2;
		}
	}
	
	//show_debug_message( arr_save_box_all );
	//show_debug_message( arr_save_box );
	
	return arr_save_box;
	
	
	
	
	
	
	
	
	