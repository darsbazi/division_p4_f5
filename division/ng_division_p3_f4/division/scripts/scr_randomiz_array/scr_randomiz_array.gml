var arr = argument0;

arr_not_repeat = [];

for( i=0 ; i<array_length_1d(arr) ; i++ )
{
	arr_not_repeat[array_length_1d(arr_not_repeat)] =0;
}

show_debug_message("*****")

show_debug_message(arr);
//show_debug_message(arr_not_repeat);


arr_randomize =[];


for( i=0 ; i<array_length_1d(arr) ; i++ )
{
	ran = irandom_range( 0 , array_length_1d(arr)-1 );
	
	if( arr_not_repeat[ran] == 0 )
	{
		arr_not_repeat[ran] = 1;
		arr_randomize[array_length_1d(arr_randomize)] = arr[ran];
	}
	else
	{
		i-=1;
	}
}


//show_debug_message(arr_randomize);
//show_debug_message(arr_not_repeat);


return arr_randomize;













