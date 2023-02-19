if( run_load = true )
{
    run_load = false;
	image_speed = 1;
}


if( counter_run == 2 ) 
{
	image_speed = 0;
	
	if( one_true = true )
	{
		one_true = false;
		part_screen = instance_create_depth( 0,0, -10 , fade );
		part_screen.mod_fade =1;
	}
}