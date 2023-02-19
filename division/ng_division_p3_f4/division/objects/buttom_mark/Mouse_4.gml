if( global.allow_to_clicking )
{
	global.allow_to_clicking = false;
	
	if( CUR_INCUR == 1 )
	{
		image_index = 1;
		repeat( 10 )
		{
			part_star = instance_create_depth( x , y , -5 , obj_star );	
			part_star.image_xscale = 0.7;
			part_star.image_yscale = 0.7;
			part_star.image_index = 0;
		}
		
		alarm[0] = 60;
	    spr_shape_4.image_index = number_get;
		audio_play_sound( snd_correct , 0 , 0 );
	    obj_charactor.go_up_char = true;
		
     	obj_charactor.image_index = 0;
     	obj_charactor.sprite_index = spr_charactor;
		
		
		
	}
	else
	{
		image_index = 2;
		repeat( 10 )
		{
			part_star = instance_create_depth( x , y , -5 , obj_star );	
			part_star.image_xscale = 0.7;
			part_star.image_yscale = 0.7;
			part_star.image_index = 1;
		}
		alarm[0] = 130;	
		arr_all_buttom = [ spr_shape_4.buttom_1 , spr_shape_4.buttom_2 , spr_shape_4.buttom_3 ];	
		for( i=0 ; i<array_length_1d(arr_all_buttom) ; i++ )
		{
		    if( arr_all_buttom[i].CUR_INCUR == 1 )
			{
				arr_all_buttom[i].image_index = 1;
				
				spr_shape_4.image_index = i+1;
			}
		}
		audio_play_sound( snd_incorrect , 0 , 0 );
		
		obj_charactor.go_down_char = true;
	}
	
    part_fanar = instance_create_depth( 0,0,0, conterol_label_fanar );
	part_fanar.save_id = id;
	
	
	
}