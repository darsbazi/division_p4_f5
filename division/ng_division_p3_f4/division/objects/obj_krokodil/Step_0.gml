if( image_index > 35 && flag_animation_end && flag_choose == 1 )
{
	flag_animation_end = false;
	obj_charactor.visible = false;
	repeat(5) {
		instance_create_depth(obj_charactor.x,obj_charactor.y,-15,obj_cloud)
		instance_create_depth(obj_charactor.x-5,obj_charactor.y,-15,obj_cloud)
		instance_create_depth(obj_charactor.x+5,obj_charactor.y,-15,obj_cloud)
	}
}
