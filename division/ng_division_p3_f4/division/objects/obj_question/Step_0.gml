if(global.make_question && global.end_game==false )
{
	global.make_question = false;

		witch_mode_b_m_s = irandom_range( 1 , 3 ); 

	for( i=0 ; i<1 ; i++ )
	{
	    arr1=[];
	    arr2=[];
		all_array_ = [arr1,arr2];
		arr_mark =[];
		answer_=[];	
		
		for( e=0 ; e<2 ; e++ )
		{
			get_arr = all_array_[e];
			arr_mark[e] = irandom_range( 1,2 ); 
			
			for( r=0 ; r<2 ; r++ )
			{
				get_arr[array_length_1d(get_arr)] = irandom_range(1,7);
			}
			all_array_[e] = get_arr;
		}
		
		for( e=0 ; e<2 ; e++ )
		{
			get_arr = all_array_[e];
			
			if( arr_mark[e] == 1 )
			{
				answer_[e] = get_arr[0]+get_arr[1];
			}
			else
			{
				answer_[e] = get_arr[0]-get_arr[1];
			}
		}
		
		// * * * * * * * * * * * checking  
		// * * * * * * * * * * *   
		// * * * * * * * * * * * 
		
		if( answer_[0] <= 0  || answer_[1] <= 0  ||  answer_[0] >= 10  || answer_[1] >= 10 )
		{
			i-=1;
		}
		else
		{
			arr1 = all_array_[0];
			arr2 = all_array_[1];
			
			if( arr1[0] == arr2[0] and arr1[1] == arr2[1] )
			{
				i-=1;
			}
			else
			{
				ans = answer_[0]-answer_[1];
				
				if( ans < 0 )
				{
					ans *= -1;
				}
				
				
				
                if( ans >= 0 && ans <= 1 )
				{
						for( i1=0 ; i1<2 ; i1++  )
						{
							get_arr = all_array_[i1];
							if( arr_mark[i1] == 2 )
							{
								get_arr[0] = get_arr[0]-get_arr[1];
							}
		
							all_array_[i1] = get_arr;
						}
						
						
						    arr1=all_array_[0];
						    arr2=all_array_[1];
							
						    jam = arr1[0]+arr1[1]+arr2[0]+arr2[1];
							
							if( jam > 14 )
							{
								i-=1;	
							}
							else
							{
								switch( witch_mode_b_m_s )
								{
									case 1:
									
									  if( answer_[0] > answer_[1] ){}
									  else
									  {
                                          i-=1;
									  }
									  show_debug_message(">");
									break;
									
									case 2:
									
									  if( answer_[0] = answer_[1] ){}
									  else
									  {
                                          i-=1;
									  } 
									  show_debug_message("=");
									break;
									
									case 3:
									
									  if( answer_[0] < answer_[1] ){}
									  else
									  {
                                          i-=1;
									  }
									  show_debug_message("<");
									break;
								}
							}
				}
				else
				{
                    i-=1;
				}
			}
		}
	}
	
	
	// * * * * * * * * * * * * * * * * * 
	// * * * * * * * * * * * * * * * * * 
	
	arr_carr_incarr = [];
	
	if( answer_[0] > answer_[1] )
	{
		//show_debug_message("b1");
		arr_carr_incarr=[1,0,0];
	}
	else if( answer_[0] == answer_[1] )
	{
		//show_debug_message("b2");
		arr_carr_incarr=[0,1,0];
	}
	else if( answer_[0] < answer_[1] )
	{
		//show_debug_message("b3");
		arr_carr_incarr=[0,0,1];
	}
	
	
	show_debug_message(" * * * * * * * * * * * * * * ");
	
	
	instance_destroy(spr_shape_1);
	instance_destroy(spr_shape_2);
	instance_destroy(spr_shape_3);
	instance_destroy(obj_mark);
	instance_destroy(spr_shape_4);
	
	XX = global.ideal_width /4;
	XX *= 3;
 
    part_shape4=instance_create_depth( XX , scr_get_y_camera()-300 ,0,spr_shape_4);
   // part_shape4=instance_create_depth( XX , scr_get_y_camera()+300 ,0,spr_shape_4);
	part_shape4.arr_num_1 = all_array_[0];
	part_shape4.arr_num_2 = all_array_[1];
	part_shape4.marks = arr_mark;
	part_shape4.make_shape = true;
	
	part_shape4.currect_incurrect = arr_carr_incarr;
}






