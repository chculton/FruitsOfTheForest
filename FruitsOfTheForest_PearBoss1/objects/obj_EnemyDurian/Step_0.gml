if (attacking = false && dead == false)
{
	if ((x - obj_PhysicsPlayer.x) < sensoryRange)
	{
		inRange = true;
	}
	
	if ((x - obj_Player2.x) < sensoryRange)
	{
		inRange = true;
	}
}

if (inRange == true && timer <= 0) 
{
	sprite_index = spr_DurianAttack;
	//audio_play_sound(sfx_Puff, 3, false);
	attacking = true;
	timer = 150;
	
}

if (place_meeting(x, y, obj_Blender))
{
	if (dead == false)
	{
		attacking = false;
		audio_play_sound(sfx_Deflate, 3, false);
		sprite_index = spr_DurianDeath;
		image_index = 1;
		image_speed = 1;
	}
	dead = true;
	explosion_timer--;
}

if (image_index >= 18)
{
	sprite_index = spr_Durian
}

if ((dead) && (image_index >= 14))
{
	
	instance_destroy();
}

timer--;