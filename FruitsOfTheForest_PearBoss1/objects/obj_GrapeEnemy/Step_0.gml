if ((x - obj_PhysicsPlayer.x) < sensoryRange && attacking == false && dead == false)
{
	attacking = true;
	sprite_index = spr_GrapeAlert;
}

if (attacking == true && timer <= 0)
{
	instance_create_layer(x, y, "Instances", obj_GrapeBullet);
	timer = 15;
	sprite_index = spr_GrapeAttacking;
	image_index = 1;
}

if (gamepad_button_check_pressed(0, gp_face2))
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



