if (place_meeting(x, y, obj_Blender) && damageTimer <= 0)
{
	global.PearHealth--;
	damageTimer = 30;
}

damageTimer--;