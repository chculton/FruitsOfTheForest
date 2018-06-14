if (place_meeting(x, y, obj_Blender))
{
	instance_destroy();
	part_particles_create(global.particle_system, x, y + 70, global.on_Log_particle, 1);
	part_particles_create(global.particle_system, x, y + 70, global.on_Log2_particle, 1);
}