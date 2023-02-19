if(click==false)
{
image_xscale=1;
image_yscale=1;
click=true;
}
if(global.line_hard==true)
{
global.object_line=instance_create_depth( global.ideal_width/2 ,380,-4,obj_line_hard);
global.line_hard=false;
}
else
{
	instance_destroy(global.object_line);
	instance_destroy(obj_mouse_hard);
	global.line_hard=true;
}