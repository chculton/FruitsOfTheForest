if (obj_PhysicsPlayer.x >= obj_Player2.x)
{
	x += lengthdir_x(spd,projectile_direction);
	y += lengthdir_y(spd,projectile_direction);
	image_angle = projectile_direction;
}
	
if (obj_Player2.x >= obj_PhysicsPlayer.x)
{
	x += lengthdir_x(spd,projectile_direction2);
	y += lengthdir_y(spd,projectile_direction2);
	image_angle = projectile_direction2;
}

if (place_meeting(x, y, obj_Blender))
{
	part_particles_create(global.particle_system, x - 50, y + 50, global.on_Goo_particle, 15);
	instance_destroy();
}