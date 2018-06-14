if ((x - obj_PhysicsPlayer.x) < sensoryRange && attacking1 == false && dead == false)
{
	attacking1 = true;
	sprite_index = spr_GrapeAlert;
}

if ((x - obj_Player2.x) < sensoryRange && attacking2 == false && dead == false)
{
	attacking2 = true;
	sprite_index = spr_GrapeAlert;
}

if (attacking1 == true && timer <= 0)
{
	instance_create_layer(x, y, "PlayerLayer", obj_GrapeBullet);
	if (layer_exists("Projectiles"))
	{
		instance_create_layer(x, y, "Projectiles", obj_GrapeBullet);
		audio_play_sound(sfx_Shoot, 2, false);
	}
	timer = 15;
	sprite_index = spr_GrapeAttacking;
	image_index = 1;
}

if (attacking2 == true && timer <= 0)
{
	instance_create_layer(x, y, "PlayerLayer", obj_GrapeBullet2);
	if (layer_exists("Projectiles"))
	{
		instance_create_layer(x, y, "Projectiles", obj_GrapeBullet2);
		audio_play_sound(sfx_Shoot, 2, false);
	}
	timer = 35;
	sprite_index = spr_GrapeAttacking;
	image_index = 1;
}

if (place_meeting(x, y, obj_Blender))
{
	attacking1 = false;
	attacking2 = false;
	if (dead == false)
	{
		sprite_index = spr_GrapeDeath;
		audio_play_sound(sfx_DeathSound, 2, false);
		image_index = 1;
		image_speed = 1;
	}
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



