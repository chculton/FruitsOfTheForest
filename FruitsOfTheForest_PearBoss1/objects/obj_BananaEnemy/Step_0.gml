if ((x - obj_PhysicsPlayer.x) < sensoryRange && attacking == false && splat == false)
{
	inRange = true;
	sprite_index = spr_BananaAttack
	image_index = 0;
	timer --;

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
}

if (place_meeting(x, y, obj_LargePlatform))
{
	sprite_index = spr_BananaSplat;
	splat = true;
}