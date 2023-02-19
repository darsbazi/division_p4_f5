if( flag_set_fade )
{
	flag_set_fade = false;
	
	if( mod_fade =1 )
	{
		number_alpha = 0;
		level_1 = true;
	}
	else
	{
		number_alpha = 1;
		level_2 = true;
	}
}

// * * * * * * * * * * * * * * * * * * * * * *

if( level_1 = true )
{
	if( number_alpha < 1 )
	{
		number_alpha += 0.03;	
	}
	else
	{
		room_goto(ROOM);	
		level_1 = false;
	}
}

// * * * * * * * * * * * * * * * 

if( level_2 = true )
{
	if( number_alpha > 0 )
	{
		number_alpha -= 0.03;	
	}
	else
	{	
		level_2 = false;
		instance_destroy();
	}
}

