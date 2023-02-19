if( true_move=true )
{
   x=mouse_x;
}


if(x<obj_line_hard.x-175)
{
	x=obj_line_hard.x-176;
}

if(x>obj_line_hard.x+210-20)
{
	x=obj_line_hard.x+209-20;
}


//* * * * * * * * * * * * * * * * * * * * 
if(x>=obj_line_hard.x-190 && x<=obj_line_hard.x-100)
{
	global.level_start=0;
}
if(x>=obj_line_hard.x-100 && x<=obj_line_hard.x)
{
	global.level_start=1;
}
if(x>=obj_line_hard.x && x<=obj_line_hard.x+100)
{
	global.level_start=2;
}
if(x>=obj_line_hard.x+100 && x<=obj_line_hard.x+195)
{
	global.level_start=3;
}