if (place_meeting(x, y, obj_Blender))
{
	instance_destroy();
	part_particles_create(global.particle_system, x + 100, y + 70, global.on_OldTree2_particle, 1);
	part_particles_create(global.particle_system, x + 100, y + 70, global.on_OldTree1_particle, 2);
	part_particles_create(global.particle_system, x + 100, y + 70, global.on_OldTree3_particle, 1);
	audio_play_sound(sfx_WoodBreak, 3, false);
}