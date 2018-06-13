x = 1545;
y = 600;
if (obj_PhysicsPlayer.x > obj_Player2.x)
{
	image_angle = point_direction(x, y, obj_PhysicsPlayer.x, obj_PhysicsPlayer.y);
}

if (obj_PhysicsPlayer.x < obj_Player2.x)
{
	image_angle = point_direction(x, y, obj_Player2.x, obj_Player2.y);
}


if (place_meeting(x, y, obj_Blender) && damageTimer <= 0)
{
	global.PearHealth = global.PearHealth - 100;
	damageTimer = 30;
}

damageTimer--;