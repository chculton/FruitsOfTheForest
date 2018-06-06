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
if ((x - obj_PhysicsPlayer.x) < sensoryRange && inRange == false)
{
	inRange = true;
	sprite_index = spr_RaspberrryRunning;
	
}

if ((x - obj_Player2.x) < sensoryRange && inRange == false)
{
	inRange = true;
	sprite_index = spr_RaspberrryRunning;
	
}

if ((inRange == true) && (attacking == false) && (dead == false))
{
	phy_position_x += lengthdir_x(spd,projectile_direction);
	phy_position_y += lengthdir_y(spd,projectile_direction);
	chase_timer--;
	chasing = true;
	
}

if (chase_timer <= 0 && chasing == true)
{
	attacking = true;
	sprite_index = spr_RaspberryCharge;
	//image_index = 1;
	charge_timer--;
	//chasing = false;
}

if (charge_timer <= 0 && dead == false)
{
	chasing = false;
	sprite_index = spr_RaspberryExplosion;
	image_index = 1;
	image_speed = 1;
	dead = true;
	explosion_timer--;
	
}

if ((dead) && (image_index >= 7))
{
	
	instance_destroy();
}
	

