if (projectile_timer > 0)
{
	projectile_direction = point_direction(x, y, obj_PhysicsPlayer.x, obj_PhysicsPlayer.y);
}

if ((x - obj_PhysicsPlayer.x) < sensoryRange && (obj_PhysicsPlayer.y < y) && attacking == false && splat == false)
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
	projectile_timer--;
}

if (place_meeting(x, y, obj_Blender) or place_meeting(x, y, obj_TopSide2))
{
	sprite_index = spr_BananaSplat;
	splat = true;
}