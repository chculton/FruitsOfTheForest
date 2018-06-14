phy_fixed_rotation = true;
if ((x - obj_PhysicsPlayer.x) < sensoryRange)
{
	projectile_direction = point_direction(x, y, obj_PhysicsPlayer.x, obj_PhysicsPlayer.y);
}
if ((x - obj_Player2.x) < sensoryRange)
{
	projectile_direction = point_direction(x, y, obj_Player2.x, obj_Player2.y);
}

//sprite_index = spr_MangoBounce;
if (attacking == false)
{
	sprite_index = spr_MangoBounce;
	if (timer <= 0 && (jump_cooldown < 1))
	{
		physics_apply_impulse(x, y, 0, -jmp);
		audio_play_sound(sfx_MangoBounce, 3, false);
		jump_cooldown++;
		jumping = true;
		timer = 10
	}
	
	if ((place_meeting(x, y + 7, obj_Platform)) && (jump_cooldown > 0))
	{
		jump_cooldown--;
	}

	if ((place_meeting(x, y + 7, obj_LargePlatform)) && (jump_cooldown > 0))
	{
		jump_cooldown--;
	}
	
	else
	{
		timer--;
	}
}
if ((x - obj_PhysicsPlayer.x) < sensoryRange)
{
	inRange = true;
	
}

if ((x - obj_Player2.x) < sensoryRange)
{
	inRange = true;
	
}

if ((inRange == true) && (attacking == false) && (dead == false))
{
	phy_position_x += lengthdir_x(spd,projectile_direction);
	phy_position_y += lengthdir_y(spd,projectile_direction);
}

if (place_meeting(x, y, obj_Blender) && dead == false)
{
	dead = true;
	sprite_index = spr_MangoDeath;
	audio_play_sound(sfx_DeathSound, 3, false);
}

if ((dead) && (image_index >= 12))
{
	
	instance_destroy();
}
