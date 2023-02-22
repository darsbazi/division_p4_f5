/* if( global.lock_clicking = true && obj_label_question.local_lock )
{

if(label_answer = global.arr_correct) {
	
	audio_play_sound(snd_correct,0,0);
	image_index = 1;
	obj_charactor.go_up_char = true;
	obj_charactor.image_index = 0;
	obj_charactor.sprite_index = spr_charactor;
	
}
else {
	
	audio_play_sound(snd_incorrect,0,0);
	image_index = 2;
	obj_charactor.go_down_char = true;
}

alarm[0] = 30;

global.lock_clicking = false;
obj_label_question.local_lock = false;

}