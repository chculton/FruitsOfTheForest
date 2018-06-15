if (instance_exists(obj_PearBossPhase2))
{
	obj_HitBox.x = obj_PearBossPhase2.x - 200;
	obj_HitBox.y = obj_PearBossPhase2.y - 350;
}

//obj_HitBox.x = obj_PearBossPhase2.x - 160;
//obj_HitBox.y = obj_PearBossPhase2.y - 350;

if (global.hits == 0)
{
	sprite_index = spr_Phase2Hitbox;
}

if (global.hits == 1)
{
	sprite_index = spr_Phase2Hitbox2;
}

if (global.hits == 2)
{
	sprite_index = spr_Phase2Hitbox3;
}

if (global.hits == 3)
{
	sprite_index = spr_Phase2Hitbox4;
}

if (global.hits >= 4)
{
	instance_destroy(obj_PearBossPhase2)
}

if (place_meeting(x, y, obj_Blender))
{
	if (hitTimer <= 0)
	{
		global.hits++;
		global.PearHealth--;
		hitTimer = 40;
	}
}

hitTimer--;