phy_rotation = 0;
phy_fixed_rotation = true;

if (gamepad_button_check_pressed(1, gp_face1))
{
	jump = true;
	if (sprite_index != spr_Player2Damage)
	{
		sprite_index = spr_Player2Jump;
	}
	audio_play_sound(sfx_JumpSound, 2, false);

	//image_index = 1;
}
if (gamepad_axis_value(1, gp_axislh))
{
	right = true;
	if (sprite_index != spr_Player2Damage)
	{
		sprite_index = spr_Player2RightRunning;
	}
	if (room = rm_Level1 && jumping == false)
	{
		part_particles_create(global.particle_system, x, y + 70, global.on_walk_particle, 1);
	}
	
	if (room = rm_Level2 && jumping == false)
	{
		part_particles_create(global.particle_system, x, y + 70, global.on_rock_particle, 1);
	}
	
	if (room = rm_Level3 && jumping == false)
	{
		part_particles_create(global.particle_system, x, y + 70, global.on_rock_particle, 1);
	}

	
	//image_index = 1;
}
if (gamepad_axis_value(1, gp_axislh) <= -0.3)
{
	left = true;	
	if (sprite_index != spr_Player2Damage)
	{
		sprite_index = spr_Player2LeftIdle;
	}
	
	if (room = rm_Level1 && jumping == false)
	{
		part_particles_create(global.particle_system, x, y + 70, global.on_walk_particle, 1);
	}
	
	if (room = rm_Level2 && jumping == false)
	{
		part_particles_create(global.particle_system, x, y + 70, global.on_rock_particle, 1);
	}
	
	if (room = rm_Level3 && jumping == false)
	{
		part_particles_create(global.particle_system, x, y + 70, global.on_rock_particle, 1);
	}
	//image_index = 1;

}


if (right == true && (jumping = false))
{
	phy_position_x += spd * 0.8;
}

if (left == true && (jumping = false))
{
	phy_position_x -= spd * 0.8;
}

if (left == true && (jumping = true))
{
	phy_position_x -= spd * 0.8;
}

if (right == true && (jumping = true))
{
	phy_position_x += spd * 0.8;
}



if (jump == true && (jump_cooldown < 1))
{
	physics_apply_impulse(x, y, 0, -jmp);
	if (gamepad_button_check(1, gp_shoulderrb))
	{
		jump_cooldown += jump_cooldown + 1;
	}
	jump_cooldown += jump_cooldown + 1;
	jumping = true;
}

/*if (place_meeting(x, y + 7, obj_Platform))
{
	jumping = false;
}*/

if ((place_meeting(x, y + 7, obj_Platform)) && (jump_cooldown > 0))
{
	jump_cooldown--;
	jumping = false;
}


if ((place_meeting(x, y + 7, obj_LargePlatform)) && (jump_cooldown > 0))
{
	jump_cooldown--;
	jumping = false;
}

if ((place_meeting(x, y + 7, obj_TopSide)) && (jump_cooldown > 0))
{
	jump_cooldown--;
	jumping = false;
}

if ((place_meeting(x, y + 7, obj_TopSide2)) && (jump_cooldown > 0))
{
	jump_cooldown--;
	jumping = false;
}

if ((place_meeting(x, y + 7, obj_TopSide3)) && (jump_cooldown > 0))
{
	jump_cooldown--;
	jumping = false;
}

if ((place_meeting(x, y + 7, obj_TopSide4)) && (jump_cooldown > 0))
{
	jump_cooldown--;
	jumping = false;
}


if (Player1Health <= 0)
{
	instance_destroy();
}

//if (right == false && left == false && jump == false)
//{
//	sprite_index = spr_Player2RightIdle;
//	image_index = 1;
//}

if (instance_exists(obj_PlayerCamera))
{
	if (obj_Player2.x - obj_PlayerCamera.x >= EndOfScreen + 300)
	{
		physics_apply_impulse(x, y , -500, 0);
	}
}


if (obj_Player2.x - obj_PhysicsPlayer.x > 1800)
{
	physics_apply_impulse(x, y , -500, 0);
}

//if (obj_Player2.x - obj_PhysicsPlayer.x < -1800)
//{
//	physics_apply_impulse(x, y , 500, 0);
//}


ViewPort = room_get_viewport(rm_Level1, 0);
EndOfScreen = ViewPort[1] + 1920;



