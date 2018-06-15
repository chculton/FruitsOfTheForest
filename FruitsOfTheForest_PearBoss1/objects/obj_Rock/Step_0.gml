if (place_meeting(x, y, obj_Blender))
{
	instance_destroy();
	part_particles_create(global.particle_system, x + 150, y + 70, global.on_Rock1_particle, 5);
	part_particles_create(global.particle_system, x + 150, y + 70, global.on_Rock2_particle, 1);
	part_particles_create(global.particle_system, x + 150, y + 70, global.on_Rock3_particle, 1);
	audio_play_sound(sfx_RockBreak, 3, false);
}