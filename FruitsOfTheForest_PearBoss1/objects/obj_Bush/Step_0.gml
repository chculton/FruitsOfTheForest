if (place_meeting(x, y, obj_Blender))
{
	instance_destroy();
	part_particles_create(global.particle_system, x + 150, y + 70, global.on_Bush1_particle, 5);
	part_particles_create(global.particle_system, x + 150, y + 70, global.on_Bush2_particle, 1);
	part_particles_create(global.particle_system, x + 150, y + 70, global.on_Bush3_particle, 1);
	part_particles_create(global.particle_system, x + 150, y + 70, global.on_Bush4_particle, 1);
	audio_play_sound(sfx_BushRustle, 3, false);
}