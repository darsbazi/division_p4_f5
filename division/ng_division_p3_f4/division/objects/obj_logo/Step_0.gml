x = global.ideal_width/2
obj_loading.x = x+15;

 _speed_action1 = 0.05;
if( allow_run )
{
	if( image_xscale < 0.98 )
	{
        image_xscale +=( 1 - image_xscale )*_speed_action1;
        image_yscale +=( 1 - image_yscale )*_speed_action1;
	}
	else
	{
		allow_run= false;
		obj_loading.run_load = true
	}
}


image_alpha +=0.02;