if (place_meeting(x, y, obj_EnemyRaspberry) && (sprite_index != spr_Player2Damage))
{
	damageTimer = 15;
	sprite_index = spr_Player2Damage;
	image_index = 0;
	damaged = true;
	audio_play_sound(sfx_TakingDamage, 3, false);
	global.Player2Health--;
	global.DecreaseHealthBarP2 = true;
}

if (place_meeting(x, y, obj_EnemyDurian) && (sprite_index != spr_Player2Damage))
{
	damageTimer = 15;
	sprite_index = spr_Player2Damage;
	image_index = 0;
	damaged = true;
	audio_play_sound(sfx_TakingDamage, 3, false);
	global.Player2Health--;
	global.DecreaseHealthBarP2 = true;
}

if (place_meeting(x, y, obj_GrapeBullet) && (sprite_index != spr_Player2Damage))
{
	damageTimer = 15;
	sprite_index = spr_Player2Damage;
	image_index = 0;
	damaged = true;
	audio_play_sound(sfx_TakingDamage, 3, false);
	global.Player2Health--;
	global.DecreaseHealthBarP2 = true;
}

if (place_meeting(x, y, obj_EnemyMango) && (sprite_index != spr_Player2Damage))
{
	damageTimer = 15;
	sprite_index = spr_Player2Damage;
	image_index = 0;
	damaged = true;
	audio_play_sound(sfx_TakingDamage, 3, false);
	global.Player2Health--;
	global.DecreaseHealthBarP2 = true;
}

if (place_meeting(x, y, obj_BananaEnemy) && (sprite_index != spr_Player2Damage))
{
	damageTimer = 15;
	sprite_index = spr_Player2Damage;
	image_index = 0;
	damaged = true;
	audio_play_sound(sfx_TakingDamage, 3, false);
	global.Player2Health--;
	global.DecreaseHealthBarP2 = true;
}

if (place_meeting(x, y, obj_PearAcidSpitProjectile) && (sprite_index != spr_Player2Damage))
{
	damageTimer = 15;
	sprite_index = spr_Player2Damage;
	image_index = 0;
	damaged = true;
	audio_play_sound(sfx_TakingDamage, 3, false);
	global.Player2Health--;
	global.DecreaseHealthBarP2 = true;
}

if (place_meeting(x, y, obj_PearVineLashVines) && (sprite_index != spr_Player2Damage))
{
	damageTimer = 15;
	sprite_index = spr_Player2Damage;
	image_index = 0;
	damaged = true;
	audio_play_sound(sfx_TakingDamage, 3, false);
	global.Player2Health--;
	global.DecreaseHealthBarP2 = true;
}

if (place_meeting(x, y, obj_PearBossPhase2) && (sprite_index != spr_Player2Damage))
{
	damageTimer = 15;
	sprite_index = spr_Player2Damage;
	image_index = 0;
	damaged = true;
	audio_play_sound(sfx_TakingDamage, 3, false);
	global.Player2Health--;
	global.DecreaseHealthBarP2 = true;
}

if (place_meeting(x, y, obj_SummoningRoarFallingRock) && (sprite_index != spr_Player2Damage))
{
	damageTimer = 15;
	sprite_index = spr_Player2Damage;
	image_index = 0;
	damaged = true;
	audio_play_sound(sfx_TakingDamage, 3, false);
	global.Player2Health--;
	global.DecreaseHealthBarP2 = true;
}


if (place_meeting(x, y, obj_SummoningRoarFallingRock2) && (sprite_index != spr_Player2Damage))
{
	damageTimer = 15;
	sprite_index = spr_Player2Damage;
	image_index = 0;
	damaged = true;
	audio_play_sound(sfx_TakingDamage, 3, false);
	global.Player2Health--;
	global.DecreaseHealthBarP2 = true;
}


if (place_meeting(x, y, obj_Beam) && (sprite_index != spr_Player2Damage))
{
	damageTimer = 15;
	sprite_index = spr_Player2Damage;
	image_index = 0;
	damaged = true;
	audio_play_sound(sfx_TakingDamage, 3, false);
	global.Player2Health--;
	global.DecreaseHealthBarP2 = true;
}

if (damaged = true)
{
	if (damageTimer <= 0)
	{
		sprite_index = spr_Player2RightIdle;
		damaged = false;
	}
	
	damageTimer--
}

if(global.Player2Health <= 0)
{
	room_goto(rm_DeathScreen);
	global.Player2Health = 5;
}

jump = false;
left = false;
right = false;