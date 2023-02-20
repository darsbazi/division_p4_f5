var get_arr = argument0;

var far_obj_X = get_arr[0];
var near_obj_X = get_arr[0];

var far_obj_Y = get_arr[0];
var near_obj_Y = get_arr[0];

counter_box = 0;

for( e=0 ; e<array_length_1d(get_arr) ; e++ )
{
	counter_box+=1
	if( counter_box < 10 )
	{
	
		if( get_arr[e].x < far_obj_X.x )
		{
			far_obj_X = get_arr[e];
		}
		if( get_arr[e].x > near_obj_X.x )
		{
			near_obj_X = get_arr[e];
		}
	
	// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
	// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

		if( get_arr[e].y < far_obj_Y.y )
		{
			far_obj_Y = get_arr[e];
		}
	
		if( get_arr[e].y > near_obj_Y.y )
		{
			near_obj_Y = get_arr[e];
		}
	}
	
}

 arr_get_var = [ far_obj_X , far_obj_Y , near_obj_X , near_obj_Y ];
return arr_get_var;





