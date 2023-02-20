if( global.make_qiostion )
{
    global.make_qiostion=false;
    mode = irandom_range( 1 , 2 ); // 1=>+  2=>-

    for( e=0 ; e<1 ; e++ )
	{
		get_arr= [];
        save_num_not_slash=[];
        save_num_with_slash=[];
		save_answer = 0;
		
		for( i=0 ; i<2 ; i++ )
		{
			num_1 = irandom_range( 1,9 );
			num_2 = irandom_range( 1,9 );

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
		
		
		
		
		
		
		
		
	}
	
	show_debug_message( save_num_not_slash );
	show_debug_message( save_num_with_slash );
	show_debug_message( save_answer );
		
}















