x += X
y += Y

if(image_xscale > 0) {
	image_xscale -= 0.03;	
	image_yscale -= 0.03;	
}
else {
	
	instance_destroy();
}