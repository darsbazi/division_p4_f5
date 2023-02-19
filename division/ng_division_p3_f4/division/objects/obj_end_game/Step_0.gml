if(global.end_game && flag_win){

	flag_win = false;
	ins_1 = instance_create_depth( global.ideal_width/2 + 15,global.ideal_height/2,-10 , obj_lbl_win );
	instance_create_depth(ins_1.x + 320,ins_1.y-50,-12,obj_btn_home)
	instance_create_depth(ins_1.x + 320,ins_1.y+50,-12,obj_btn_refresh)
}

if(global.end_game && flag_loose){
	
	flag_loose = false;
	inst_2 = instance_create_depth( camera_get_view_x(view_camera[0])+ global.ideal_width/2,camera_get_view_y(view_camera[0])+480/2,-10 , obj_lbl_loose );
	instance_create_depth(inst_2.x + 320,inst_2.y-50,-12,obj_btn_home)
	instance_create_depth(inst_2.x + 320,inst_2.y+50,-12,obj_btn_refresh)
}