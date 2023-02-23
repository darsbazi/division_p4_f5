
if( lock_local )
{

if( go_up_char = true )
{
	flag_go_down = false;
	if( alarm[0] = -1 && flag_alarm_up = true )
	{
		alarm[0]=70;
		status_answer = true;
		flag_alarm_up = false;
	}
	y -= ctrl_speed_go_up;
}


if( go_down_char )
{	
	flag_go_down = false;
	if( alarm[0] = -1 && flag_alarm_down = true )
	{
		alarm[0]=70;
		status_answer = false;
        flag_alarm_down = false;
	}
	y += ctrl_speed_go_down;
}


if( flag_go_down )
{
	y+=control_speed_down;
}

}

if(sprite_index = spr_char_jump && image_index > 39) 
{
	image_speed = 0
} 

if(sprite_index = spr_char_jump &&     image_index>23 && image_index<30  ) 
{
	y+= 1.3;
} 


if( y < obj_rope.y && one_true_1 = true )
{
	global.end_game = true;
	
	lock_local = false;
	one_true_1 = false;
	
	image_index = 0;
	sprite_index = spr_char_jump
	alarm[3] = 120;
}

if( y > obj_rope.y+obj_rope.sprite_height-40 && one_true_2 = true )
{
	global.end_game = true;
	lock_local = false;
	one_true_2 = false;
	

	a=instance_create_depth( obj_charactor.x+10 , 935 , -10 , obj_krokodil );
    a.flag_choose = 1;
	alarm[1] = 120;

}



if( flag_reset_sprite = true )
{
	if( image_index > 20 && image_index <22 && sprite_index = spr_charactor )
	{	
		
		flag_reset_sprite = false; 
         go_up_char = false;
         flag_go_down = true;
         go_down_char = false;
		 
		 image_index = 0;
         sprite_index = spr_char_idle;
		 
		 flag_alarm_up = true;
		 flag_alarm_down = true

	}
	if(  sprite_index = spr_char_idle ){
				
		flag_reset_sprite = false; 
         go_up_char = false;
         flag_go_down = true;
         go_down_char = false;
		 
		 image_index =0

         sprite_index = spr_char_idle;
		 
		 //global.make_question = true;
		 
		 flag_alarm_up = true;
		 flag_alarm_down = true

	}
	
}








