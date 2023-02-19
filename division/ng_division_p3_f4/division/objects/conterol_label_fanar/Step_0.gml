if( instance_exists( save_id ) )
{	
	if( levle_1 )
	{
		if( save_id.image_xscale > 0.7 )
		{
			save_id.image_xscale -=0.07;
			save_id.image_yscale -=0.07;
		}
		else
		{
			levle_1 =false;
			levle_2 =true;
		}
	}
	
	if( levle_2 )
	{
		if( save_id.image_xscale < 1.1 )
		{
			save_id.image_xscale +=0.06;
			save_id.image_yscale +=0.06;
		}
		else
		{
			levle_2 =false;
			levle_3 =true;
		}
	}
	
    if( levle_3 )
	{
		if( save_id.image_xscale > 0.95)
		{
			save_id.image_xscale -=0.05;
			save_id.image_yscale -=0.05;
		}
		else
		{
			levle_3 =false;
			levle_4 =true;
		}
	}
	
	if( levle_4 )
	{
		if( save_id.image_xscale < 1)
		{
			save_id.image_xscale +=0.04;
			save_id.image_yscale +=0.04;
		}
		else
		{
			levle_4 =false;
			save_id.image_xscale =1;
			save_id.image_yscale =1;
			
			alarm[0]=30;
		}
	}
}