x = 1476;
y = 585;
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
	part_particles_create(global.particle_system, x-50, y + 50, global.on_PearTear_particle, 15);
	damageTimer = 30;
	with (obj_Blender)
		physics_apply_impulse(-500, 0, -1000, 0);
}

/*if(y <= 554)
{
	y = 500;
}

if (x >= 643)
{
	y = 643;
}*/

damageTimer--;