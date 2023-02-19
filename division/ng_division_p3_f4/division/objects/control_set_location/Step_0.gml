if( flag_set_location = true )
{
	flag_set_location = false;
	
	XX = (global.ideal_width-860)/2;
	
	
	obj_mountain.x += XX;
	obj_rope.x += XX;
	obj_charactor.x += XX;
	
	
	obj_mountain.flag_make_tail = true;
	
}