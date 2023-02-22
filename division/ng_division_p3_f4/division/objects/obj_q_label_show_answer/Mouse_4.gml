if( global.allow_to_clicking )
{
	global.allow_to_clicking = false;

    if( currect_incurrect == 1 )
	{
		image_index = 1;
		audio_play_sound(snd_correct,0,0);
		obj_charactor.go_up_char = true;
		obj_charactor.image_index = 0;
		obj_charactor.sprite_index = spr_charactor;
		repeat(7)
		{
			instance_create_depth(x,y,depth-1,obj_star);
		}
	}
	else
	{
		audio_play_sound(snd_incorrect,0,0);
		image_index = 2;
		obj_charactor.go_down_char = true;
		
		repeat(7)
		{
		   part = instance_create_depth(x,y,depth-1,obj_star);
		   part.image_index = 1;
		}
		
		for( i=0 ; i<array_length_1d(id_parent.arr_save_label_show_number) ; i++ )
		{
			if( id_parent.arr_save_label_show_number[i].currect_incurrect == 1 )
			{
				id_parent.arr_save_label_show_number[i].image_index = 1;
			}
		}
		
	}

	part_fanar = instance_create_depth( 0,0,0,conterol_label_fanar );
	part_fanar.save_id = id;
}