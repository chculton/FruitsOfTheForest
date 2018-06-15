if (projectile_timer > 0 && TargetingPlayer = 1)
{
	projectile_direction = point_direction(x, y, obj_PhysicsPlayer.x, obj_PhysicsPlayer.y);
}

if (projectile_timer > 0 && TargetingPlayer = 2)
{
	projectile_direction = point_direction(x, y, obj_Player2.x, obj_Player2.y);
}


if ((x - obj_PhysicsPlayer.x) < sensoryRange && (obj_PhysicsPlayer.y > y) && attacking == false && splat == false)
{
	inRange = true;
	sprite_index = spr_BananaAttack
	image_index = 0;
	timer --;
	TargetingPlayer = 1;

}


if ((x - obj_Player2.x) < sensoryRange && (obj_Player2.y > y) && attacking == false && splat == false)
{
	inRange = true;
	sprite_index = spr_BananaAttack
	image_index = 0;
	timer --;
	TargetingPlayer = 2;

}

if (inRange && timer <= 0 && splat == false)
{
	attacking = true;
	x = x + 100;
	inRange = false;

}

if (attacking = true && splat == false)
{
	x += lengthdir_x(spd,projectile_direction);
	y += lengthdir_y(spd,projectile_direction);
	audio_play_sound(sfx_LungeAttack, 2, false);
	projectile_timer--;
}

if (place_meeting(x, y, obj_TopSide2))
{
	sprite_index = spr_BananaSplat;
	if (splat == false)
	{
		audio_play_sound(sfx_HitGround, 2, false);
	}
	splat = true;

}

if (place_meeting(x, y, obj_Blender))
{
	instance_destroy();
}