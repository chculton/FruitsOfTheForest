if (place_meeting(x, y, obj_Blender))
{
	instance_destroy();
	part_particles_create(global.particle_system, x, y + 70, global.on_Bush1_particle, 1);
	part_particles_create(global.particle_system, x, y + 70, global.on_Bush2_particle, 1);
	part_particles_create(global.particle_system, x, y + 70, global.on_Bush3_particle, 1);
	part_particles_create(global.particle_system, x, y + 70, global.on_Bush4_particle, 1);
}