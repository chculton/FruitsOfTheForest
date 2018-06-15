phy_fixed_rotation = true;
projectile_direction = point_direction(x, y, obj_PhysicsPlayer.x, obj_PhysicsPlayer.y);

	
if (timer <= 0 && (jump_cooldown < 1))
{
		physics_apply_impulse(x, y, 0, -jmp);
		jump_cooldown++;
		jumping = true;
		timer = 10
}
	
if ((place_meeting(x, y + 7, obj_Platform)) && (jump_cooldown > 0))
{
		jump_cooldown--;
		part_particles_create(global.particle_system, x - 50, y + 250, global.on_Bossrock_particle, 15);
		part_particles_create(global.particle_system, x - 50, y + 250, global.on_Bossrock_particle, 15);
}

if ((place_meeting(x, y + 7, obj_LargePlatform)) && (jump_cooldown > 0))
{
		jump_cooldown--;
		part_particles_create(global.particle_system, x - 50, y + 250, global.on_Bossrock_particle, 40);
		part_particles_create(global.particle_system, x - 50, y + 250, global.on_Bossrock_particle, 40);
}
	
else
{
		timer--;
}

if ((x - obj_PhysicsPlayer.x) < sensoryRange)
{
	inRange = true;
	
}

if ((inRange == true) && (attacking == false) && (dead == false))
{
	phy_position_x += lengthdir_x(spd,projectile_direction);
	//phy_position_y += lengthdir_y(spd,projectile_direction);
}

if ((global.hits == 1) && (hitOnce == false))
{
	part_particles_create(global.particle_system, x - 60, y - 200, global.on_PearTear_particle, 40);
	hitOnce = true;
}

if ((global.hits == 2) && (hitTwice == false))
{
	part_particles_create(global.particle_system, x - 60, y - 200, global.on_PearTear_particle, 40);
	hitTwice = true;
}

if ((global.hits == 2) && (hitThrice == false))
{
	part_particles_create(global.particle_system, x - 60, y - 200, global.on_PearTear_particle, 40);
	hitThrice = true;
}

if (global.hits >= 3)
{
	sprite_index = spr_PearKing2Dying;
	if (dead == false)
	{
		deathTimer = 30;
	}
	dead = true;
	deathTimer--;
}

if (deathTimer <= 0 && dead == true)
{
	instance_create_layer(500, 600, "PlayerLayer", obj_DeadPear);
	audio_stop_all();
	audio_play_sound(sfx_Roar, 3, false);
	instance_destroy();
}