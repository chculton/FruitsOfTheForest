if ((x - obj_PhysicsPlayer.x) < sensoryRange && attacking == false && dead == false)
{
	attacking = true;
	sprite_index = spr_GrapeAlert;
}

if (attacking == true && timer <= 0)
{
	instance_create_layer(x, y, "PlayerLayer", obj_GrapeBullet);
	if (layer_exists("Projectiles"))
	{
		instance_create_layer(x, y, "Projectiles", obj_GrapeBullet);
	}
	timer = 15;
	sprite_index = spr_GrapeAttacking;
	image_index = 1;
}

if (place_meeting(x, y, obj_Blender))
{
	attacking = false;
	sprite_index = spr_GrapeDeath;
	image_index = 1;
	image_speed = 1;
	dead = true;
	explosion_timer--;
}

if ((dead) && (image_index >= 12))
{
	
	instance_destroy();
}
	

else
{
	timer--;
}



