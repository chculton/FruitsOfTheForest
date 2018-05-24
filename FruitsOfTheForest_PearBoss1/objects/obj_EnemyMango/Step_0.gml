phy_fixed_rotation = true;
projectile_direction = point_direction(x, y, obj_PhysicsPlayer.x, obj_PhysicsPlayer.y);
//sprite_index = spr_MangoBounce;
if (attacking == false)
{
	
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

if ((inRange == true) && (attacking == false) && (dead == false))
{
	phy_position_x += lengthdir_x(spd,projectile_direction);
	phy_position_y += lengthdir_y(spd,projectile_direction);
}

