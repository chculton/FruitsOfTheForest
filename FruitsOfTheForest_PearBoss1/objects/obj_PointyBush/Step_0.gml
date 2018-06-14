if (place_meeting(x, y, obj_Blender))
{
	instance_destroy();
	part_particles_create(global.particle_system, x, y + 70, global.on_Point1_particle, 1);
	part_particles_create(global.particle_system, x, y + 70, global.on_Point2_particle, 1);
	part_particles_create(global.particle_system, x, y + 70, global.on_Point3_particle, 1);
	part_particles_create(global.particle_system, x, y + 70, global.on_Point4_particle, 1);
}