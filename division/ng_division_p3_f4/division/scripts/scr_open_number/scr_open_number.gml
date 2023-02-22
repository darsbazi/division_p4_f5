var get_num = string(argument0);

show_debug_message( " * * * * * * * * * * * * * * " );

num_1 = "";
num_2 = "";
change_num = true;

finde_point = false;

for( o=1 ; o<string_length(get_num) ; o++ )
{	
	if( string_char_at(get_num,o) == "." )
	{
		change_num = !change_num
		finde_point = true;
	}
    else
	{
		if( change_num )
		{
	        num_1 += string_char_at( get_num , o );
		}
		else
		{
			num_2 += string_char_at( get_num , o );
		}
	}
}

//show_debug_message( finde_point );
//show_debug_message( num_1 );
//show_debug_message( num_2 );



if( finde_point == 1 )
{
	arr_set=[ num_1 , num_2 ];
}
else
{
	arr_set=[ get_num , 0 ];
}

return arr_set;








