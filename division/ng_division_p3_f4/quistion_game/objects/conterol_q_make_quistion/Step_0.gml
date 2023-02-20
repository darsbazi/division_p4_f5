if( global.make_qiostion )
{
    global.make_qiostion=false;
    mode = irandom_range( 2 , 2 ); // 1=>+  2=>-

    for( e=0 ; e<1 ; e++ )
	{
		get_arr= [];
        save_num_not_slash=[];
        save_num_with_slash=[];
		save_answer = 0;
		save_answer_not_slash=[];
		
		for( i=0 ; i<2 ; i++ )
		{
			num_1 = irandom_range( 1,7 );
			num_2 = irandom_range( 1,7 );

			get_arr=[num_1,num_2];
			save_num_not_slash[array_length_1d(save_num_not_slash)] = get_arr;
			
			num_1 = num_1+(num_2/10);
			save_num_with_slash[array_length_1d(save_num_with_slash)] = num_1
		}
		
		if( mode == 1 )
		{
			save_answer = save_num_with_slash[0]+save_num_with_slash[1];
		}
		else if( mode == 2 )
		{
			save_answer = save_num_with_slash[0]-save_num_with_slash[1];
		}
		
		if( save_answer >= 10 || save_answer <= 0 )
		{
			e -= 1;
		}
		else
		{
			save_answer_not_slash = scr_open_number(save_answer);
		}
	}
	
	show_debug_message( save_num_not_slash );
	show_debug_message( save_num_with_slash );
	show_debug_message( save_answer );
	show_debug_message( save_answer_not_slash );
	
	
	// * * * * * * * * * * * * * * * * * * * * * * * * 
	// * * * * * * * * * * * * * * * * * * * * * * * * 
	// * * * * * * * * * * * * * * * * * * * * * * * * 
	
	for( k=0 ; k<1 ; k++ )
	{
		array_all_answer = [save_answer_not_slash];
	
		for( i=0 ; i<3 ; i++ )
		{
			get_arr1 = save_answer_not_slash;
			ran = irandom_range(0,1);
			
			get_arr1[ran] = scr_creat_number_min_max( int64(save_answer_not_slash[ran]) , 2,2 );
			
			array_all_answer[array_length_1d(array_all_answer)] = get_arr1;
		}
	
	
		finde_repeat = false;
	
		for( i=0 ; i<array_length_1d(array_all_answer) ; i++ )
		{
			get_arr_1 = array_all_answer[i];
		
			for( e=0 ; e<array_length_1d(array_all_answer) ; e++ )
		    {
				get_arr_2 = array_all_answer[e];
				
				if( i!=e )
				{
					if( get_arr_1[0]==get_arr_2[0] )
					{
						if( get_arr_1[1]==get_arr_2[1] )
						{
							finde_repeat = true;
						}
					}
				}
			}
		}
		if( finde_repeat )
		{
			k-=1;
		}
	}
	
	show_debug_message( array_all_answer );
	
	// * * * * * * * * * * * * * * * * * * * * * * * * 
	// * * * * * * * * * * * * * * * * * * * * * * * * 
	// * * * * * * * * * * * * * * * * * * * * * * * * 
	
	instance_destroy( obj_q_label_box );
	instance_destroy( obj_q_show_num_box );
	instance_destroy( obj_q_make_rec );
	
	
	part_label = instance_create_depth( 640,127,-3, obj_q_label_box );
    part_label.mode =  mode == 1 ? 0:1;
	
	get_arr_1 = save_num_not_slash[0];
	get_arr_2 = save_num_not_slash[1];
	
	if( mode==1 )
	{
		part_label.num_make_right = get_arr_1[1]+get_arr_2[1];
		part_label.num_ritgh_change_color_1 = get_arr_1[1];
		
		help_plass = get_arr_1[1]+get_arr_2[1] >=10 ? 1 : 0;
		part_label.num_make_left = get_arr_1[0]+get_arr_2[0]+ help_plass;
		part_label.num_left_change_color_1 = get_arr_1[0];
	}
	else if( mode==2 )
	{	
		part_label.num_make_right = get_arr_1[1];
		part_label.num_ritgh_change_color_1 = get_arr_1[1];
		part_label.num_ritgh_change_color_2 = get_arr_2[1];
		
		if( get_arr_1[1] < get_arr_2[1] )
		{
			part_label.allow_to_make_help_box_10 = true;
		}
		
		part_label.num_make_left = get_arr_1[0];
		
		part_label.num_left_change_color_1 = get_arr_1[0];
		part_label.num_left_change_color_2 = get_arr_2[0];
		
	}

	
	
	
	
	
		
}















