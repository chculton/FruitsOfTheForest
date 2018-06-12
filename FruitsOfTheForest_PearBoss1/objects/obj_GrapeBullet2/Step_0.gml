x += lengthdir_x(spd,projectile_direction);
y += lengthdir_y(spd,projectile_direction);

if (place_meeting(x, y, obj_BottomLeft1))
{
    instance_destroy();
}

if (place_meeting(x, y, obj_Dirt))
{
    instance_destroy();
}

if (place_meeting(x, y, obj_LeftSide4))
{
    instance_destroy();
}

if (place_meeting(x, y, obj_TopSide2))
{
    instance_destroy();
}

if (place_meeting(x, y, obj_Blender))
{
	instance_destroy();
}