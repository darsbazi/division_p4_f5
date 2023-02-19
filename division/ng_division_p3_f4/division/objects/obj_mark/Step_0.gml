if( make_shape )
{
    make_shape = false;
	make_first_shape = true;
	save_id_shape = 0;
	XPlass = 30;
	arr_all_shape = [];
	
	for( i=0 ; i<num_1+num_2 ; i++ )
	{
		if( make_first_shape = true )
		{
			make_first_shape = false;
			save_id_shape = instance_create_depth(x,y,depth,spr_shape_2); 
			
			arr_all_shape[array_length_1d(arr_all_shape)] = save_id_shape;
		}
		else
		{
			
			if( mode_mark == 1 )
			{
				if( i == num_1 )
				{
					save_id_shape = instance_create_depth(save_id_shape.x+XPlass ,y,depth,spr_shape_3); 
					arr_all_shape[array_length_1d(arr_all_shape)] = save_id_shape;
				}
			}
			
			save_id_shape = instance_create_depth(save_id_shape.x+XPlass ,y,depth,spr_shape_2); 
			arr_all_shape[array_length_1d(arr_all_shape)] = save_id_shape;
			

			if( mode_mark == 2 )
			{
				if( i > num_1-1 )
				{
					save_id_shape.image_index = 1;
				}
			}
		}
	}
	

	// * * * * * * * * * * * * * * * * * * * * * * * * * * *
	// * * * * * * * * * * * * * * * * * * * * * * * * * * *
	// * * * * * * * * * * * * * * * * * * * * * * * * * * *


	if( rith_left == 2 )
	{
	    dis	= point_distance( x,y , arr_all_shape[array_length_1d(arr_all_shape)-1].x,y );
		
		for( i=0 ; i<array_length_1d(arr_all_shape) ; i++ )
		{
	        arr_all_shape[i].x -= dis;
		}
	}


	p1 = instance_create_depth(arr_all_shape[0].x-25 , y ,depth+1, spr_shape_1 ); 
	p2 = instance_create_depth(arr_all_shape[array_length_1d(arr_all_shape)-1].x+25 , y ,depth+1, spr_shape_1 ); 
	p2.image_xscale = -1;
	p1.get_brode_id = p2;
	
	arr_all_shape[array_length_1d(arr_all_shape)] = p1;
	arr_all_shape[array_length_1d(arr_all_shape)] = p2;
	

	for( i=0 ; i<array_length_1d(arr_all_shape) ; i++ )
	{
	    arr_all_shape[i].XX = x - arr_all_shape[i].x;
	    arr_all_shape[i].YY = y - arr_all_shape[i].y;
	    arr_all_shape[i].save_id_parent = id;
	}
	
	
	// * * * * * * * * * * * * * * * * * * * * * * * * * * *
	// * * * * * * * * * * * * * * * * * * * * * * * * * * *
	// * * * * * * * * * * * * * * * * * * * * * * * * * * *
	
	
	allow_to_change_location = true;
	
}




