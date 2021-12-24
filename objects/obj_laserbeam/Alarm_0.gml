/// @desc Extend laserbeam

if (dir == 0)
{
	inst = instance_create_depth(x + 16, y, 0, obj_laserbeam);
	inst.dir = 0;
} else if (dir == 1)
{
	inst = instance_create_depth(x, y - 16, 0, obj_laserbeam);
	inst.dir = 1;
	inst.image_angle = 90;
} else if (dir == 2)
{
	inst = instance_create_depth(x - 16, y, 0, obj_laserbeam);
	inst.dir = 2;
} else if (dir == 3)
{
	inst = instance_create_depth(x, y + 16, 0, obj_laserbeam);
	inst.dir = 3;
	inst.image_angle = -90;
}

