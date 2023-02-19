 if( flag_make_tail = true )
{
	flag_make_tail = false;
	
	save_id = instance_create_depth( x+10 , y+10, -1 , obj_mountain_tial );
	for( i=0 ; i<1 ; i++ )
	{
		if( save_id.x < 0 )  
		{
			
		}
		else
		{
			save_id = instance_create_depth( save_id.x-save_id.sprite_width+10 , save_id.y , -1 , obj_mountain_tial );
			i-=1;
		}
	}
	//*/ 	
}