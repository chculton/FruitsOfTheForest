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
	instance_create_layer(x - 100, y - 50, "PlayerLayer", obj_GasCloud);
	sprite_index = spr_DurianAttack;
	attacking = true;
	timer = 150;
	
}

if (gamepad_button_check_pressed(0, gp_face2))
{
	attacking = false;
	sprite_index = spr_DurianDeath;
	image_index = 1;
	image_speed = 1;
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